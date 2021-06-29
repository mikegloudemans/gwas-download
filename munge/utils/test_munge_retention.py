import json
import subprocess
munge_menu = "munge_menu_queue.config"
	
start_study = ""

with open(munge_menu) as f:
	config = json.load(f)

#ready = False
ready = True
for study in config["studies"]:
	if study["study_info"] == start_study:
		ready = True

	if not ready:
		continue
	for trait in study["traits"]:

		if "multi_column" in study:
			num_parts = len(study["multi_column"])
		else:
			num_parts = len(study["traits"][trait])

		start_count = 0
		for i in range(num_parts):
			if "multi_column" in study:
				start = config["input_base_dir"] + study["study_info"] + "/" + study["multi_column"][i]
			else:
				start = config["input_base_dir"] + study["study_info"] + "/" + study["traits"][trait][i]
			#finish = "/oak/stanford/groups/smontgom/mgloud/projects/gwas-download/gwas-download/munge/munged/2021-complete-compendium/hg38/{0}/{1}.txt.gz".format(study["study_info"], trait)
			finish = "/oak/stanford/groups/smontgom/mgloud/projects/gwas-download/gwas-download/munge/munged/data-munged/2021-complete-compendium/hg38/{0}/{1}.txt.gz".format(study["study_info"], trait)

			if start.endswith(".gz"):
				start_count += int(subprocess.run(f"zcat {start} 2> /dev/null | wc -l", capture_output=True, shell=True).stdout.decode("utf-8").strip().split()[0])
			else:
				start_count += int(subprocess.run(f"wc -l {start}".split(), capture_output=True).stdout.decode("utf-8").strip().split()[0])
	 
		finish_count = int(subprocess.run(f"zcat {finish} 2> /dev/null | wc -l", capture_output=True, shell=True).stdout.decode("utf-8").strip())
		print(f'''{study["study_info"]}\t{trait}\t{start_count}\t{finish_count}''')
