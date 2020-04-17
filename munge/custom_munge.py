#!/usr/bin/python
# Author: Mike Gloudemans
# Date created: 4/5/2018

import json
import pandas as pd
import glob
import gzip
import sys
import subprocess
import os
import time
import traceback
import numpy


# Set debug to an integer if you only want to load a limited number of
# rows from the input file, for debugging purposes.
#debug = None
debug = 3000000

# TODO: Integrate this more cleanly

# Where to store tmp files
tmp_file = "/users/mgloud/projects/gwas/scripts/tmp/unsorted_GWAS.tmp"


def is_int(s):
    try:
        int(float(s))
        return True
    except:
        return False

cwd = os.getcwd()

os.chdir(os.path.abspath(os.path.dirname(sys.argv[0])))

# Custom script for munging all GWAS files, according to specifications
# given in a separate JSON file.

def main():

    subprocess.check_call("rm -f output/error-log.txt", shell=True)

    lasttime = 0

    # Find location of config file and open it
    if len(sys.argv) > 1:
        munge_menu = sys.argv[1]
    else:
        munge_menu = "munge_menu.config"
    with open(munge_menu) as f:
        config = json.load(f)

    # if input directory is a relative path
    if not config["input_base_dir"].startswith("/"):
        config["input_base_dir"] = cwd + "/" + config["input_base_dir"]

    # if output directory is a relative path
    if not config["output_base_dir"].startswith("/"):
        config["output_base_dir"] = cwd + "/" + config["output_base_dir"]

    genome_build = config["genome_build"]
    rsid_to_pos = {}

    if "hg38" in genome_build:
        rsid_to_pos["hg38"], pos_to_rsid["hg38"] = load_hg38_rsid_keys()
    if "hg19" in genome_build:
        rsid_to_pos["hg19"], pos_to_rsid["hg19"] = load_hg19_rsid_keys()
    else:
        raise Exception("Invalid genome build: %s" % genome_build)

    active = True

    # Munge every study from the config list, one at a time
    for study in config["studies"]:
        # Yes, the clean way to do this would be to make it a separate function, which is what I should do eventually.
        # For now I just want to track the problems
        # TODO: Make it print the whole exception like the coloc dispatcher script does
        try:
            print "Munging", study["study_info"]

            if "Astle" in study["study_info"]:
                active = True

            if not active:
                continue

            # Check if the config file specifies a custom delimiter
            delimiter = "\t"
            if "delimiter" in study:
                delimiter = study["delimiter"]

            # Check if we need to skip a certain number of rows
            skip_rows = 0
            if "skip_rows" in study:
                skip_rows = int(study["skip_rows"])

            # Parse each input trait separately, but output them
            # all to the same final file.
            for trait in study["traits"]:
                print "Current trait:", trait

                # Some studies have several p-values for different traits, listed
                # in the same file. For these ones, we need to do something slightly different
                if "multi_column" in study:
                    file_chunks = study["multi_column"]
                    study["pvalue_index"] = study["traits"][trait][0]
                else:
                    file_chunks = study["traits"][trait]

                # Some files come in multiple chunks; if not, we can still handle them this way
                all_data = []
                for file_chunk in file_chunks:
                    filename = "/".join([config["input_base_dir"], study["study_info"], file_chunk])

                    # Determine format and load the file
                    if "format" in study:
                        format = study["format"]
                    else:
                        if filename.endswith(".gz"):
                            format = "gzip"
                        else:
                            format = "txt"

                    if format == "gzip":
                        with gzip.open(filename) as f:
                            if "no_header" in study and study["no_header"] == "True":
                                data = pd.read_csv(f, delimiter=delimiter, nrows=debug, skiprows = skip_rows, header=None, dtype=str)
                            else:
                                data = pd.read_csv(f, delimiter=delimiter, nrows=debug, skiprows = skip_rows, dtype=str)
                    else:
                        if "no_header" in study and study["no_header"] == "True":
                            data = pd.read_csv(filename, delimiter=delimiter, nrows=debug, skiprows = skip_rows, header=None, dtype=str)
                        else:
                            data = pd.read_csv(filename, delimiter=delimiter, nrows=debug, skiprows = skip_rows, dtype=str)

                    print data.head(5)

                    all_data.append(data)
               
                # Concatenate all the separate files for this trait
                # into a single data frame.
                data = pd.concat(all_data)

                print data.head(5)

                # Note key SNP attributes
                if "effect_index" in study:
                    data.rename(columns={data.keys()[int(study["effect_index"]) - 1]:'beta'}, inplace = True)
                if "or_index" in study:
                    data.rename(columns={data.keys()[int(study["or_index"]) - 1]:'or'}, inplace = True)
                if "se_index" in study:
                    data.rename(columns={data.keys()[int(study["se_index"]) - 1]:'se'}, inplace = True)
                if "n_cases_index" in study:
                    data.rename(columns={data.keys()[int(study["n_cases_index"]) - 1]:'n_cases'}, inplace = True)
                if "n_controls_index" in study:
                    data.rename(columns={data.keys()[int(study["n_controls_index"]) - 1]:'n_controls'}, inplace = True)
                if "n_total_index" in study:
                    data.rename(columns={data.keys()[int(study["n_total_index"]) - 1]:'n_total'}, inplace = True)
                if "effect_allele_freq_index" in study:
                    data.rename(columns={data.keys()[int(study["effect_allele_freq_index"]) - 1]:'effect_allele_freq'}, inplace = True)
                if "effect_allele_index" in study:
                    data.rename(columns={data.keys()[int(study["effect_allele_index"]) - 1]:'effect_allele'}, inplace = True)
                    data['effect_allele'] = data['effect_allele'].str.upper()
                if "non_effect_allele_index" in study:
                    data.rename(columns={data.keys()[int(study["non_effect_allele_index"]) - 1]:'non_effect_allele'}, inplace = True)
                    data['non_effect_allele'] = data['non_effect_allele'].str.upper()
                if "direction_index" in study:
                    data['effect_direction'] = data.iloc[:,int(study["direction_index"]) - 1].copy()

                    # Test if we're looking at "+/-" that have already been marked
                    if sum(data['effect_direction'].isin(["+", "-"])) * 1.0 / len(data['effect_direction']) > 0.9:
                        # Leave things as they are
                        pass

                    # Is the direction encoded within an odds ratio?
                    if "or_index" in study and study["direction_index"] == study["or_index"]:
                        def sign(x):
                            try:
                                f = float(x)
                            except:
                                return numpy.nan
                            if f >= 1:
                                return("+")
                            else:
                                return("-")
                        data['effect_direction'] = data['effect_direction'].apply(sign)

                    # Is the direction encoded within an effect size?
                    elif "effect_index" in study and study["direction_index"] == study["effect_index"]:
                        def sign(x):
                            try:
                                f = float(x)
                            except:
                                return numpy.nan
                            if f >= 0:
                                return("+")
                            else:
                                return("-")
                        data['effect_direction'] = data['effect_direction'].apply(sign)

                if "rsid_index" in study and study["rsid_index"] != "-1":
                    # Join with rsid table to get indices for each column
                   
                    data.rename(columns={data.keys()[int(study["rsid_index"]) - 1]:'rsid'}, inplace = True)
                    data["rsid"] = data["rsid"].str.lower()
                    data.rename(columns={data.keys()[int(study["pvalue_index"]) - 1]:'pvalue'}, inplace = True)

                    if "rsid_split" in study:
                        def rsid_split(x):
                            return x.split(study["rsid_split"]["splitter"])[int(study["rsid_split"]["index"])-1]

                        data['rsid'] = data['rsid'].apply(rsid_split)
                    
                    # If there are multiple p-value columns, remove all of them except the one we're
                    # interested in
                    if "multi_column" in study:
                        cols = data.columns.tolist()

                        indices = [int(study["traits"][t][0])-1 for t in study["traits"] if t != trait]
                        for index in sorted(indices, reverse=True):    
                            del cols[index]
                        data = data[cols]

                    print "before merge"
                    print time.time() - lasttime
                    lasttime = time.time()

                    # Rename columns with "snp_pos" or "chr" names with "old" suffix
                    if "snp_pos" in data.columns.values:
                        data = data.rename(columns = {"snp_pos": "snp_pos_old"})
                    if "chr" in data.columns.values:
                        data = data.rename(columns = {"chr": "chr_old"})

                    # Apply function that gets chr and snp_pos for all rsids, from the dict
                    def get_chr(x, build):
                        try:
                            rs_no = int(x.replace("rs", ""))
                        except:
                            return -1
                        if rs_no in rsid_to_pos[build]:
                            return rsid_to_pos[build][rs_no][0]
                        return -1
                    def get_pos(x, build):
                        try:
                            rs_no = int(x.replace("rs", ""))
                        except:
                            return -1
                        if rs_no in rsid_to_pos[build]:
                            return rsid_to_pos[build][rs_no][1]
                        return -1
                    for b in rsid_to_pos:
                        data["chr_{0}".format(b)] = data["rsid"].apply(get_chr, build = b)
                        data["snp_pos_{0}".format(b)] = data["rsid"].apply(get_pos, build = b)
                    
                        # Throw away the ones with rsids not found
                        # Note: This technically isn't optimal because it might appear in one
                        # build but not in another. Probably rare though
                        data = data[~(data['chr_{0}'] == -1)]
                        data = data[~(data['snp_pos_{0}'] == -1)]
                        
                    print "after merge"
                    print time.time() - lasttime
                    lasttime = time.time()

                    new_data = data

                elif "chr_index" in study and study["chr_index"] != "-1" \
                        and "snp_pos_index" in study and study["snp_pos_index"] != "-1":

                    # TODO: This isn't really a good assumption; determine this 
                    # programmatically
                    start_build = "hg19"
                    start_chrom = "chr_{0}".format(start_build)
                    start_pos = "snp_pos_{0}".format(start_build)


                    if study["chr_index"] == study["snp_pos_index"]:
                        chrom = lambda x: x.split(study["snp_split_char"])[0]
                        snp_pos = lambda x: x.split(study["snp_split_char"])[1]
                        data[start_chrom] = data.iloc[:, int(study["chr_index"]) - 1].apply(chrom)
                        data[start_pos] = data.iloc[:, int(study["chr_index"]) - 1].apply(snp_pos)
                    else:
                        data[start_chrom] = data.iloc[:, int(study["chr_index"]) - 1].apply(chrom)
                        data[start_pos] = data.iloc[:, int(study["snp_pos_index"]) - 1].apply(chrom)
                
                    data.rename(columns={data.keys()[int(study["pvalue_index"]) - 1]:'pvalue'}, inplace = True)

                    # If there are multiple p-value columns, remove all of them except the one we're
                    # interested in for this trait
                    if "multi_column" in study:
                        cols = data.columns.tolist()

                        indices = [int(study["traits"][t][0])+1 for t in study["traits"] if t != trait]
                        for index in sorted(indices, reverse=True):
                                del cols[index]
                        data = data[cols]

                    data = data[~(pd.isnull(data[start_chrom]))]
                    data = data[~(pd.isnull(data[start_pos]))]
                    data[start_chrom] = data[start_chrom].str.replace('chr', '')
                    data[start_pos] = data[start_pos].astype(float).astype(int)
    
                    # Throw away the ones with rsids not found
                    if "rsid" in data.columns.values:
                        data = data.rename(columns = {"rsid": "rsid_old"})
                    
                    # First, map chr and pos (hg19) to their rsids
                    rsid_column = []
                    for i in range(data.shape[0]):
                        if (int(data[start_chrom][i]), int(data[start_pos][i])) in pos_to_rsid[start_build]:
                            rsid_column.append("rs" + str([pos_to_rsid[start_build][(int(data[start_chrom][i]), int(data[start_pos][i]))]))
                        else:
                            rsid_column.append("NA")
                    data['rsid'] = rsid_column

                    # TODO: Do we even need this? I don't know how it would actually be useful
                    '''
                    # Rename columns with "snp_pos" or "chr" names with "old" suffix
                    if "snp_pos" in data.columns.values:
                        data = data.rename(columns = {"snp_pos": "snp_pos_old"})
                    if "chr" in data.columns.values:
                        data = data.rename(columns = {"chr": "chr_old"})

                    # Then apply function that gets chr and snp_pos for all rsids, from the dict
                    def get_chr(x):
                        try:
                            rs_no = int(x.replace("rs", ""))
                        except:
                            return -1
                        if rs_no in rsid_to_pos:
                            return rsid_to_pos[rs_no][0]
                        return -1
                    def get_pos(x):
                        try:
                            rs_no = int(x.replace("rs", ""))
                        except:
                            return -1
                        if rs_no in rsid_to_pos:
                            return rsid_to_pos[rs_no][1]
                        return -1

                    data["chr"] = data["rsid"].apply(get_chr)
                    data["snp_pos"] = data["rsid"].apply(get_pos)
                
                    # Throw away the ones with rsids not found
                    data = data[~(data['chr'] == -1)]
                    data = data[~(data['snp_pos'] == -1)]
                    '''

                    new_data = data
                
                else:
                    print study["path_glob"], "not properly specified in JSON config file."
                    # TODO: print to a log file that the JSON was not properly
                    # specified for this file.
                    continue
                
                # Filter out rows that don't have valid pvals
                def valid_pval(x):
                    try:
                        y = float(x)
                        if y < 0:
                            return False
                        if y > 1:
                            return False
                        return True
                    except:
                        return False
                new_data = new_data[new_data['pvalue'].apply(valid_pval)]
                # Then reorder the new table appropriately

                cols = new_data.columns.tolist()

                cols.remove("rsid")
                cols.remove("chr")
                cols.remove("snp_pos")
                cols.remove("pvalue")
                if "chr_hg38" in cols:
                    cols.remove("chr_hg38")
                if "chr_hg19" in cols:
                    cols.remove("chr_hg19")
                if "chr_hg18" in cols:
                    cols.remove("chr_hg18")
                if "snp_pos_hg38" in cols:
                    cols.remove("snp_pos_hg38")
                if "snp_pos_hg19" in cols:
                    cols.remove("snp_pos_hg19")
                if "snp_pos_hg18" in cols:
                    cols.remove("snp_pos_hg18")
                if "rsid_old" in cols:
                    cols.remove("rsid_old")
                if "effect_allele" in cols:
                    cols.remove("effect_allele")
                if "non_effect_allele" in cols:
                    cols.remove("non_effect_allele")
                if "effect_direction" in cols:
                    cols.remove("effect_direction")
                if "or" in cols:
                    cols.remove("or")
                if "beta" in cols:
                    cols.remove("beta")
                if "se" in cols:
                    cols.remove("se")
                if "n_cases" in cols:
                    cols.remove("n_cases")
                if "n_controls" in cols:
                    cols.remove("n_controls")
                if "n_total" in cols:
                    cols.remove("n_total")
                if "effect_allele_freq" in cols:
                    cols.remove("effect_allele_freq")

                prefix = []
                if "effect_allele_index" in study:
                    prefix.append("effect_allele")
                if "non_effect_allele_index" in study:
                    prefix.append("non_effect_allele")
                if "direction_index" in study:
                    prefix.append("effect_direction")
                if "or_index" in study:
                    prefix.append("or")
                if "effect_index" in study:
                    prefix.append("beta")
                if "se_index" in study:
                    prefix.append("se")
                if "n_cases_index" in study:
                    prefix.append("n_cases")
                if "n_controls_index" in study:
                    prefix.append("n_controls")
                if "n_total_index" in study:
                    prefix.append("n_total")
                if "effect_allele_freq_index" in study:
                    prefix.append("effect_allele_freq")
                
                chrom_cols = []
                for b in rsid_to_pos:
                    chrom_cols.append("chr_{0}".format(b))
                    chrom_cols.append("snp_pos_{0}".format(b))
                cols = ["rsid"] + chrom_cols + ["pvalue"] + prefix + cols
                
                new_data = new_data[cols]

                print new_data.head(3)

                # Write header
                with open(tmp_file, "w") as w:
                    new_data.to_csv(w, sep="\t", index=False, float_format='%.3E')


                # Sort the new table and write it to its final destination file
                if "output_file" in study:
                    # This is only used in cases where we want to output multiple files under a single
                    # study's directory. This would usually happen if the study contains
                    # input files with different formats.
                    subprocess.call("mkdir -p {0}/{1}".format(config["output_base_dir"], study["output_file"]), shell=True)
                    out_file = "{0}/{1}/{2}.txt".format(config["output_base_dir"], study["output_file"], trait)
                else:
                    subprocess.call("mkdir -p {0}/{1}".format(config["output_base_dir"], study["study_info"]), shell=True)
                    out_file = "{0}/{1}/{2}.txt".format(config["output_base_dir"], study["study_info"], trait)
                # TODO: This is unsafe. Fix it using Popen
                # TODO: This also probably isn't very efficient right now, so fix that if possible
                subprocess.check_call("head -n 1 {1} > {0}".format(out_file, tmp_file), shell=True)
                
                subprocess.check_call("tail -n +2 {1} | sort -k2,2 -k3,3n >> {0}".format(out_file, tmp_file), shell=True) 

                # Bgzip the output file
                subprocess.check_call(["bgzip", "-f", out_file])

                # Tabix the output file
                subprocess.check_call(["tabix", "-f", "-s", "2", "-b", "3", "-e", "3", "-S", "1", out_file+".gz"])

                del new_data

        except Exception as e:
            # Log problems to an error file, then move on
            subprocess.check_call("mkdir -p output", shell=True)
            with open("output/error-log.txt", "a") as a:
                a.write(study["study_info"] + "\n")

            traceback.print_exc(file=sys.stdout)


def load_hg19_rsid_keys():
    return load_rsid_keys(rsid_to_pos_file="/users/mgloud/projects/gwas/data/sorted_1kg_matched_hg19_snp150.txt.gz", \
            pos_to_rsid_file="/users/mgloud/projects/gwas/data/sorted_1kg_matched_hg19_snp150.txt.gz")

def load_hg38_rsid_keys():
    return load_rsid_keys(rsid_to_pos_file="/users/mgloud/projects/gwas/data/sorted_1kg_matched_hg38_snp150.txt.gz", \
            pos_to_rsid_file="/users/mgloud/projects/gwas/data/sorted_1kg_matched_hg19_snp150.txt.gz")

def load_rsid_keys(rsid_to_pos_file, pos_to_rsid_file):

    rsid_to_pos = {}
    pos_to_rsid = {}

    with gzip.open(rsid_to_pos_file) as f:
        line_no = 0
        for line in f:
            data = line.strip().split()
            try:
                chrom = int(data[0].replace("chr", ""))
            except:
                # Weird chromsome
                continue

            rs_no = int(data[2].replace("rs", ""))

            rsid_to_pos[rs_no] = (chrom, data[1])

            # Read fewer lines if we're in debug mode
            line_no += 1
            if line_no % 10000000 == 0:
                print line_no
            if (not debug is None) and line_no > debug:
                break

    with gzip.open(pos_to_rsid_file) as f:
        # NOTE: If a given position has more than one legal rsID,
        # then we'll arbitrarily choose whichever one appears last in
        # the file for now.
        line_no = 0
        for line in f:
            data = line.strip().split()

            try:
                chrom = int(data[0].replace("chr", ""))
            except:
                # Weird chromsome, or X/Y
                continue

            rs_no = int(data[2].replace("rs", ""))

            pos_to_rsid[(chrom, int(data[1]))] = rs_no
            
            line_no += 1
            if line_no % 10000000 == 0:
                print line_no

            # Read fewer lines if we're in debug mode
            if (not debug is None) and line_no > debug:
                break

    return (rsid_to_pos, pos_to_rsid)

if __name__ == "__main__":
    main()
