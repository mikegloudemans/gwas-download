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

hg18_dbsnp = "dbsnp/sorted_1kg_matched_hg18_snp150.txt.gz"
hg19_dbsnp = "dbsnp/sorted_1kg_matched_hg19_snp150.txt.gz"
hg38_dbsnp = "dbsnp/sorted_1kg_matched_hg38_snp150.txt.gz"

# Set debug to an integer if you only want to load a limited number of
# rows from the input file, for debugging purposes.
debug = None
#debug = 500000

# TODO: Integrate this more cleanly

# Where to store tmp files
# tmp_file = "/users/mgloud/projects/gwas-download/munge/tmp/unsorted_GWAS.tmp"
tmp_file = "tmp/unsorted_GWAS.tmp.debug2"


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

# Files for which to debug munging process
shortlist = \
[
	"Uterine-Fibroids_Gallagher_2019"
	# "Multiple-Traits_Wojcik_2019",
	#"Ovarian-Cancer_Lawrenson_2019",
	#"Ovarian-Cancer_Phelan_2017",
	#"Lupus_Langefeld_2017",
	# "Facial-Shape_Xiong_2019"; multi-trait; add this soon
	#"Breast-Cancer_Michailidou_2015", some problem still
	#"Alcohol-Dependence_Walters_2018"
	#"Ishigaki"
]

