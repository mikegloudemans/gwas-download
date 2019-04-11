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
import SNP 
import json

if sys.version_info[0] < 3:
    from StringIO import StringIO
else:
    from io import StringIO

from scipy import stats

config_file = sys.argv[1]
if config_file == "":
    print "Please specify a config file."
    sys.exit()

def main():

    # Do stuff that needs to be done exactly once for the whole run
    
    # Load config file
    config = load_config(config_file)
 
    # Write headers
    for gwas_group in config["gwas_groups"]:
        for gwas_cutoff_pval in config["gwas_groups"][gwas_group]["gwas_cutoff_pvals"]:
            for gwas_window in config["gwas_groups"][gwas_group]["gwas_windows"]:
                with open("{0}/{1}_{4}_gwas-pval{2}_gwas-window{3}_snps-considered.txt".format(config["output_directory"], config["output_base"], gwas_cutoff_pval, gwas_window, gwas_group), "w") as w:
                    w.write("chr\tsnp_pos\tpvalue\ttrait\n")
                for eqtl_group in config["gwas_groups"][gwas_group]["eqtl_targets"]:
                    for eqtl_cutoff_pval in config["gwas_groups"][gwas_group]["eqtl_targets"][eqtl_group]["cutoff_pvals"]:
                        for eqtl_window in config["gwas_groups"][gwas_group]["eqtl_targets"][eqtl_group]["windows"]:
                            with open("{0}/{1}_{6}_{7}_gwas-pval{2}_eqtl-pval{3}_gwas-window{4}_eqtl-window{5}_coloc-tests.txt".format(config["output_directory"], config["output_base"], gwas_cutoff_pval, eqtl_cutoff_pval, gwas_window, eqtl_window, gwas_group, eqtl_group), "w") as w:
                                w.write("chr\tsnp_pos\tgwas_file\teqtl_file\ttrait\tgwas_pvalue\teqtl_pvalue\tfeature\n")
                                w.flush()
                            with open("{0}/{1}_{6}_{7}_gwas-pval{2}_eqtl-pval{3}_gwas-window{4}_eqtl-window{5}_snp-gene-pairs-considered.txt".format(config["output_directory"], config["output_base"], gwas_cutoff_pval, eqtl_cutoff_pval, gwas_window, eqtl_window, gwas_group, eqtl_group), "w") as w:
                                w.write("chr\tsnp_pos\tpvalue\tgene\ttrait\n")

    # Now start searching for colocalization candidates
    for gwas_group in config["gwas_groups"]:
        gwas_files = []
        for gwas_file in config["gwas_groups"][gwas_group]["files"]:
            gwas_files.extend(glob.glob(gwas_file))

        for gwas_cutoff_pval in config["gwas_groups"][gwas_group]["gwas_cutoff_pvals"]:
            for gwas_window in config["gwas_groups"][gwas_group]["gwas_windows"]:

                # Get the GWAS SNPs to test for this parameter specification
                for gwas_file in gwas_files:

                    print gwas_file 

                    info = snps_by_threshold(gwas_file, gwas_cutoff_pval, gwas_file, window=gwas_window)
                    for snp in info:
                        with open("{0}/{1}_{4}_gwas-pval{2}_gwas-window{3}_snps-considered.txt".format(config["output_directory"], config["output_base"], gwas_cutoff_pval, gwas_window, gwas_group), "a") as a:
                            a.write("\t".join([str(s) for s in snp]) + "\t" + gwas_file + "\n")
                    for eqtl_group in config["gwas_groups"][gwas_group]["eqtl_targets"]:
                        eqtl_files = []
                        for eqtl_file in config["eqtl_groups"][eqtl_group]["files"]:
                            eqtl_files.extend(glob.glob(eqtl_file))
                        
                        for eqtl_cutoff_pval in config["gwas_groups"][gwas_group]["eqtl_targets"][eqtl_group]["cutoff_pvals"]:
                            for eqtl_window in config["gwas_groups"][gwas_group]["eqtl_targets"][eqtl_group]["windows"]:
                                add_snps_to_test(config, info, gwas_group, gwas_cutoff_pval, gwas_window, gwas_file, eqtl_group, eqtl_cutoff_pval, eqtl_window, eqtl_files)

def add_snps_to_test(config, info, gwas_group, gwas_cutoff_pval, gwas_window, gwas_file, eqtl_group, eqtl_cutoff_pval, eqtl_window, eqtl_files):
    
        for snp in info:
            print snp

            for pheno in eqtl_files:

                # Get header to locate columns of interest
                header = subprocess.check_output("zcat {0} 2> /dev/null | head -n 1".format(pheno), shell=True).strip().split("\t")
                pval_index = header.index("pvalue")
                if "gene" in header:
                    gene_index = header.index("gene")
                else:
                    gene_index = header.index("feature")

              
                wide_matches = subprocess.check_output("tabix {0} {1}:{2}-{3}".format(pheno, snp[0], snp[1]-eqtl_window, snp[1]+eqtl_window), shell=True)
                if wide_matches == "":
                    continue
                wide_matches = wide_matches.strip().split("\n")

                genes_considered = set([])

                matched = set([])     # Don't print repeats if there are multiple matches
                for match in wide_matches: 
                    data = match.strip().split("\t")

                    # Keep track of all SNP-gene pairs considered, for the manuscript
                    if data[gene_index] not in genes_considered:
                        with open("{0}/{1}_{6}_{7}_gwas-pval{2}_eqtl-pval{3}_gwas-window{4}_eqtl-window{5}_snp-gene-pairs-considered.txt".format(config["output_directory"], config["output_base"], gwas_cutoff_pval, eqtl_cutoff_pval, gwas_window, eqtl_window, gwas_group, eqtl_group), "a") as a:
                            a.write("\t".join([str(s) for s in snp]) + "\t" + gwas_file + "\t" + data[gene_index] + "\t" + pheno + "\n")
                            genes_considered.add(data[gene_index])

                    if float(data[pval_index]) <= eqtl_cutoff_pval and data[0] not in matched:
                        with open("{0}/{1}_{6}_{7}_gwas-pval{2}_eqtl-pval{3}_gwas-window{4}_eqtl-window{5}_coloc-tests.txt".format(config["output_directory"], config["output_base"], gwas_cutoff_pval, eqtl_cutoff_pval, gwas_window, eqtl_window, gwas_group, eqtl_group), "a") as a:
                            a.write("{0}\t{1}\t{2}\t{3}\t{4}\t{5}\t{6}\t{7}\n".format(snp[0], snp[1], gwas_file, pheno, snp[3], snp[2], data[pval_index], data[gene_index]))
                            matched.add(data[gene_index])

def snps_by_threshold(gwas_file, gwas_threshold, default_trait, window=1000000):

    trait = default_trait

    snp_counts = {}
    hit_counts = {}

    with gzip.open(gwas_file) as f:
        header = f.readline().strip().split()

        trait_index = -1
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
            if trait_index != -1:
                trait = data[trait_index]
            try:
                pvalue = float(data[pval_index])
            except:
                continue
            chr = data[chr_index]
            pos = int(data[snp_pos_index])
            snp_counts[trait] = snp_counts.get(trait, 0) + 1
            if pvalue > gwas_threshold:
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
