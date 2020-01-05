head -n 1 gwas_pmids.txt
head -n 1 gwasATLAS_v20191115.txt
join -t $'\t' -1 2 -2 2 <(tail -n +2 gwas_pmids.txt | sort -k2,2) <(tail -n +2 gwasATLAS_v20191115.txt | sort -k2,2)