def main():

    #subprocess.check_call("rm -f output/error-log.txt", shell=True)

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

    # Load all mappings of position to rsid
    pos_to_rsid = load_pos_to_rsid_all()

    # Just output genome builds separately, since they have to produce 
    # separate files. It's tempting to think we'd just put chrom and pos
    # for all genome builds in the same file, but then this fails when it's
    # time to sort and tabix.
    for genome in genome_build:
        if genome == "hg38":
            rsid_to_pos = load_rsid_to_pos_hg38()
        elif genome == "hg19":
            rsid_to_pos = load_rsid_to_pos_hg19()
        else:
            raise Exception("Invalid genome build: %s" % genome_build)

        active = True

        # Munge every study from the config list, one at a time
        for study in config["studies"]:

            #if study["study_info"] not in shortlist:
            #    continue

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

                # Parse each input trait separately, and
                # keep them in separate files for convenience.
                for trait in sorted(study["traits"].keys()):

                    print "Current trait:", trait

                    # Some studies have several p-values for different traits, listed
                    # in the same file. For these ones, we need to do something slightly different
                    if "multi_column" in study:
			# TODO: Not great to be modifying the original study object here. The
			# current fix is to delete all these attributes before moving on to the
			# next trait. But it would be good to come up with something better.
			# TODO: fix the whole "multi-column" specification; there's too much
			# overloading of field names here
                        file_chunks = study["multi_column"]
			for attribute in study["traits"][trait]:
				study[attribute] = study["traits"][trait][attribute] 
                    else:
                        file_chunks = study["traits"][trait]

                    # Some files come in multiple chunks; if not, we can still handle them this way
                    all_data = []
                    for file_chunk in file_chunks:
                        unglobbed_filename = "/".join([config["input_base_dir"], study["study_info"], file_chunk])

                        # Glob out traits with wildcards in filename
                        glob_files = glob.glob(unglobbed_filename)
                        for filename in glob_files:
                            
			    # Determine if gzip format
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

		    print "Before:"
                    print data.head(5)

                    # Note key SNP attributes
                    if "effect_index" in study:
                        data.rename(columns={data.keys()[int(study["effect_index"]) - 1]:'beta'}, inplace = True)
                    if "zscore_index" in study:
                        data.rename(columns={data.keys()[int(study["zscore_index"]) - 1]:'zscore'}, inplace = True)
                    if "tstat_index" in study:
                        data.rename(columns={data.keys()[int(study["tstat_index"]) - 1]:'tstat'}, inplace = True)
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

                        # Is the direction encoded within an effect size?
                        elif ("zscore_index" in study and study["direction_index"] == study["zscore_index"]) or \
                                ("tstat_index" in study and study["direction_index"] == study["tstat_index"]):
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

		    # Transform log p-value to p-value if needed
		    if "log_pvalue_index" in study:
                        data.rename(columns={data.keys()[int(study["log_pvalue_index"]) - 1]:'pvalue'}, inplace = True)
		        study["pvalue_index"] = study["log_pvalue_index"]
			def log_to_p(x):
				try:
					return(10**(float(x)))
				except:
					return None
                        data['pvalue'] = data['pvalue'].apply(log_to_p)

		    # Transform log p-value to p-value if needed
		    if "neg_log_pvalue_index" in study:
                        data.rename(columns={data.keys()[int(study["neg_log_pvalue_index"]) - 1]:'pvalue'}, inplace = True)
		        study["pvalue_index"] = study["neg_log_pvalue_index"]
			def log_to_p(x):
				try:
					return(10**(-1*float(x)))
				except:
					return None
                        data['pvalue'] = data['pvalue'].apply(log_to_p)


                    if "rsid_index" in study and study["rsid_index"] != "-1":
                        # Join with rsid table to get indices for each column
                       
                        data.rename(columns={data.keys()[int(study["rsid_index"]) - 1]:'rsid'}, inplace = True)
                        data["rsid"] = data["rsid"].str.lower()
                        data.rename(columns={data.keys()[int(study["pvalue_index"]) - 1]:'pvalue'}, inplace = True)

                        if "rsid_split" in study:
                            def rsid_split(x):
                                return x.split(study["rsid_split"]["splitter"])[int(study["rsid_split"]["index"])-1]

                            data['rsid'] = data['rsid'].apply(rsid_split)
                        
                        # Rename columns with "snp_pos" or "chr" names with "old" suffix
                        if "snp_pos" in data.columns.values:
                            data = data.rename(columns = {"snp_pos": "snp_pos_old"})
                        if "chr" in data.columns.values:
                            data = data.rename(columns = {"chr": "chr_old"})

                        new_data = data

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

                        data = data[~(pd.isnull(data['chr']))]
                        data = data[~(pd.isnull(data['snp_pos']))]
                        valid_chroms = [str(i+1) for i in range(22)]
                        data['chr'] = data['chr'].str.replace('chr', '')
                        data['snp_pos'] = data['snp_pos'].astype(float).astype(int)
                        data = data[(data['chr'].astype(str).isin(valid_chroms))]
        
                        # Throw away the ones with rsids not found
                        if "rsid" in data.columns.values:
                            data = data.rename(columns = {"rsid": "rsid_old"})
                      
			# Automatically detect the build of the source genome
			#
			# Since the original study object is being modified, this change will persist across other
			# traits in the same study. This is good in the sense that it avoids having to re-check the
			# source build many times, but it might have undesirable side effects; consider making this safer.
			# It also assumes same source build for all files in a study, which is probably a reasonable
			# default assumption.
			if "source_build" not in study:
				study["source_build"] = get_source_build(data[['chr', 'snp_pos']], pos_to_rsid)
 
                        # First, map chr and pos to their rsids
                        rsid_column = []
                        for i in range(data.shape[0]):
                            if (int(data['chr'].iloc[i]), int(data['snp_pos'].iloc[i])) in pos_to_rsid[study["source_build"]]:
                                rsid_column.append("rs" + str(pos_to_rsid[study["source_build"]][(int(data['chr'].iloc[i]), int(data['snp_pos'].iloc[i]))]))
                            else:
                                rsid_column.append("NA")
                        data['rsid'] = rsid_column
                        new_data = data
                    
                    else:
                        print study["study_info"], "not properly specified in JSON config file."
                        # TODO: print to a log file that the JSON was not properly
                        # specified for this file.
                        continue
                   
                    # Once we've gotten an rsid, now get the chrom and position
		    # for this version of the genome

		    # Apply function that gets chr and snp_pos for all rsids, from the dict
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
		    new_data["chr"] = data["rsid"].apply(get_chr)
		    new_data["snp_pos"] = data["rsid"].apply(get_pos)
	    
		    # Throw away the ones with rsids not found
		    new_data = new_data[~(new_data['chr'] == -1)]
		    new_data = new_data[~(new_data['snp_pos'] == -1)]

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
                    if "zscore" in cols:
                        cols.remove("zscore")
                    if "tstat" in cols:
                        cols.remove("tstat")
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
                    if "zscore_index" in study:
                        prefix.append("zscore")
                    if "tstat_index" in study:
                        prefix.append("tstat")
                    if "n_cases_index" in study:
                        prefix.append("n_cases")
                    if "n_controls_index" in study:
                        prefix.append("n_controls")
                    if "n_total_index" in study:
                        prefix.append("n_total")
                    if "effect_allele_freq_index" in study:
                        prefix.append("effect_allele_freq")

                    cols = ["rsid", "chr", "snp_pos", "pvalue"] + prefix + cols
                    
                    new_data = new_data[cols]

		    # 
		    print "After:"
                    print new_data.head(3)

                    # Write header
                    with open(tmp_file, "w") as w:
                        new_data.to_csv(w, sep="\t", index=False, float_format='%.3E')


                    # Sort the new table and write it to its final destination file
                    if "output_file" in study:
                        # This is only used in cases where we want to output multiple files under a single
                        # study's directory. This would usually happen if the study contains
                        # input files with different formats.
                        subprocess.call("mkdir -p {0}/{1}/{2}".format(config["output_base_dir"], genome, study["output_file"]), shell=True)
                        out_file = "{0}/{1}/{2}/{3}.txt".format(config["output_base_dir"], genome, study["output_file"], trait)
                    else:
                        subprocess.call("mkdir -p {0}/{1}/{2}".format(config["output_base_dir"], genome, study["study_info"]), shell=True)
                        out_file = "{0}/{1}/{2}/{3}.txt".format(config["output_base_dir"], genome, study["study_info"], trait)
                    # TODO: This is unsafe. Fix it using Popen
                    # TODO: This also probably isn't very efficient right now, so fix that if possible
                    subprocess.check_call("head -n 1 {1} > {0}".format(out_file, tmp_file), shell=True)
                    
                    subprocess.check_call("tail -n +2 {1} | sort -k2,2 -k3,3n >> {0}".format(out_file, tmp_file), shell=True) 

                    # Bgzip the output file
                    subprocess.check_call(["bgzip", "-f", out_file])

                    # Tabix the output file
                    subprocess.check_call(["tabix", "-f", "-s", "2", "-b", "3", "-e", "3", "-S", "1", out_file+".gz"])

                    del new_data

		    # If it's a multi-trait file, 
                    # remove attributes from study that were added only for this particular trait
		    # This avoids potential bugs that might arise from attributes being carried
		    # over to the next trait.
                    if "multi_column" in study:
			for attribute in study["traits"][trait]:
				del study[attribute]


            except Exception as e:
                # Log problems to an error file, then move on
                subprocess.check_call("mkdir -p output", shell=True)
                with open("output/error-log2.txt", "a") as a:
                    a.write(study["study_info"] + "\n")

                traceback.print_exc(file=sys.stdout)
                #sys.exit() # temporary
                #error = str(e)
                #error = error + "\t" + traceback.format_exc().replace("\n", "NEWLINE").replace("\t", "TAB")

