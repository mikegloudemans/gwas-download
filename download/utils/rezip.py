import glob
import subprocess
import os
import shutil
import sys
import xlsx_to_csv

#
# Unzip all folders with strange zip formats, and re-zip all resulting or non-zipped data files
# with the gzip format instead, which is compatible with downstream munging steps.
#
# This is the next step to run after the gwas_downloads.sh file and will be necessary to 
# put files in the expected format for munging.
#
# Some files with unusual formats are processed on a file-specific basis.
#

#
# NOTE: This script is meant to be run all in one go; unfortunately this means
# that for now at least, if something goes wrong in the middle of it, it'll have to
# process all the files again. Let me know if you have an easy fix for this.
# 
# If you do run into an issue and you're sure that everything's worked properly up until
# a certain file, a quick fix is to add an if clause to the beginning of the main for loop
# that skips over all files until that file is reached alphabetically (since the files will
# always be processed in the same alphabetical order.
#

# Names of known files that should not be parsed
blacklist = ["._Table-S3.xlsx", "._sarcoidosis_Lofgren_syndrome_summary_hg18.xlsx"]

def main():
	# Iterate through all bottom-level files
	last = ""
	all_files = []

	# Rename directories with spaces
        rename_space_folders()

        # Now get a list of all non-directory files
	for root, dirs, files in os.walk('.'):
		for f in files:
			all_files.append((root,f))

        #active = False
	all_files = sorted(all_files)
	for af in all_files:
		root = af[0]
		f = af[1]
		p = os.path.join(root, f)

                #if "Sarcoidosis_Rivera_2016" in p:
                #    active = True
                #    continue
                #if not active:
                #    continue

		# Fix files with bad names
		p = fix_file(p)

		if len(p.split("/")) > 1 and p.split("/")[1].strip() != last:
			print p.split("/")[1]
			last = p.split("/")[1].strip()

                '''
		# Handle the ones with .zip format
		if ".zip" in p:
			subprocess.call("unzip -u {0} -d {1} | tee -a log.txt".format(p, root), shell=True)	

		# Handle the ones with .tar format or .tar.gz format
		if ".tar" in p or ".tgz" in p:	
			subprocess.call("tar -xvf {0} -C {1} | tee -a log.txt".format(p, root), shell=True)	

		# For the ones with gz format, make sure they're actually gz format
		# (accessible with zcat) but we'll keep them in this format
		# since munge module can handle this fine.	
		if ".gz" in p:	
			if not "gzip" in subprocess.check_output("file {0}".format(p), shell=True):
				print p, "was not actually gzipped."

                    

		# Take care of rar files
		if ".rar" in p:
			subprocess.call("unrar -y e {0}".format(p), shell=True)
                if ".xlsx" in p and not f in blacklist:
                        print p
                        xlsx_to_csv.csv_from_excel(p)
                '''
                
                # If bzip2'ed
                if ".bz2" in p:
                        print p
                        subprocess.call("bzcat {0} > {1}".format(p, p.replace("bz2", "txt")), shell=True)

        # Unzip nested zips
        #unzip_nested_zips()

	# Rename directories with spaces, in case any were extracted
        #rename_space_folders()

	# gzip all files that aren't already zipped
	#'''
	gzip_leftovers()

def gzip_leftovers():

	all_files = []
	for root, dirs, files in os.walk('.'):

		for f in files:
			all_files.append((root,f))

	all_files = sorted(all_files)
	for af in all_files:
		root = af[0]
		f = af[1]

                # This should never happen, so if it does then something already messed up earlier
		if " " in root:
			print "problem-folder", root
                        assert False

		p = os.path.join(root, f)

		p = fix_file(p)

		zip_list = [".txt", ".csv", ".linear", ".logistic", ".fl", ".tbl", ".out", ".bp", ".tab", ".ma", ".raw", ".assoc"]
		for zl in zip_list:
			if p.endswith(zl):
				print "zipping", p
				subprocess.check_call("gzip -f {0}".format(p), shell=True)

def unzip_nested_zips():
    # Some zip folders will be unzipped, only to find ANOTHER zipped folder inside of them...
    # I don't know a clean way to handle this programmatically, so I'm just manually
    # handling these exceptions for now.
    
    subprocess.call("unrar -y x Aggression_Pappa_2015/aggression_METAL_RESULTS.rar Aggression_Pappa_2015", shell=True)
    subprocess.call("unrar -y x Longevity_Fortney_2015/FortneyiGWAS_P.rar Longevity_Fortney_2015", shell=True)
    subprocess.call("tar -xvf Central-Corneal-Thickness_Gao_2016/GWAS_results.tar.gz", shell=True)
    subprocess.call("unzip -u Cytokine-Network-Levels_Nath_2019/MultivariateGWAS_CytokineNetwork_SummaryStatistics_GWASCatalog.zip Cytokine-Network-Levels_Nath_2019", shell=True)

    # Other things fixed here: remove the dreaded  carriage return
    subprocess.call("cat Cluster-Headache_Bacchelli_2016/Table_e3.txt | sed s/^M/\\\\n/g > Cluster-Headache_Bacchelli_2016/sumstats.txt", shell=True)
    | sed s/^M/\\n/g

# Fix files that are named badly
def fix_file(name):
	p = name
	# Remove invalid characters from filenames
	if " " in p:
		shutil.move(p, p.replace(" ", "_"))
		p = p.replace(" ", "_")
	if "(" in p:
		shutil.move(p, p.replace("(", ""))
		p = p.replace("(", "")
	if ")" in p:
		shutil.move(p, p.replace(")", ""))
		p = p.replace(")", "")

        if "?dl=0" in p:
            shutil.move(p, p.replace("?dl=0", ""))
            p = p.replace("?dl=0", "")
        if "?dl=1" in p:
            shutil.move(p, p.replace("?dl=1", ""))
            p = p.replace("?dl=1", "")
        if "?download=0" in p:
            shutil.move(p, p.replace("?download=0", ""))
            p = p.replace("?download=0", "")
        if "?download=1" in p:
            shutil.move(p, p.replace("?download=1", ""))
            p = p.replace("?download=1", "")


	# Now handle the troublemaker files...

	# Erectile-Dysfunction_Bovijn
	# This file isn't actually gzipped
	if "ED_AJHG_Bovijn_et_al_2018.gz" in p:
		shutil.move(p, p.replace(".gz", ".txt"))
		p = p.replace(".gz", ".txt")

	# Asthma_Daya
	# This file is empty; I don't know why.
	# Just mark it for now
	if "AllCohorts_associationanalysis_summaryStatistics/GRAADII_chr1.txt.gz" in p:
		shutil.move(p, p.replace(".gz", ".empty"))
		p = p.replace(".gz", ".empty")

        # Not only does this file end in ".gzip" instead of ".gz", but it's not even
        # gzipped at all
        if ".gzip" in p and "BMI-Exome_Turcot_2017" in p:
                shutil.move(p, p.replace(".gzip", ".txt"))


	return(p)

# Rename directories with spaces
def rename_space_folders():
	for root, dirs, files in os.walk('.'):
		for d in dirs:
			p = os.path.join(root, d)
			if " " in d:
				print d
				shutil.move(p, p.replace(" ", "_"))
	

if __name__ == "__main__":
	main()
