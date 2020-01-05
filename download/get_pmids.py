# Pull PMIDs from the GWAS downloads script so that
# GWAS sumstats folders can be paired with the appropriate
# files. This depends on the GWAS download script following
# a few basic conventions:
# - pmid listed before "mkdir" command in one of the formats described in this script
# - folder specified using mkdir command
#
# PMID and mkdir command do not need to be directly adjacent, as long as they are not
# separated by other PMID or mkdir lines.
# 
with open("gwas_pmids.txt", "w") as w:
    w.write("study\tpmid\n")
    with open("gwas_downloads.sh") as f:
        last_pmid = None
        for line in f:
            if "/pubmed/" in line:
                # Example lines
                # https://www.ncbi.nlm.nih.gov/pubmed/25231870
                # https://www.ncbi.nlm.nih.gov/pubmed/25282103?dopt=Citation
                # https://www.ncbi.nlm.nih.gov/pubmed/?term=28800628
                last_pmid = line.strip().split("/pubmed/")[1].replace("?term=", "").replace("?dopt=Citation", "")
            if "PMID" in line:
                # Example line:
                # PMID: 22479202 PMCID: PMC3315470
                last_pmid = line.strip().split("PMID: ")[1].split()[0]
            if "mkdir" in line:
                # Example line:
                # mkdir -p Statin-Efficacy_Barber_2010
                study = line.strip().replace("-p", "").split()[1]
                if not last_pmid is None:
                    # We only associate one folder with each PMID. This avoids
                    # false pairings but also will miss some folders if there
                    # are more than one folder associated with same PMID. Need
                    # to go back and fix this.
                    w.write("{0}\t{1}\n".format(study, last_pmid))
                    last_pmid = None