# Auto-determine the genome build of a GWAS by coordinates
def get_source_build(data, pos_to_rsid, iters = 100000):
	scores = {}
	random.seed(0)
	for build in pos_to_rsid:
		scores[build] = 0
		for i in xrange(iters): 
			r = random.randrange(data.shape[0])
			snp = data.iloc[r,:]
			chrom = int(snp['chr'])
			snp_pos = int(snp['snp_pos'])
			if (chrom, snp_pos) in pos_to_rsid[build]:
				scores[build] += 1
	print scores
	return sorted(scores.items(), reverse=True, key=operator.itemgetter(1))[0][0]
			
		
def load_rsid_to_pos_hg19():
	return load_rsid_to_pos("dbsnp/sorted_1kg_matched_hg19_snp150.txt.gz")

def load_rsid_to_pos_hg38():
	return load_rsid_to_pos("dbsnp/sorted_1kg_matched_hg38_snp150.txt.gz")

def load_rsid_to_pos(rsid_to_pos_file):
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
            if (not debug is None) and line_no > debug:
                break

        return rsid_to_pos

def load_pos_to_rsid_all():
	pos_to_rsid = {}
	pos_to_rsid["hg18"] = load_pos_to_rsid(hg18_dbsnp)
	pos_to_rsid["hg19"] = load_pos_to_rsid(hg19_dbsnp)
	pos_to_rsid["hg38"] = load_pos_to_rsid(hg38_dbsnp)
	return pos_to_rsid

def load_pos_to_rsid(pos_to_rsid_file):
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
            if (not debug is None) and line_no > debug:
                break

    return pos_to_rsid

if __name__ == "__main__":
    main()
