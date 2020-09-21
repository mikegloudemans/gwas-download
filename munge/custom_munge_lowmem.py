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
import traceback
import numpy
import random
import operator
import copy

# Custom script for munging all GWAS files, according to specifications
# given in a separate JSON file.

#####################################################
# Constants and settings
# (to be made part of config eventually)
#####################################################

hg18_dbsnp = "dbsnp/sorted_1kg_matched_hg18_snp150.txt.gz"
hg19_dbsnp = "dbsnp/sorted_1kg_matched_hg19_snp150.txt.gz"
hg38_dbsnp = "dbsnp/sorted_1kg_matched_hg38_snp150.txt.gz"

valid_chroms = [str(i+1) for i in range(22)]

def main():

    cwd = os.getcwd()

    os.chdir(os.path.abspath(os.path.dirname(sys.argv[0])))

    config = load_config(cwd)

    # Load all mappings of position to rsid
    config["pos_to_rsid"] = load_pos_to_rsid_all(config)

    # Just output genome builds separately, since they have to produce 
    # separate files. It's tempting to think we'd just put chrom and pos
    # for all genome builds in the same file, but then this fails when it's
    # time to sort and tabix.
    for genome in config["genome_build"]:
        if genome == "hg38":
            config["rsid_to_pos"] = load_rsid_to_pos_hg38(config)
        elif genome == "hg19":
            config["rsid_to_pos"] = load_rsid_to_pos_hg19(config)
        else:
            raise Exception("Invalid genome build: %s" % genome_build)

        # Config option may let us skip files that have
        # already been processed
        active = not "skip_ahead_to" in config

        # Munge every study from the config list, one at a time
        for study in config["studies"]:

            # If we're confining the ones we run to only a shortlist,
            # then we'll skip over this file if it's not in that list
            if "shortlist" in config and study["study_info"] not in config["shortlist"]:
                continue
            
            # Skip over any files that have been blacklisted
            # in the config file
            if "blacklist" in config and study["study_info"] in config["blacklist"]:
                continue

            # If we're skipping over some subset of the GWAS files
            # this will be specified in the config file
            if "skip_ahead_to" in config and config["skip_ahead_to"] in study["study_info"]:
                active = True
            if not active:
                continue

            study_specs = copy.deepcopy(study)
            study_specs["genome"] = genome

            try:
                munge_study(study_specs, config)
            except Exception as e:
                # Log problems to an error file, then move on
                with open(config["error_log"], "a") as a:
                    a.write(study["study_info"] + "\n")
                traceback.print_exc(file=sys.stdout)


def munge_study(study, config):

    print "Munging", study["study_info"]
    
    # Check if the config file specifies a custom delimiter
    if "delimiter" not in study:
        study["delimiter"] = "\t"

    # Check if we need to skip a certain number of rows
    if "skip_rows" not in study:
        study["skip_rows"] = 0
    else:
        study["skip_rows"] = int(study["skip_rows"])

    # Get the source build: this only needs to be done once per study
    # even if there are multiple traits in the study.
    # (If files for individual traits are not consistently formatted, then they
    # need to be specified as different studies instead.)
    if "source_build" not in study and int(study["rsid_index"]) == -1:
        study["source_build"] = get_source_build(study, config)

    # Parse each input trait separately, and
    # keep them in separate files for convenience.
    for trait in study["traits"]:
        munge_trait(study, trait, config)

def munge_trait(study, trait, config):

    print "Current trait:", trait

    # Some studies have several p-values for different traits, listed
    # in the same file. For these ones, we need to do something slightly different
    if "multi_column" in study:

        # Avoid modifying the original object!
        study_specs = copy.deepcopy(study)
        study = study_specs

        file_chunks = study["multi_column"]
        for attribute in study["traits"][trait]:
                study[attribute] = study["traits"][trait][attribute] 
    else:
        file_chunks = study["traits"][trait]

    # TODO: At this point we have the info we need to
    # - figure out what columns we're going to be using (don't keep all the
    #   originals because it's really not necessary)
    # - write a file header

    for file_chunk in file_chunks:
        
        # Glob out traits with wildcards in filename
        unglobbed_filename = "/".join([config["input_base_dir"], study["study_info"], file_chunk])
        glob_files = glob.glob(unglobbed_filename)

        for filename in glob_files:
            
            # Determine if gzip format
            if filename.endswith(".gz"):
                format = "gzip"
            else:
                format = "txt"

            if format == "gzip":
                with gzip.open(filename) as in_file:
                    process_file(study, trait, in_file, config)
            else:
                with open(filename) as in_file:
                    process_file(study, trait, in_file, config)

