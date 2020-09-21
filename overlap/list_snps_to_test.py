#!/usr/bin/python
# Author: Mike Gloudemans
# Date created: 6/7/2018

# We now load in the variable parameters from a
# config file in JSON format. This means we can easily run a
# batch of jobs like this, just by specifying different config
# parameters. Avoids need to maintain multiple scripts like this.

import glob
import gzip
import subprocess
import sys
import operator
import pandas as pd
sys.path.insert(0, '/users/mgloud/projects/brain_gwas/scripts')
import json
from multiprocessing import Pool
import traceback

if sys.version_info[0] < 3:
    from StringIO import StringIO
else:
    from io import StringIO

from scipy import stats

def main():

    config_file = sys.argv[1]
    if config_file == "":
        print "Please specify a config file."
        sys.exit()

    max_threads = 1
    if len(sys.argv) > 2:
        max_threads = int(sys.argv[2])
    print max_threads


    # Do stuff that needs to be done exactly once for the whole run
    
    # Load config file
    config = load_config(config_file)
 
    # Write headers
    for source_group in config["source_groups"]:
        for source_cutoff_pval in config["source_groups"][source_group]["source_cutoff_pvals"]:
            for source_window in config["source_groups"][source_group]["source_windows"]:

                gwas_snps_file = "{0}/{1}_{4}_source-pval{2}_source-window{3}_snps-considered.txt".format(
                        config["output_directory"], config["output_base"], source_cutoff_pval, 
                        source_window, source_group)

                with open(gwas_snps_file, "w") as w:
                    w.write("chr\tsnp_pos\tpvalue\ttrait\tsource_file\n")

                for lookup_group in config["source_groups"][source_group]["lookup_targets"]:

                    for lookup_cutoff_pval in config["source_groups"][source_group]["lookup_targets"][lookup_group]["cutoff_pvals"]:

                        for lookup_window in config["source_groups"][source_group]["lookup_targets"][lookup_group]["windows"]:

                            overlap_tests_file = "{0}/{1}_{6}_{7}_source-pval{2}_lookup-pval{3}_source-window{4}_lookup-window{5}_coloc-tests.txt".format(
                                    config["output_directory"], config["output_base"], source_cutoff_pval, lookup_cutoff_pval, 
                                    source_window, lookup_window, source_group, lookup_group)
                            all_pairs_file = "{0}/{1}_{6}_{7}_source-pval{2}_lookup-pval{3}_source-window{4}_lookup-window{5}_snp-trait-pairs-considered.txt".format(
                                    config["output_directory"], config["output_base"], source_cutoff_pval, lookup_cutoff_pval, 
                                    source_window, lookup_window, source_group, lookup_group)
                            
                            with open(overlap_tests_file, "w") as w:
                                w.write("chr\tsnp_pos\tsource_file\tlookup_file\tsource_trait\tsource_pvalue\tlookup_pvalue\tlookup_trait\n")
                                w.flush()

                            if "output_nonpassing_pairs" in config and str(config["output_nonpassing_pairs"]) == "True":

                                with open(all_pairs_file, "w") as w:
                                    w.write("chr\tsnp_pos\tsource_pvalue\tlookup_pvalue\tlookup_trait\tlookup_file\n")

    # Now start searching for colocalization candidates
    for source_group in config["source_groups"]:
        source_files = []
        for source_file in config["source_groups"][source_group]["files"]:
            source_files.extend(glob.glob(source_file))

        for source_cutoff_pval in config["source_groups"][source_group]["source_cutoff_pvals"]:
            for source_window in config["source_groups"][source_group]["source_windows"]:

                # Get the source GWAS SNPs to test for this parameter specification
                for source_file in source_files:

                    print source_file 

                    info = snps_by_threshold(source_file, source_cutoff_pval, source_file, config, window=source_window)

                    gwas_snps_file = "{0}/{1}_{4}_source-pval{2}_source-window{3}_snps-considered.txt".format(
                            config["output_directory"], config["output_base"], source_cutoff_pval, 
                            source_window, source_group)

                    # Run SNPs in parallel across multiple threads
                    for snp in info:
                        with open(gwas_snps_file, "a") as a:
                            a.write("\t".join([str(s) for s in snp]) + "\t" + source_file + "\n")
                    for lookup_group in config["source_groups"][source_group]["lookup_targets"]:
                        lookup_files = []
                        for lookup_file in config["lookup_groups"][lookup_group]["files"]:
                            lookup_files.extend(glob.glob(lookup_file))
                        
                        if len(lookup_files) == 0:
                                print "Warning: No lookup target files found for group", lookup_group

                        for lookup_cutoff_pval in config["source_groups"][source_group]["lookup_targets"][lookup_group]["cutoff_pvals"]:
                            for lookup_window in config["source_groups"][source_group]["lookup_targets"][lookup_group]["windows"]:
                                add_snps_to_test(config, info, source_group, source_cutoff_pval, source_window, source_file, lookup_group, lookup_cutoff_pval, lookup_window, lookup_files)

