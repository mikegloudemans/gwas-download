import gzip
import subprocess

all_rsids = set([])
for i in range(1,23):
    print i
    l = 0
    with gzip.open("/mnt/lab_data/montgomery/shared/1KG/ALL.chr{0}.phase3_shapeit2_mvncall_integrated_v5a.20130502.genotypes.vcf.gz".format(i)) as f:
        for line in f:
            l += 1
            if l % 1000000 == 0:
                print l
            if line.startswith("#"):
                continue
            else:
                all_rsids.add(line.split()[2])

# Rewrite the hg19 file
with gzip.open("/users/mgloud/projects/gwas/data/sorted_hg19_snp150.txt.gz") as f:
    with gzip.open("/users/mgloud/projects/gwas/data/sorted_1kg_matched_hg19_snp150.txt.gz", "wb") as w:
        l = 0
        for line in f:
            l += 1
            if l % 100000 == 0:
                print l
            if line.strip().split()[2] in all_rsids:
                w.write(line)

# Rewrite the hg38 file
with gzip.open("/users/mgloud/projects/gwas/data/sorted_hg38_snp150.txt.gz") as f:
    with gzip.open("/users/mgloud/projects/gwas/data/sorted_1kg_matched_hg38_snp150.txt.gz", "wb") as w:
        for line in f:
            if l
            ine.strip().split()[2] in all_rsids:
                w.write(line)