def process_file(study, trait, in_file, config):
    write_tmp_file(study, trait, in_file, config)
    sort_and_index_file(study, trait, in_file, config)

def sort_and_index_file(study, trait, in_file, config):

    # Sort the new table and write it to its final destination file
    if "output_file" in study:
        # This is only used in cases where we want to output multiple files under a single
        # study's directory. This would usually happen if the study contains
        # input files with different formats.
        subprocess.call("mkdir -p {0}/{1}/{2}".format(config["output_base_dir"], study["genome"], study["output_file"]), shell=True)
        out_file = "{0}/{1}/{2}/{3}.txt".format(config["output_base_dir"], study["genome"], study["output_file"], trait)
    else:
        subprocess.call("mkdir -p {0}/{1}/{2}".format(config["output_base_dir"], study["genome"], study["study_info"]), shell=True)
        out_file = "{0}/{1}/{2}/{3}.txt".format(config["output_base_dir"], study["genome"], study["study_info"], trait)


    # TODO: This is unsafe. Fix it using Popen
    write_header(study, out_file)
    
    subprocess.check_call("tail -n +2 {1} | sort -k2,2 -k3,3n >> {0}".format(out_file, config["tmp_file"]), shell=True) 

    # Bgzip the output file
    subprocess.check_call(["bgzip", "-f", out_file])

    # Tabix the output file
    subprocess.check_call(["tabix", "-f", "-s", "2", "-b", "3", "-e", "3", "-S", "1", out_file+".gz"])
    
def write_header(study, out_file):
    # Assemble the header based on what attributes are included in the file

    header = ["rsid", "chr", "snp_pos"]

    if "pvalue_index" in study:
        header.append("pvalue")

    elif "neg_log_pvalue_index" in study:
        header.append("pvalue")

    elif "log_pvalue_index" in study:
        header.append("pvalue")

    if "effect_index" in study:
        header.append("beta")

    if "zscore_index" in study:
        header.append("zscore")

    if "tstat_index" in study:
        header.append("tstat")

    if "or_index" in study:
        header.append("or")

    if "se_index" in study:
        header.append("se")

    if "effect_allele_index" in study:
        header.append("effect_allele")

    if "non_effect_allele_index" in study:
        header.append("non_effect_allele")

    if "effect_allele_freq_index" in study:
        header.append("eaf")

    if "direction_index" in study:
        header.append("direction")
    
    header_line = "\t".join(header) + "\n"

    with open(out_file, "w") as w:
        w.write(header_line)