def add_snps_to_test(config, info, source_group, source_cutoff_pval, source_window, source_file, lookup_group, lookup_cutoff_pval, lookup_window, lookup_files):
        pool = Pool()
        for snp in info:
            for pheno in lookup_files:
                pool.apply_async(test_wrapper, args=(config, info, source_group, source_cutoff_pval, source_window, source_file, lookup_group, lookup_cutoff_pval, lookup_window, lookup_files, snp, pheno))
        pool.close()
        pool.join()

def test_wrapper(config, info, source_group, source_cutoff_pval, source_window, source_file, lookup_group, lookup_cutoff_pval, lookup_window, lookup_files, snp, pheno):
    try:
        test_snp(config, info, source_group, source_cutoff_pval, source_window, source_file, lookup_group, lookup_cutoff_pval, lookup_window, lookup_files, snp, pheno)
    except Exception:
        traceback.print_exc(file=sys.stdout)


def test_snp(config, info, source_group, source_cutoff_pval, source_window, source_file, lookup_group, lookup_cutoff_pval, lookup_window, lookup_files, snp, pheno):
    # Get header to locate columns of interest
    header = subprocess.check_output("zcat {0} 2> /dev/null | head -n 1".format(pheno), shell=True).strip().split("\t")
    header = [h.lower() for h in header]
    pval_index = header.index("pvalue")
    # Is there a column specifying the trait / gene / feature in the lookup target file?
    # If so, get the index of it
    if "trait" in header:
        lookup_trait_index = header.index("trait")
    elif "gene" in header:
        lookup_trait_index = header.index("gene")
    elif "feature" in header:
        lookup_trait_index = header.index("feature")
    else:
        lookup_trait_index = -1
  
    wide_matches = subprocess.check_output("tabix {0} {1}:{2}-{3}".format(pheno, str(snp[0]).replace("chr", ""), snp[1]-lookup_window, snp[1]+lookup_window), shell=True)
    if wide_matches == "":
        wide_matches = subprocess.check_output("tabix {0} {1}:{2}-{3}".format(pheno, "chr"+str(snp[0]).replace("chr", ""), snp[1]-lookup_window, snp[1]+lookup_window), shell=True)
        if wide_matches == "":
            return
    
    # Sort by pval so we can be sure we get the most significant SNP at the locus first
    wide_matches = wide_matches.strip().split("\n")
    wide_matches = [wm.split("\t") for wm in wide_matches]

    def numerize_pval(x):
        new = x[:]
        new[pval_index] = float(new[pval_index])
        return(new)

    try:
        wide_matches = [numerize_pval(d) for d in wide_matches]
    except:
        print "Formatting error: could not convert p-value to float"
        return
    wide_matches = sorted(wide_matches, key=operator.itemgetter(pval_index))

    # Destination files where snp lists will be written
    all_pairs_file = "{0}/{1}_{6}_{7}_source-pval{2}_lookup-pval{3}_source-window{4}_lookup-window{5}_snp-trait-pairs-considered.txt".format(config["output_directory"], config["output_base"], source_cutoff_pval, lookup_cutoff_pval, source_window, lookup_window, source_group, lookup_group)
    overlap_test_file = "{0}/{1}_{6}_{7}_source-pval{2}_lookup-pval{3}_source-window{4}_lookup-window{5}_coloc-tests.txt".format(config["output_directory"], config["output_base"], source_cutoff_pval, lookup_cutoff_pval, source_window, lookup_window, source_group, lookup_group)

    lookup_traits_considered = set([])

    matched = set([])     # Don't print repeats if there are multiple matches                
    for data in wide_matches:

	    # If there's more than one trait in the lookup file,
	    # figure out which trait this row is measuring
	    if lookup_trait_index != -1:
		lookup_trait = data[lookup_trait_index]
	    else:
		lookup_trait = pheno            

	    # Keep track of all [source-SNP]-[target-trait] pairs considered,
	    # even if they don't pass the lookup cutoff threshold
            # This is optional and not done by default; it's a big file and 
            # we aren't always going to actually want this
            if "output_nonpassing_pairs" in config and str(config["output_nonpassing_pairs"]) == "True":
	        if lookup_trait not in lookup_traits_considered:
                    with open(all_pairs_file, "a") as a:
                        a.write("\t".join([str(s) for s in snp]) + "\t" + str(data[pval_index]) + "\t" + source_file + "\t" + lookup_trait + "\t" + pheno + "\n")
                        lookup_traits_considered.add(lookup_trait)

            # Keep track of SNP passing out overlap cutoff in the lookup set
	    if float(data[pval_index]) <= lookup_cutoff_pval and data[lookup_trait_index] not in matched:
		with open(overlap_test_file, "a") as a:
		    a.write("{0}\t{1}\t{2}\t{3}\t{4}\t{5}\t{6}\t{7}\n".format(snp[0], snp[1], source_file, pheno, snp[3], snp[2], data[pval_index], lookup_trait))
		    matched.add(lookup_trait)


