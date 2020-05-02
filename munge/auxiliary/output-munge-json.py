import os
import pprint
import copy

pp = pprint.PrettyPrinter(indent=5)

# Blood-Plasma-Glycome_Sharapov_2018
obj = {}
files = os.listdir("../../download/download-output/Blood-Plasma-Glycome_Sharapov_2018")
for f in files:
    obj[f.split(".")[0]] = f
#pp.pprint(obj)

# Blood-Protein-Biomarkers_Hillary_2019
obj = {}
files = os.listdir("../../download/download-output/Blood-Protein-Biomarkers_Hillary_2019")
for f in files:
    if f.endswith(".gz"):
        obj[f.split(".")[0]] = f
#pp.pprint(obj)

# Blood-Protein-Levels_Folkersen_2017/ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/FolkersenL_28369058_GCST009731/
obj = {}
for i in range(1,84):
    obj[str(i)] = "olinkGWAS_chr*_pheno{0}.txt.assoc.dosage.filtered.gz".format(i)
#pp.pprint(obj)


# Blood-Protein-Levels_Suhre_2017
obj = {}
files = os.listdir("../../download/download-output/Blood-Protein-Levels_Suhre_2017")
for f in files:
    if f.endswith("_one.out.gz"):
        obj[f.replace("_one.out.gz", "")] = f
# pp.pprint(obj)

# Blood-Protein-Levels_Sun_2018
files = os.listdir("../../download/download-output/Blood-Protein-Levels_Sun_2018/meta_filtered_final")
obj = {}
for f in files:
    obj[f] = "meta_filtered_final/{0}/{0}_chrom_*_meta_final_v1.tsv.gz".format(f)
# pp.pprint(obj)

# Exome-Cardiometabolic-Traits_Locke_2019
files = os.listdir("../../download/download-output/Exome-Cardiometabolic-Traits_Locke_2019/ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/LockeAE_31367044_GCST008673/")
obj={}
for f in files:
    obj[f.replace("LockeAE_prePMID_", "").replace("_sex-combined.gz", "")] = ["ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/LockeAE_31367044_GCST008673/" + f]
pp.pprint(obj)

# Inflammatory-Biomarkers_Hoglund_2019
files = os.listdir("../../download/download-output/Inflammatory-Biomarkers_Hoglund_2019/ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/HoglundJ_31727947_GCST009522/")
obj={}
for f in files:
    if f.startswith("HoglundJ_"):
        obj[f.replace(".txt.gz", "").replace("HoglundJ_", "").replace(".", "-")] = ["ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/HoglundJ_31727947_GCST009522/" + f]
#pp.pprint(obj)

# Metabolite-Levels_Chai_2019
files = os.listdir("../../download/download-output/Metabolite-Levels_Chai_2019/ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/ChaiJF_31628463_GCST009698/AC")
obj={}
for f in files:
    if f.startswith("SP2_"):
        obj[f.replace(".txt.gz", "").replace("SP2_", "").replace(".", "-")] = ["ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/ChaiJF_31628463_GCST009698/AC/" + f]
files = os.listdir("../../download/download-output/Metabolite-Levels_Chai_2019/ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/ChaiJF_31628463_GCST009698/AA")
for f in files:
    if f.startswith("SP2_"):
        obj[f.replace(".txt.gz", "").replace("SP2_", "").replace(".", "-")] = ["ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/ChaiJF_31628463_GCST009698/AA/" + f]    
files = os.listdir("../../download/download-output/Metabolite-Levels_Chai_2019/ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/ChaiJF_31628463_GCST009698/sphingolipids")
for f in files:
    if f.startswith("SP2_"):
        obj[f.replace(".txt.gz", "").replace("SP2_", "").replace(".", "-")] = ["ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/ChaiJF_31628463_GCST009698/sphingolipids/" + f]
#pp.pprint(obj)

files = os.listdir("../../download/download-output/Neuroimaging-Measurements_Elliott_2018/ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/ElliottLT_30305740_GCST006777")
obj={}
for f in files:
    if f.endswith(".txt.gz"):
        if f == "positions.txt.gz":
            continue
        obj["Trait"+f.replace(".txt.gz", "")] = ["ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/ElliottLT_30305740_GCST006777/" + f]
#pp.pprint(obj)

files = os.listdir("../../download/download-output/Chronic-Kidney-Disease-Urinary-Metabolite-Levels_Schlosser_2020/ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/SchlosserP_31959995_GCST009733")

obj={}
for f in files:
    if f.endswith("_upload_filtered.tsv.gz"):
        obj["Metabolite-"+f.replace("_upload_filtered.tsv.gz", "")] = ["ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/SchlosserP_31959995_GCST009733/" + f]
#pp.pprint(obj)

# Metabolite-Levels_Wood_2013
obj = {
	"Trait-T1":
	{
		"pvalue_index": "6",
		"direction_index": "4",
		"effect_index": "4",
		"se_index": "5"
	}
}

for i in range(1,94):
	obj["Trait-T{0}".format(i)] = copy.copy(obj["Trait-T1"])
	obj["Trait-T{0}".format(i)]["direction_index"] = str(int(obj["Trait-T1"]["direction_index"]) + 3*(i-1))
	obj["Trait-T{0}".format(i)]["effect_index"] = obj["Trait-T{0}".format(i)]["direction_index"]
	obj["Trait-T{0}".format(i)]["se_index"] = str(int(obj["Trait-T1"]["se_index"]) + 3*(i-1))
	obj["Trait-T{0}".format(i)]["pvalue_index"] = str(int(obj["Trait-T1"]["pvalue_index"]) + 3*(i-1))
pp.pprint(obj)
	