def write_tmp_file(study, trait, in_file, config):
    # Write a temporary output file with all the key info
    # We don't need to write the header yet, since it's all
    # going to get re-sorted soon anyway
    with open(config["tmp_file"], "w") as w:

        # Skip a line if there's a header; we don't need it
        if "no_header" not in study or study["no_header"] == "False":
            in_file.readline()

        # And skip the specified number of rows (default is 0)
        for i in range(study["skip_rows"]):
            in_file.readline()

        # Then get started with processing the file
        rows_read = 0
        for line in in_file:

            # If there's a limit, don't read more than that many rows
            rows_read += 1
            if (not config["debug"] is None) and rows_read > config["debug"]:
                break

            data = line.strip().split(study["delimiter"]) + [""]*10 # hack to create default values when none exists

            # Data to be written to the line in the output file
            # We will build up this line
            out_data = []

            if "rsid_index" in study and int(study["rsid_index"]) != -1:

                rsid = data[int(study["rsid_index"]) - 1]
                rsid = rsid.lower()

                if "rsid_split" in study:
                    rsid = rsid.split(study["rsid_split"]["splitter"])[int(study["rsid_split"]["index"])-1]
            
                # Not all of the rsids are necessarily valid
                try:
                    raw_rs = int(rsid.replace("rs", ""))
                except:
                    continue

                if raw_rs in config["rsid_to_pos"]:
                    chrom, pos = config["rsid_to_pos"][raw_rs]
                else:
                    continue


            else:
                assert "chr_index" in study and "snp_pos_index" in study
            
                chrom = data[int(study["chr_index"]) - 1]
                snp_pos = data[int(study["snp_pos_index"]) - 1]

                if study["chr_index"] == study["snp_pos_index"]:
                    chrom = chrom.split(study["snp_split_char"])[0]
                    snp_pos = snp_pos.split(study["snp_split_char"])[1]

                # Get rid of the line if there's no chrom or pos
                if chrom.strip() == "" or snp_pos.strip() == "":
                    continue

                # Get rid of the line if chromosome isn't valid
                if chrom not in valid_chroms:
                    continue
                chrom = chrom.replace('chr', '')
                try:
                    chrom = int(chrom)
                except:
                    continue

                snp_pos = int(float(snp_pos)) 

                # Skip the line if it can't be mapped to a known rsid
                if (chrom, snp_pos) in config["pos_to_rsid"][study["source_build"]]:
                    raw_rs = config["pos_to_rsid"][study["source_build"]][(chrom, snp_pos)]
                    rsid = "rs" + str(raw_rs) 
                else:
                    continue

                chrom, pos = config["rsid_to_pos"][raw_rs]

            out_data.extend([rsid, chrom, pos])
 
            if "pvalue_index" in study:
                pvalue = data[int(study["pvalue_index"])-1]

                # Make sure the p-value is valid
                try:
                    pvalue = float(pvalue)
                except:
                    continue

                if pvalue < 0:
                    continue
                if pvalue > 1:
                    continue

                out_data.append(pvalue)

            elif "neg_log_pvalue_index" in study:
                pvalue = data[int(study["neg_log_pvalue_index"])-1]

                # Make sure the p-value is valid
                try:
                    pvalue = 10 ** -1*float(pvalue)
                except:
                    continue

                if pvalue < 0:
                    continue
                if pvalue > 1:
                    continue

                out_data.append(pvalue)

            elif "log_pvalue_index" in study:
                pvalue = data[int(study["log_pvalue_index"])-1]

                # Make sure the p-value is valid
                try:
                    pvalue = 10 ** float(pvalue)
                except:
                    continue

                if pvalue < 0:
                    continue
                if pvalue > 1:
                    continue

                out_data.append(pvalue)

            if "effect_index" in study:
                beta = data[int(study["effect_index"])-1]
                out_data.append(beta)

            if "zscore_index" in study:
                zscore = data[int(study["zscore_index"])-1]
                out_data.append(zscore)

            if "tstat_index" in study:
                tstat = data[int(study["tstat_index"])-1]
                out_data.append(tstat)

            if "or_index" in study:
                odds_r = data[int(study["or_index"])-1]
                out_data.append(odds_r)

            if "se_index" in study:
                se = data[int(study["se_index"])-1]
                out_data.append(se)

            if "effect_allele_index" in study:
                ea = data[int(study["effect_allele_index"])-1]
                out_data.append(ea.upper())

            if "non_effect_allele_index" in study:
                nea = data[int(study["non_effect_allele_index"])-1]
                out_data.append(nea.upper())

            if "effect_allele_freq_index" in study:
                eaf = data[int(study["effect_allele_freq_index"])-1]
                out_data.append(eaf)

            if "direction_index" in study:
                if "effect_index" in study and int(study["direction_index"]) == int(study["effect_index"]):
                    try:
                        beta = float(beta)
                        direction = "+" if beta > 0 else "-"
                    except:
                        direction = ""

                elif "zscore_index" in study and int(study["direction_index"]) == int(study["zscore_index"]):
                
                    try:
                        zscore = float(zscore)
                        direction = "+" if zscore > 0 else "-"
                    except:
                        direction = ""

                elif "tstat_index" in study and int(study["direction_index"]) == int(study["tstat_index"]):
                    try:
                        tstat = float(tstat)
                        direction = "+" if tstat > 0 else "-"
                    except:
                        direction = ""
                
                elif "or_index" in study and int(study["direction_index"]) == int(study["or_index"]):
                    try:
                        odds_r = float(odds_r)
                        direction = "+" if odds_r > 1 else "-"
                    except:
                        direction = ""

                else:
                    direction = data[int(study["direction_index"]) - 1]

                out_data.append(direction)

            out_line = "\t".join([str(s) for s in out_data]) + "\n"

            w.write(out_line)

