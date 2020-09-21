# Make a file that contains sample sizes for the GWAS
# files, by combining with data from GWAS ATLAS.
#
# NOTE: Not all GWAS will appear in the GWAS ATLAS; others
# must either be entered manually, estimated, or left out
# of analyses requiring sample sizes.
# 
# NOTE: Some studies have more than one measured trait with 
# different sample sizes, in these cases we just take the 
# sample size of the largest trait even though this might not
# be appropriate in some cases
#
# The motto of this script is "better than nothing"
#

gwas_atlas_file = "data/gwasATLAS_v20191115.txt"
out_file = "output/gwas_sample_sizes.txt"

# Map PMIDs to sample sizes
sample_sizes = {}
with open(gwas_atlas_file) as f:
    f.readline()
    for line in f:
        data = line.strip().split("\t")
        pmid = data[1]
        n_cases = data[12]
        n_controls = data[13]
        n_total = data[14]

        if pmid not in sample_sizes:
            sample_sizes[pmid] = {"n_cases": n_cases, "n_controls": n_controls, "n_total": n_total}
        else:
            if sample_sizes[pmid]["n_total"] == "":
                sample_sizes[pmid]["n_cases"] = n_cases
                sample_sizes[pmid]["n_controls"] = n_controls
                sample_sizes[pmid]["n_total"] = n_total
            elif int(sample_sizes[pmid]["n_total"]) < int(sample_sizes[pmid]["n_total"]):
                sample_sizes[pmid]["n_cases"] = n_cases
                sample_sizes[pmid]["n_controls"] = n_controls
                sample_sizes[pmid]["n_total"] = n_total

# Map GWAS studies in our catalog to PMIDs
with open("../gwas_downloads.sh") as f:
    text = f.read()
    # A line in this file separates chunks
    chunks = text.split("\n\n")

# Check each chunk to see if we can attack a trait folder to a PMID
pmids = {}
for chunk in chunks:
    lines = chunk.split("\n")

    directory = ""
    pmid = ""

    # Get the name of the directory
    for line in lines:
        if "mkdir" in line:
            directory = line.split()[-1]

    # Get the PMID
    # There are few different formats this could be in
    
    # Check for "PMID" tag
    for line in lines:
        if "PMID:" in line:
            pmid = line.split("PMID:")[1].strip().split()[0]
    
    # Check for https://www.ncbi.nlm.nih.gov/pubmed/ format
    for line in lines:
        if "/pubmed/" in line:
            pmid = line.split("/pubmed/")[1].split("?")[0].strip()

    if directory != "" and pmid != "": 
        pmids[directory] = pmid

# Output metadata for each file in our catalog
with open(out_file, "w") as w:
    w.write("directory\tpmid\tn_total\tn_cases\tn_controls\n")
    for d in sorted(pmids.keys()):
        if pmids[d] in sample_sizes:
            samp = sample_sizes[pmids[d]]
            w.write("{0}\t{1}\t{2}\t{3}\t{4}\n".format(d, pmids[d], samp["n_total"], samp["n_cases"], samp["n_controls"]))
        else:
            w.write("{0}\t{1}\t\t\t\n".format(d, pmids[d]))




