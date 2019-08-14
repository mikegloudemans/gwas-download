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

# Set debug to an integer if you only want to load a limited number of
# rows from the input file, for debugging purposes.
debug = None
debug = 1000000

# TODO: Integrate this more cleanly
genome_build = "hg38"

# Where to store tmp files
tmp_file = "/users/mgloud/projects/gwas/scripts/tmp/unsorted_GWAS.tmp"

def is_int(s):
    try:
        int(float(s))
        return True
    except:
        return False


os.chdir(os.path.abspath(os.path.dirname(sys.argv[0])))

# Custom script for munging all GWAS files, according to specifications
# given in a separate JSON file.

def main():

    # Find location of config file and open it
    if len(sys.argv) > 1:
        munge_menu = sys.argv[1]
    else:
        munge_menu = "munge_menu.config"
    with open(munge_menu) as f:
        config = json.load(f)

    if genome_build == "hg38":
        rsids = load_hg38_rsid_keys()
    elif genome_build == "hg19":
        rsids = load_hg19_rsid_keys()
    else:
        raise Exception("Invalid genome build: %s" % genome_build)

    active = False
    # Munge every study from the config list, one at a time
    for study in config["studies"]:

        if "Autism_Psychiatric-Genomics-Consortium_2017" in study["study_info"]:
            active = True
        if not active:
            continue
        
        print "Munging", study["study_info"]

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
        first_trait = True
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
            # TODO: If file is extremely large, chunk it down further into blocks of 1M lines or whatever's
            # manageable in terms of memory
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

                all_data.append(data)
           
            # Concatenate all the separate files for this trait
            # into a single data frame.
            data = pd.concat(all_data)

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
            if "non_effect_allele_index" in study:
                data.rename(columns={data.keys()[int(study["non_effect_allele_index"]) - 1]:'non_effect_allele'}, inplace = True)
            if "direction_index" in study:
                data['effect_direction'] = data.iloc[:,int(study["direction_index"]) - 1]

                # Test if we're looking at "+/-"
                if sum(data['effect_direction'].isin(["+", "-"])) * 1.0 / len(data['effect_direction']) > 0.9:
                    # Leave things as they are
                    pass

                # Test if we're looking at odds ratios
                elif sum(data['effect_direction'].astype(float) < 0) * 1.0 / len(data['effect_direction']) < 0.1:
                    def sign(x):
                        if x >= 1:
                            return("+")
                        else:
                            return("-")
                    data['effect_direction'] = data['effect_direction'].apply(sign)

                # Otherwise, we're probably just looking at beta values
                else:
                    def sign(x):
                        if x >= 0:
                            return("+")
                        else:
                            return("-")
                    data['effect_direction'] = data['effect_direction'].apply(sign)

            if "rsid_index" in study and study["rsid_index"] != "-1":
                # Join with rsid table to get indices for each column
               
                data.rename(columns={data.keys()[int(study["rsid_index"]) - 1]:'rsid'}, inplace = True)
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

                new_data = rsids.merge(data, suffixes=('', '_old'), left_index=True, right_on="rsid")

            elif "chr_index" in study and study["chr_index"] != "-1" \
                    and "snp_pos_index" in study and study["snp_pos_index"] != "-1":

                if study["chr_index"] == study["snp_pos_index"]:
                    chrom = lambda x: x.split(study["snp_split_char"])[0]
                    snp_pos = lambda x: x.split(study["snp_split_char"])[1]
                    data["chr"] = data.iloc[:, int(study["chr_index"]) - 1].apply(chrom)
                    data["snp_pos"] = data.iloc[:, int(study["chr_index"]) - 1].apply(snp_pos)
                else:
                    # Join with rsid table on chromosome and position
                    data.rename(columns={data.keys()[int(study["chr_index"]) - 1]:'chr'}, inplace = True)
                    data.rename(columns={data.keys()[int(study["snp_pos_index"]) - 1]:'snp_pos'}, inplace = True)
                
                data.rename(columns={data.keys()[int(study["pvalue_index"]) - 1]:'pvalue'}, inplace = True)

                # If there are multiple p-value columns, remove all of them except the one we're
                # interested in for this trait
                if "multi_column" in study:
                    cols = data.columns.tolist()

                    indices = [int(study["traits"][t][0])+1 for t in study["traits"] if t != trait]
                    for index in sorted(indices, reverse=True):
                            del cols[index]
                    data = data[cols]

                
                data = data[~(pd.isnull(data['chr']))]
                data = data[~(pd.isnull(data['snp_pos']))]
                data['chr'] = data['chr'].str.replace('chr', '')
                data['snp_pos'] = data['snp_pos'].astype(float).astype(int)
                
                new_data = rsids.merge(data, suffixes=('', '_old'), on=["chr", "snp_pos"])

            else:
                print study["path_glob"], "not properly specified in JSON config file."
                # TODO: print to a log file that the JSON was not properly
                # specified for this file.
                continue
            
            new_data = new_data[~(new_data['chr'].str.contains("_"))]
            new_data = new_data[~(new_data['chr'].str.contains("NA"))]

            # Add trait column if there are multiple traits in this study.
            if len(study["traits"].keys()) > 1:
                new_data['trait'] = trait

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
            if "trait" in cols:
                cols.remove("trait")
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

            cols = ["rsid", "chr", "snp_pos", "pvalue"] + prefix + cols
            if len(study["traits"].keys()) > 1:
                cols = ["trait"] + cols
            
            print new_data.head()
            new_data = new_data[cols]

            print new_data.head(3)

            # Write header only if it's the first trait from this study
            if first_trait:
                with open(tmp_file, "w") as w:
                    new_data.to_csv(w, sep="\t", index=False, float_format='%.3E')
            else:
                with open(tmp_file, "a") as a:
                    new_data.to_csv(a, sep="\t", index=False, header=False, float_format='%.3E')

            first_trait = False

        # Sort the new table and write it to its final destination file
        if "output_file" in study:
            # This is only used in cases where we want to output multiple files under a single
            # study's directory. This would usually happen if the study contains
            # input files with different formats.
            out_file = "{0}/GWAS_{1}.txt".format(config["output_base_dir"], study["output_file"])
        else:
            out_file = "{0}/GWAS_{1}.txt".format(config["output_base_dir"], study["study_info"])
        # TODO: This is unsafe. Fix it using Popen
        # TODO: This also probably isn't very efficient right now, so fix that if possible
        subprocess.check_call("head -n 1 {1} > {0}".format(out_file, tmp_file), shell=True)
        if len(study["traits"]) > 1:
           subprocess.check_call("tail -n +2 {1} | sort -k3,3 -k4,4n >> {0}".format(out_file, tmp_file), shell=True) 
        else:
           subprocess.check_call("tail -n +2 {1} | sort -k2,2 -k3,3n >> {0}".format(out_file, tmp_file), shell=True) 

        # Bgzip the output file
        subprocess.check_call(["bgzip", "-f", out_file])

        # Tabix the output file
        if len(study["traits"]) > 1:
            subprocess.check_call(["tabix", "-f", "-s", "3", "-b", "4", "-e", "4", "-S", "1", out_file+".gz"])
        else:
            subprocess.check_call(["tabix", "-f", "-s", "2", "-b", "3", "-e", "3", "-S", "1", out_file+".gz"])


def load_hg19_rsid_keys():
    return load_rsid_keys("/users/mgloud/projects/gwas/data/sorted_hg19_snp150.txt.gz")

def load_hg38_rsid_keys():
    return load_rsid_keys("/users/mgloud/projects/gwas/data/sorted_hg38_snp150.txt.gz")

def load_rsid_keys(rsid_file):
    with gzip.open(rsid_file) as f:
        data = pd.read_csv(f, sep="\t", index_col = 2, nrows=debug, header=None, names=["chr", "snp_pos"])

    data['chr'] = data['chr'].astype(str)
    data['snp_pos'] = data['snp_pos'].astype(int)
    data['chr'] = data['chr'].str.replace('chr', '')
    data['rsid'] = data.index.values
    
    return data

if __name__ == "__main__":
    main()