# Auto-determine the genome build of a GWAS by coordinates
def get_source_build(study, config, iters = 100000):

    scores = {}

    trait = study["traits"].keys()[0]

    if "multi_column" in study:

        # Avoid modifying the original object!
        study_specs = copy.deepcopy(study)
        study = study_specs

        file_chunks = study["multi_column"]
        for attribute in study["traits"][trait]:
            study[attribute] = study["traits"][trait][attribute] 
    else:
        file_chunks = study["traits"][trait]

    file_chunk = file_chunks[0]

    # Glob out traits with wildcards in filename
    unglobbed_filename = "/".join([config["input_base_dir"], study["study_info"], file_chunk])
    print unglobbed_filename
    glob_files = glob.glob(unglobbed_filename)

    # Just take the first file for getting the genome build
    in_file = glob_files[0] 
    
    # Determine if gzip format
    if in_file.endswith(".gz"):
        open_fct = gzip.open
    else:
        open_fct = open

    with open_fct(in_file) as f:
        
        # Skip a line if there's a header; we don't need it
        if "no_header" not in study or study["no_header"] == "False":
            f.readline()

        for build in config["pos_to_rsid"]:
            scores[build] = 0
        for i in xrange(iters): 
            line = f.readline()
 
            data = line.strip().split(study["delimiter"])

            chrom = data[int(study["chr_index"]) - 1]
            snp_pos = data[int(study["snp_pos_index"]) - 1]

            if study["chr_index"] == study["snp_pos_index"]:
                chrom = chrom.split(study["snp_split_char"])[0]
                snp_pos = snp_pos.split(study["snp_split_char"])[1]

            # Get rid of the line if there's no chrom or pos
            if chrom.strip() == "" or snp_pos.strip() == "":
                continue

            chrom = chrom.replace('chr', '')
            try:
                chrom = int(chrom)
            except:
                continue
            snp_pos = int(float(snp_pos)) 
 
            if (chrom, snp_pos) in config["pos_to_rsid"][build]:
                scores[build] += 1

    print scores
    return sorted(scores.items(), reverse=True, key=operator.itemgetter(1))[0][0]
                    
            
def load_rsid_to_pos_hg19(config):
    return load_rsid_to_pos("dbsnp/sorted_1kg_matched_hg19_snp150.txt.gz", config)

def load_rsid_to_pos_hg38(config):
    return load_rsid_to_pos("dbsnp/sorted_1kg_matched_hg38_snp150.txt.gz", config)

def load_rsid_to_pos(rsid_to_pos_file, config):
    rsid_to_pos = {}
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
            if (not config["debug"] is None) and line_no > config["debug"]:
                break

        return rsid_to_pos

def load_pos_to_rsid_all(config):
    pos_to_rsid = {}
    pos_to_rsid["hg18"] = load_pos_to_rsid(hg18_dbsnp, config)
    pos_to_rsid["hg19"] = load_pos_to_rsid(hg19_dbsnp, config)
    pos_to_rsid["hg38"] = load_pos_to_rsid(hg38_dbsnp, config)
    return pos_to_rsid

def load_pos_to_rsid(pos_to_rsid_file, config):
    pos_to_rsid = {}
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
            if (not config["debug"] is None) and line_no > config["debug"]:
                break

    return pos_to_rsid

def is_int(s):
    try:
        int(float(s))
        return True
    except:
        return False

def load_config(cwd):
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

    # create error log file and clear it
    if not "error_log" in config:
        config["error_log"] = "output/error-log.txt" 
        if not config["error_log"].startswith("/"):
            config["error_log"] = cwd + "/" + config["error_log"]

    if not "debug" in config:
        config["debug"] = None

    try:
        os.remove(config["error_log"])
    except:
        # Error log didn't exist yet anyway
        pass

    return config

# Specify the location of indexed dbsnp files
def set_default_dbsnp(settings):
    settings = copy.deepcopy(settings)
    settings["dbsnp_files"] = \
    {
            "pos_to_rsid":
            {
                "hg18": "dbsnp/sorted_1kg_matched_hg18_snp150.txt.gz",
                "hg19": "dbsnp/sorted_1kg_matched_hg19_snp150.txt.gz",
                "hg38": "dbsnp/sorted_1kg_matched_hg38_snp150.txt.gz"
            },
            "rsid_to_pos":
            {
                "hg19": "",
                "hg38": ""
            }
    }
    return settings



if __name__ == "__main__":
    main()
