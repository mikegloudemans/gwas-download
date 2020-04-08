# Parse the (rare) GWAS file downloaded in the format of Rdata.
load("Autism_Massrali_2019/scdclogGWAS.RData")
write.table(scdc2, "Autism_Massrali_2019/scdclogGWAS.txt", col.names=TRUE, row.names=FALSE, quote=FALSE, sep="\t")