def snps_by_threshold(source_file, source_threshold, default_trait, config, window):

    trait = default_trait

    snp_counts = {}
    hit_counts = {}

    with gzip.open(source_file) as f:
        header = f.readline().strip().split()

        if "trait" in header:
            source_trait_index = header.index("trait")
        elif "gene" in header:
	    source_trait_index = header.index("gene")
        elif "feature" in header:
	    source_trait_index = header.index("feature")
        else:
	    source_trait_index = -1

        pval_index = header.index("pvalue")
        chr_index = header.index("chr")
        snp_pos_index = header.index("snp_pos")

        all_snps = []

        #i = 0
        for line in f:
            #i += 1
            #if i > 1000000:
            #    break
            data = line.strip().split("\t")
            if source_trait_index != -1:
                trait = data[source_trait_index]
            try:
                pvalue = float(data[pval_index])
            except:
                continue
            chr = data[chr_index]
            pos = int(data[snp_pos_index])
            snp_counts[trait] = snp_counts.get(trait, 0) + 1
            if pvalue > source_threshold:
                continue

            all_snps.append((chr, pos, pvalue, trait))
    
    # For now, include only autosomal SNPs.
    filtered = []
    for s in all_snps:
        if "chr" in str(s[0]):
            filtered.append((s[0][3:], s[1], s[2], s[3]))
        else:
            filtered.append((s[0], s[1], s[2], s[3]))

    all_snps = sorted(filtered, key=operator.itemgetter(2)) 

    # Go through the list of SNPs in order, adding the ones
    # passing our criteria.
    snps_to_test = []
    for snp in all_snps:

        # For now, ignore a SNP if it's in the MHC region -- this
        # would require alternative methods.
        if (snp[0] == "6") and snp[1] > 25000000 and snp[1] < 35000000:
                continue

        # Before adding a SNP, make sure it's not right next
        # to another SNP that we've already selected.
        
        skip = False
        for kept_snp in snps_to_test:
                if kept_snp[0] == snp[0] and abs(kept_snp[1] - snp[1]) < window and kept_snp[3] == snp[3]:
                        skip = True
                        break
        if not skip:
            snps_to_test.append(snp)
            
    return(snps_to_test)


def load_config(filename):

    with open(filename) as data_file:
        config = json.load(data_file)

    return config

            
if __name__ == "__main__":
    main()
