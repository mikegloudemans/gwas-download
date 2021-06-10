import glob
import gzip
import operator

def main():
	#with open("gwas_manifest.txt", "w") as w:

	#	w.write("study\tn_snps\thits_1e-5\thits_5e-8\thas_direction\n")

	ready = False

	for gwas in sorted(glob.glob("munged/2021-complete-compendium/hg38/*/*.gz")):

		if "Multiple-Traits_Gurdasani_2019" in gwas:
			ready = True

		if not ready:
			continue

		try:
			total, soft_hits, has_direction = snps_by_threshold(gwas, 1e-5, 500000)
			total, hard_hits, has_direction = snps_by_threshold(gwas, 5e-8, 500000)
			print gwas
			print total, soft_hits, hard_hits, has_direction

			with open("gwas_manifest.txt", "a") as a:
				a.write("{0}\t{1}\t{2}\t{3}\t{4}\n".format(gwas, total, soft_hits, hard_hits, has_direction))
		except:
			pass

def snps_by_threshold(source_file, p_threshold, window):

	snp_counts = 0
	hit_counts = 0

	with gzip.open(source_file) as f:
		header = f.readline().strip().split()
		header = [h.lower() for h in header]

		pval_index = header.index("pvalue")
		chr_index = header.index("chr")
		snp_pos_index = header.index("snp_pos")

		has_direction = "direction" in header

		all_snps = []

		for line in f:
			data = line.strip().split("\t")
			try:
				pvalue = float(data[pval_index])
			except:
				continue
			snp_counts += 1
			chr = data[chr_index]
			pos = int(data[snp_pos_index])
			if pvalue > p_threshold:
				continue

			all_snps.append((chr, pos, pvalue))
	
	# For now, include only autosomal SNPs.
	filtered = []
	for s in all_snps:
		if "chr" in str(s[0]):
			filtered.append((s[0][3:], s[1], s[2]))
		else:
			filtered.append((s[0], s[1], s[2]))

	all_snps = sorted(filtered, key=operator.itemgetter(2)) 

	# Go through the list of SNPs in order, adding the ones
	# passing our criteria.
	snps_to_test = {}
	for snp in all_snps:

		# For now, ignore a SNP if it's in the MHC region -- this
		# would require alternative methods.
		if (snp[0] == "6") and snp[1] > 25000000 and snp[1] < 35000000:
				continue

		# Before adding a SNP, make sure it's not right next
		# to another SNP that we've already selected.
		
		skip = False
		if snp[0] in snps_to_test:
			for kept_snp in snps_to_test[snp[0]]:
					if abs(kept_snp[1] - snp[1]) < window:
							skip = True
							break

		if not skip:
			if snp[0] not in snps_to_test:
				snps_to_test[snp[0]] = []
			snps_to_test[snp[0]].append(snp)
			
	hit_counts = sum([len(snps_to_test[i]) for i in snps_to_test])

	return (snp_counts, hit_counts, has_direction)

if __name__ == "__main__":
	main()
