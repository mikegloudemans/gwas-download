import glob
import subprocess
import os
import shutil
import sys

def main():
	# Iterate through all bottom-level files
	last = ""
	all_files = []
	for root, dirs, files in os.walk('.'):
		for f in files:
			all_files.append((root,f))

	all_files = sorted(all_files)
	for af in all_files:
		root = af[0]
		f = af[1]
		p = os.path.join(root, f)

		# Fix files with bad names
		p = fix_file(p)

		if len(p.split("/")) > 1 and p.split("/")[1].strip() != last:
			print p.split("/")[1]
			last = p.split("/")[1].strip()

		# Handle the ones with .zip format
		if ".zip" in p:
			subprocess.call("unzip -u {0} -d {1} | tee -a log.txt".format(p, root), shell=True)	

		# Handle the ones with .tar format or .tar.gz format
		if ".tar" in p:	
			subprocess.call("tar -xvf {0} -C {1} | tee -a log.txt".format(p, root), shell=True)	

		# For the ones with gz format, make sure they're actually gz format
		# (accessible with zcat) but we'll keep them in this format
		# since munge module can handle this fine.	
		if ".gz" in p:	
			if not "gzip" in subprocess.check_output("file {0}".format(p), shell=True):
				print p, "not actually gzipped"

		# Take care of rar files
		if ".rar" in p:
			 subprocess.call("unrar e {0}".format(p), shell=True)

	# gzip all files that aren't already zipped
	gzip_leftovers()

def gzip_leftovers():
	for root, dirs, files in os.walk('.'):
		for f in files:
			all_files.append((root,f))

	all_files = sorted(all_files)
	for af in all_files:
		root = af[0]
		f = af[1]
		p = os.path.join(root, f)

		if p.endswith(".txt"):
			subprocess.check_call("gzip -f {0}".format(p), shell=True)

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

	return(p)


if __name__ == "__main__":
	main()
