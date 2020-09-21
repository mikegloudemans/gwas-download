pmids = read.table("gwas_pmids.txt", fill=TRUE, sep="\t", header=TRUE, stringsAsFactors=FALSE, quote=NULL)
atlas = read.table("gwasATLAS_v20191115.txt", fill=TRUE, sep="\t", header=TRUE, stringsAsFactors=FALSE, quote=NULL)
colnames(atlas)[2] = "pmid"

# Which ones from our data are not in GWAS Atlas?
ours_only = pmids[!(pmids$pmid %in% atlas$pmid),]
ours_grep_exp = paste(ours_only$pmid, collapse="|")
write.table(ours_only, "not_in_gwas_atlas.tsv", quote=FALSE, col.names = TRUE, row.names=FALSE, sep="\t")


combo = merge(pmids, atlas, by="pmid")

# Try to figure out which specific file each study corresponds to?
# Or just take the best of all of them?
combo$file_base = sapply(combo$File, function(x)
			 {
				s = strsplit(x, "/")
			 	s = return(s[[1]][length(s[[1]])])
			 })




