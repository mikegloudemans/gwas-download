#/bin/bash

# Mike Gloudemans
# Brunilda Balliu
# Boxiang Liu

######################################################

# http://journals.plos.org/plosgenetics/article?id=10.1371/journal.pgen.1002607
# Novel Loci for Adiponectin Levels and their Influence on Type 2 Diabetes and Metabolic Traits: A Multi-Ethnic Meta-Analysis of 45,891 Individuals
# Dastani et al. 2012
# ADIPOgen
# Comes in 6 parts, which will need to be joined
# PMID: 22479202 PMCID: PMC3315470
mkdir Adiponectin_Dastani_2012
wget http://www.mcgill.ca/genepi/files/genepi/adipogen.discovery.eur_.meta_.public.release.part1_.txt -P Adiponectin_Dastani_2012
wget http://www.mcgill.ca/genepi/files/genepi/adipogen.discovery.eur_.meta_.public.release.part2_.txt -P Adiponectin_Dastani_2012
wget http://www.mcgill.ca/genepi/files/genepi/adipogen.discovery.eur_.meta_.public.release.part3_.txt -P Adiponectin_Dastani_2012
wget http://www.mcgill.ca/genepi/files/genepi/adipogen.discovery.eur_.meta_.public.release.part4_.txt -P Adiponectin_Dastani_2012
wget http://www.mcgill.ca/genepi/files/genepi/adipogen.discovery.eur_.meta_.public.release.part5_.txt -P Adiponectin_Dastani_2012
wget http://www.mcgill.ca/genepi/files/genepi/adipogen.discovery.eur_.meta_.public.release.part6_.txt -P Adiponectin_Dastani_2012
wget https://www.mcgill.ca/genepi/files/genepi/adipogen_data_0.docx -P Adiponectin_Dastani_2012

# https://www.ncbi.nlm.nih.gov/pubmed/25231870
# Parent-of-origin-specific allelic associations among 106 genomic loci for age at menarche.
# Perry et al. 2014
mkdir Age-At-Menarche_Perry_2014
wget http://www.reprogen.org/Menarche_Nature2014_GWASMetaResults_17122014.zip --directory Age-At-Menarche_Perry_2014

# https://www.ncbi.nlm.nih.gov/pubmed/28436984
# Genomic analyses identify hundreds of variants associated with age at menarche and support a role for puberty timing in cancer risk.
# Day et al. 2017
mkdir Age-At-Menarche_Day_2017
wget http://www.reprogen.org/Menarche_1KG_NatGen2017_WebsiteUpload.zip --directory Age-At-Menarche_Day_2017

# https://www.nature.com/articles/ng.3412
# Large-scale genomic analyses link reproductive aging to hypothalamic signaling, breast cancer susceptibility and BRCA1-mediated DNA repair
# Day et al. 2015
# PMID: 26414677 PMCID: PMC4661791 DOI: 10.1038/ng.3412
mkdir Age-At-Menopause_Day_2015
wget http://www.reprogen.org/Menopause_HapMap2_DayNG2015_18112015.txt.gz --directory Age-At-Menopause_Day_2015

# https://www.ncbi.nlm.nih.gov/pubmed/26087016
# A genome-wide approach to children's aggressive behavior: The EAGLE consortium.
# Pappa et al. 2015
mkdir Aggression_Pappa_2015
wget http://www.tweelingenregister.org/fileadmin/user_upload/EAGLE/aggression_METAL_RESULTS.zip -P Aggression_Pappa_2015
unzip Aggression_Pappa_2015/aggression_METAL_RESULTS.zip -d Aggression_Pappa_2015
unrar x Aggression_Pappa_2015/aggression_METAL\ RESULTS.rar Aggression_Pappa_2015
rm Aggression_Pappa_2015/aggression_METAL\ RESULTS.rar
rm Aggression_Pappa_2015/aggression_METAL_RESULTS.zip
mv "Aggression_Pappa_2015/pappa 150810 EAGLE MA aggression_METAL RESULTS.txt" Aggression_Pappa_2015/pappa_150810_EAGLE_MA_aggression_METAL_RESULTS.txt


# http://www.nejm.org/doi/full/10.1056/NEJMoa0906312
# A Large-Scale, Consortium-Based Genomewide Association Study of Asthma
# Moffatt et al. 2010
# GABRIEL asthma study
# PMID: 20860503 PMCID: PMC4260321 DOI: 10.1056/NEJMoa0906312
mkdir Asthma_Moffatt_2010
wget https://beaune.cng.fr/gabriel/gabriel_results.zip -P Asthma_Moffatt_2010
wget https://beaune.cng.fr/gabriel/gabriel_results_description.xls -P Asthma_Moffatt_2010

# https://www.ncbi.nlm.nih.gov/pubmed/26833246
# New loci for body fat percentage reveal link between adiposity and cardiometabolic disease risk.
# Lu et al. 2016
mkdir Body-Fat-Percentage_Lu_2016
wget http://walker05.u.hpc.mssm.edu/body_fat_percentage_GWAS_PLUS_MC_ALL_ancestry_se_Sex_combined_for_locus_zoom_plot.TBL.txt -P Body-Fat-Percentage_Lu_2016
wget http://walker05.u.hpc.mssm.edu/Read_me_GWAS_BFpercent.txt -P Body-Fat-Percentage_Lu_2016

# https://www.nature.com/articles/s41467-017-00108-3
# Bivariate genome-wide association meta-analysis of pediatric musculoskeletal traits reveals pleiotropic effects at the SREBF1/TOM1L2 locus
# Medina-Gomez et al. 2017
# PMID: 28743860 PMCID: PMC5527106 DOI: 10.1038/s41467-017-00108-3
mkdir Musculoskeletal-Traits_Medina-Gomez_2017
wget http://www.gefos.org/sites/default/files/bivariate_final.txt.gz --directory Musculoskeletal-Traits_Medina-Gomez_2017
wget http://www.gefos.org/sites/default/files/ReadMe_GEFOS-1.txt --directory Musculoskeletal-Traits_Medina-Gomez_2017

# http://www.gefos.org/?q=content/data-release-2012
# Genome-wide meta-analysis identifies 56 bone mineral density loci and reveals 14 loci associated with risk of fracture.
# Estrada et al. 2012
# PMID: 22504420 PMCID: PMC3338864 DOI: 10.1038/ng.2249
mkdir Bone-Mineral-Density_Estrada_2012
wget http://www.gefos.org/sites/default/files/GEFOS2_FNBMD_MEN_GC.txt.gz --directory Bone-Mineral-Density_Estrada_2012
wget http://www.gefos.org/sites/default/files/GEFOS2_FNBMD_WOMEN_GC.txt.gz --directory Bone-Mineral-Density_Estrada_2012
wget http://www.gefos.org/sites/default/files/GEFOS2_FNBMD_POOLED_GC.txt.gz --directory Bone-Mineral-Density_Estrada_2012
wget http://www.gefos.org/sites/default/files/GEFOS2_LSBMD_MEN_GC.txt.gz --directory Bone-Mineral-Density_Estrada_2012
wget http://www.gefos.org/sites/default/files/GEFOS2_LSBMD_WOMEN_GC.txt.gz --directory Bone-Mineral-Density_Estrada_2012
wget http://www.gefos.org/sites/default/files/GEFOS2_LSBMD_POOLED_GC.txt.gz --directory Bone-Mineral-Density_Estrada_2012
wget http://www.gefos.org/sites/default/files/GEFOS2.Xchrom.zip --directory Bone-Mineral-Density_Estrada_2012
wget http://www.gefos.org/sites/default/files/GEFOS_COLLABORATORS.doc --directory Bone-Mineral-Density_Estrada_2012

# https://www.ncbi.nlm.nih.gov/pubmed/26367794
# Whole-genome sequencing identifies EN1 as a determinant of bone density and fracture.
# Zheng et al. 2015
mkdir Bone-Mineral-Density_Zheng_2015
# Forearm
wget http://www.gefos.org/sites/default/files/fa2stu.MAF0_.005.pos_.out_.gz --directory Bone-Mineral-Density_Zheng_2015
# Femoral neck
wget http://www.gefos.org/sites/default/files/fn2stu.MAF0_.005.pos_.out_.gz --directory Bone-Mineral-Density_Zheng_2015
# Lumbar spine
wget http://www.gefos.org/sites/default/files/ls2stu.MAF0_.005.pos_.out_.gz --directory Bone-Mineral-Density_Zheng_2015
wget http://www.gefos.org/sites/default/files/README.txt --directory Bone-Mineral-Density_Zheng_2015

# https://www.nature.com/articles/s41467-017-00031-7
# Large meta-analysis of genome-wide association studies identifies five loci for lean body mass
# Zillikens et al. 2017
# PMID: 28724990 PMCID: PMC5517526 DOI: 10.1038/s41467-017-00031-7
mkdir Lean-Body-Mass_Zillikens_2017
wget http://www.gefos.org/sites/default/files/appendicularleanmass.results.metal_.txt.gz --directory  Lean-Body-Mass_Zillikens_2017
wget http://www.gefos.org/sites/default/files/wholebodyleanmass.results.metal_.txt.gz --directory  Lean-Body-Mass_Zillikens_2017

# https://www.ncbi.nlm.nih.gov/pubmed/28869591
# Identification of 153 new loci associated with heel bone mineral density and functional involvement of GPC6 in osteoporosis.
# Kemp et al. 2017
mkdir Bone-Mineral-Density-Estimated_Kemp_2017
wget http://www.gefos.org/sites/default/files/BEurope-Bmd-As-C-Gwas-SumStats.txt_0.gz --directory Bone-Mineral-Density-Estimated_Kemp_2017
wget http://www.gefos.org/sites/default/files/NG-A45024R-Suppl-Figure6_0.pdf Bone-Mineral-Density-Estimated_Kemp_2017

# http://www.cell.com/ajhg/fulltext/S0002-9297(17)30494-9
# Life-Course Genome-wide Association Study Meta-analysis of Total Body BMD and Assessment of Age-Specific Effects
# Medina-Gomez et al. 2018
# PMID: 29304378 PMCID: PMC5777980 DOI: 10.1016/j.ajhg.2017.12.005
mkdir Bone-Mineral-Density-Total-Body-Lifecourse_Medina-Gomez_2018
wget http://www.gefos.org/sites/default/files/METAANALYSIS2016_60_or_more_GEFOS.txt.gz --directory Bone-Mineral-Density-Total-Body-Lifecourse_Medina-Gomez_2018
wget http://www.gefos.org/sites/default/files/METAANALYSIS2016_4560GEFOS.txt.gz --directory Bone-Mineral-Density-Total-Body-Lifecourse_Medina-Gomez_2018
wget http://www.gefos.org/sites/default/files/METAANALYSIS2016_3045GEFOS.txt.gz --directory Bone-Mineral-Density-Total-Body-Lifecourse_Medina-Gomez_2018
wget http://www.gefos.org/sites/default/files/METAANALYSIS2016_1530GEFOS.txt.gz --directory Bone-Mineral-Density-Total-Body-Lifecourse_Medina-Gomez_2018
wget http://www.gefos.org/sites/default/files/METAANALYSIS2016_15_or_lessGEFOS.txt.gz --directory Bone-Mineral-Density-Total-Body-Lifecourse_Medina-Gomez_2018
wget http://www.gefos.org/sites/default/files/METAANALYSIS2016_all_GEFOS.txt.gz --directory Bone-Mineral-Density-Total-Body-Lifecourse_Medina-Gomez_2018
wget http://www.gefos.org/sites/default/files/PLOTS-GWS_regions.zip --directory Bone-Mineral-Density-Total-Body-Lifecourse_Medina-Gomez_2018

# https://www.ncbi.nlm.nih.gov/pubmed/21378990
# Large-scale association analysis identifies 13 new susceptibility loci for coronary artery disease.
# Schunkert et al. 2011
mkdir Coronary-Artery-Disease_Schunkert_2011
wget http://www.cardiogramplusc4d.org/media/cardiogramplusc4d-consortium/data-downloads/cardiogram_gwas_results.zip --directory Coronary-Artery-Disease_Schunkert_2011

# https://www.ncbi.nlm.nih.gov/pubmed/21378988
# A genome-wide association study in Europeans and South Asians identifies five new loci for coronary artery disease.
# C4D 2011
mkdir Coronary-Artery-Disease_C4D_2011
wget http://www.cardiogramplusc4d.org/media/cardiogramplusc4d-consortium/data-downloads/c4d_cad_discovery_metaanalysis.zip --directory Coronary-Artery-Disease_C4D_2011

# https://www.ncbi.nlm.nih.gov/pubmed/23202125
# Large-scale association analysis identifies new risk loci for coronary artery disease.
# CARDIoGRAMplusC4D 2013
mkdir Coronary-Artery-Disease_CARDIoGRAMplusC4D_2013
wget http://www.cardiogramplusc4d.org/media/cardiogramplusc4d-consortium/data-downloads/cardiogramplusc4d_data.zip --directory Coronary-Artery-Disease_CARDIoGRAMplusC4D_2013

# https://www.ncbi.nlm.nih.gov/pubmed/26343387
# A comprehensive 1,000 Genomes-based genome-wide association meta-analysis of coronary artery disease.
# Nikpay et al. 2015
mkdir Coronary-Artery-Disease_Nikpay_2015
wget http://www.cardiogramplusc4d.org/media/cardiogramplusc4d-consortium/data-downloads/cad.additive.Oct2015.pub.zip --directory Coronary-Artery-Disease_Nikpay_2015
wget http://www.cardiogramplusc4d.org/media/cardiogramplusc4d-consortium/data-downloads/cad.recessive.Oct2015.pub.zip --directory Coronary-Artery-Disease_Nikpay_2015
wget http://www.cardiogramplusc4d.org/media/cardiogramplusc4d-consortium/data-downloads/mi.additive.Oct2015.pub.zip --directory Coronary-Artery-Disease_Nikpay_2015

# https://www.ncbi.nlm.nih.gov/pubmed/28209224
# Systematic Evaluation of Pleiotropy Identifies 6 Further Loci Associated With Coronary Artery Disease.
# Webb et al. 2017
mkdir Coronary-Artery-Disease_Webb_2017
wget http://www.cardiogramplusc4d.org/media/cardiogramplusc4d-consortium/data-downloads/MICAD.EUR.ExA.Consortium.PublicRelease.310517.zip --directory Coronary-Artery-Disease_Webb_2017

# https://www.ncbi.nlm.nih.gov/pubmed/27731410
# No Association of Coronary Artery Disease with X-Chromosomal Variants in Comprehensive International Meta-Analysis.
# Loley et al. 2016
mkdir Coronary-Artery-Disease_Loley_2016
wget http://www.cardiogramplusc4d.org/media/cardiogramplusc4d-consortium/data-downloads/Chromosome_X_CAD_GWAS.zip --directory Coronary-Artery-Disease_Loley_2016

# https://www.nature.com/articles/ng.3913
# Association analyses based on false discovery rate implicate new loci for coronary artery disease
# Nelson et al. 2017
# PMID: 28714975 DOI: 10.1038/ng.3913
mkdir Coronary-Artery-Disease_Nelson_2017
wget http://www.cardiogramplusc4d.org/media/cardiogramplusc4d-consortium/data-downloads/UKBB.GWAS1KG.EXOME.CAD.SOFT.META.PublicRelease.300517.txt.gz --directory Coronary-Artery-Disease_Nelson_2017

# https://www.nature.com/articles/ng.3552
# Genetic variants associated with subjective well-being, depressive symptoms and neuroticism identified through genome-wide analyses.
# Okbay et al. 2016
# PMID: 27898078 PMCID: PMC5509058 DOI: 10.1038/ng1216-1587b
mkdir Depressive-Symptoms_Okbay_2016
mkdir Subjective-Well-Being_Okbay_2016
mkdir Neuroticism-Symptoms_Okbay_2016
wget http://ssgac.org/documents/DS_Full.txt.gz --directory Depressive-Symptoms_Okbay_2016
wget http://ssgac.org/documents/SWB_Full.txt.gz --directory Subjective-Well-Being_Okbay_2016
wget http://ssgac.org/documents/Neuroticism_Full.txt.gz --directory Neuroticism-Symptoms_Okbay_2016
wget http://ssgac.org/documents/ReadMe_genetic_variants_associated_with_swb.txt --directory Depressive-Symptoms_Okbay_2016
wget http://ssgac.org/documents/ReadMe_genetic_variants_associated_with_swb.txt --directory Subjective-Well-Being_Okbay_2016
wget http://ssgac.org/documents/ReadMe_genetic_variants_associated_with_swb.txt --directory Neuroticism-Symptoms_Okbay_2016

# https://www.nature.com/articles/ng.3424
# Multi-ancestry genome-wide association study of 21,000 cases and 95,000 controls identifies new risk loci for atopic dermatitis
# EAGLE Consortium 2015
# PMID: 26482879 PMCID: PMC4753676 DOI: 10.1038/ng.3424
mkdir Atopic-Dermatitis_EAGLE_2015
wget https://data.bris.ac.uk/datasets/28uchsdpmub118uex26ylacqm/AD_GWAS_README.txt --directory Atopic-Dermatitis_EAGLE_2015
wget https://data.bris.ac.uk/datasets/28uchsdpmub118uex26ylacqm/EAGLE_AD_GWAS_results_2015.txt.gz --directory Atopic-Dermatitis_EAGLE_2015

# https://www.ncbi.nlm.nih.gov/pubmed/29292387
# Multi-trait analysis of genome-wide  association summary statistics using MTAG
# Turley et al. 2018
mkdir Multi-Trait-Brain_Turley_2018
wget https://www.dropbox.com/s/v79rfw9x14cj0fg/GWAS_NEUR_full.txt --directory Multi-Trait-Brain_Turley_2018
wget http://ssgac.org/documents/GWAS_SWB_CLUMPED.1e-5.txt --directory Multi-Trait-Brain_Turley_2018
wget http://ssgac.org/documents/GWAS_DEP_CLUMPED.1e-5.txt --directory Multi-Trait-Brain_Turley_2018
wget http://ssgac.org/documents/MTAG_NEUR_CLUMPED.1e-5.txt --directory Multi-Trait-Brain_Turley_2018
wget http://ssgac.org/documents/MTAG_SWB_CLUMPED.1e-5.txt --directory Multi-Trait-Brain_Turley_2018
wget http://ssgac.org/documents/MTAG_DEP_CLUMPED.to10K.txt --directory Multi-Trait-Brain_Turley_2018
wget http://ssgac.org/documents/MTAG_README.txt --directory Multi-Trait-Brain_Turley_2018

# https://www.ncbi.nlm.nih.gov/pubmed/27798627
# Genome-wide analysis identifies 12 loci influencing human reproductive behavior
# Barban et al. 2016
# NOTE: These used to be available from the linked sites, but the link is now broken
#mkdir Reproductive-Behavior_2016_Barban
#wget http://sociogenome.com/material/GWASresults/AgeFirstBirth_Pooled.txt.gz --directory Reproductive-Behavior_2016_Barban
#wget http://sociogenome.com/material/GWASresults/NumberChildrenEverBorn_Pooled.txt.gz --directory Reproductive-Behavior_2016_Barban
#wget http://sociogenome.com/material/GWASresults/AgeFirstBirth_Female.txt.gz --directory Reproductive-Behavior_2016_Barban
#wget http://sociogenome.com/material/GWASresults/NumberChildrenEverBorn_Female.txt.gz --directory Reproductive-Behavior_2016_Barban
#wget http://sociogenome.com/material/GWASresults/AgeFirstBirth_Male.txt.gz --directory Reproductive-Behavior_2016_Barban
#wget http://sociogenome.com/material/GWASresults/NumberChildrenEverBorn_Male.txt.gz --directory Reproductive-Behavior_2016_Barban
#wget http://ssgac.org/documents/readme_reproductivebehavior.txt --directory Reproductive-Behavior_2016_Barban
#wget http://ssgac.org/documents/Barban_et_al_NG2016_SupplementaryNote.pdf --directory Reproductive-Behavior_2016_Barban

# https://www.ncbi.nlm.nih.gov/pubmed/27225129
# Genome-wide association study identifies 74 loci associated with educational attainment
# Okbay et al. 2016
mkdir Educational-Attainment_Okbay_2016
wget http://ssgac.org/documents/EduYears_Main.txt.gz --directory Educational-Attainment_Okbay_2016
wget http://ssgac.org/documents/EduYears_Main_Women.txt.gz --directory Educational-Attainment_Okbay_2016
wget http://ssgac.org/documents/EduYears_Main_Men.txt.gz --directory Educational-Attainment_Okbay_2016
wget http://ssgac.org/documents/EduYears_Discovery_5000.txt --directory Educational-Attainment_Okbay_2016
wget http://ssgac.org/documents/EduYears_Pooled_5000.txt --directory Educational-Attainment_Okbay_2016
wget http://ssgac.org/documents/ReadMe.txt --directory Educational-Attainment_Okbay_2016
wget http://ssgac.org/documents/SI_74_loci_educational_attainment.pdf --directory Educational-Attainment_Okbay_2016

# https://www.ncbi.nlm.nih.gov/pubmed/23722424
# GWAS of 126,559 Individuals Identifies Genetic Variants Associated with Educational Attainment
# Rietveld et al. 2013
mkdir Educational-Attainment_Rietveld_2013
wget http://ssgac.org/documents/SSGAC_Rietveld2013.zip --directory Educational-Attainment_Rietveld_2013
wget http://ssgac.org/documents/Read_me_datarelease_Rietveld2013.txt --directory Educational-Attainment_Rietveld_2013
wget http://ssgac.org/documents/Rietveld_et_al_2013_Science_SOM.pdf --directory Educational-Attainment_Rietveld_2013

# https://www.ncbi.nlm.nih.gov/pubmed/25201988
# Common genetic variants associated with cognitive performance identified using the proxy-phenotype method
# Rietveld et al. 2014
mkdir Cognitive-Performance_Rietveld_2014
wget http://ssgac.org/documents/MA_EA_1st_stage.txt.gz --directory Cognitive-Performance_Rietveld_2014
wget http://ssgac.org/documents/MA_CF_2nd_stage.txt.gz --directory Cognitive-Performance_Rietveld_2014
wget http://ssgac.org/documents/CHIC_Summary_Benyamin2014.txt.gz --directory Cognitive-Performance_Rietveld_2014
wget http://ssgac.org/documents/SIRietveldetal2014PNASCommongeneticvariantsassociatedwithcognitiveperformance.pdf --directory Cognitive-Performance_Rietveld_2014

# https://www.ncbi.nlm.nih.gov/pubmed/23202124
# New loci associated with birth weight identify genetic links between intrauterine growth and adult height and metabolism.
# Horikoshi et al. 2013
mkdir Birth-Weight_Horikoshi_2013
wget https://egg-consortium.org/downloads/EGG_BW2_DISCOVERY.txt.gz --directory Birth-Weight_Horikoshi_2013

# https://www.ncbi.nlm.nih.gov/pubmed/27680694
# Genome-wide associations for birth weight and correlations with adult disease
# Horikoshi et al. 2016
mkdir Birth-Weight_Horikoshi_2016
wget http://mccarthy.well.ox.ac.uk/publications/2016/EggBirthWeight_Nature/BW3_EUR_summary_stats.txt.gz --directory Birth-Weight_Horikoshi_2016
wget http://mccarthy.well.ox.ac.uk/publications/2016/EggBirthWeight_Nature/BW3_Transethnic_summary_stats.txt.gz --directory Birth-Weight_Horikoshi_2016

# https://www.ncbi.nlm.nih.gov/pubmed/22504419
# Common variants at 12q15 and 12q24 are associated with infant head circumference.
# Taal et al. 2012
mkdir Head-Circumference_Taal_2012
wget https://egg-consortium.org/downloads/EGG_HC_DISCOVERY.v2.txt.gz --directory Head-Circumference_Taal_2012

# https://www.ncbi.nlm.nih.gov/pubmed/25281659
# A novel common variant in DCST2 is associated with length in early life and height in adulthood.
# van der Valk et al. 2014
mkdir Birth-Length_van-der-Valk_2014
wget https://egg-consortium.org/downloads/EGG-GWAS-BL.txt.gz --directory Birth-Length_van-der-Valk_2014

# https://www.ncbi.nlm.nih.gov/pubmed/22484627
# A genome-wide association meta-analysis identifies new childhood obesity loci.
# Bradfield et al. 2012
mkdir Obesity-Childhood_Bradfield_2012
wget https://egg-consortium.org/downloads/EGG_Obesity_Meta_Analysis_1.txt.gz --directory Obesity-Childhood_Bradfield_2012

# https://www.ncbi.nlm.nih.gov/pubmed/23449627
# Genome-wide association and longitudinal analyses reveal genetic loci linking pubertal height growth, pubertal timing and childhood adiposity.
# Cousminer et al. 2013
mkdir Pubertal-Growth_Cousminer_2013
wget https://egg-consortium.org/downloads/Pubertal_growth_10F.txt.gz --directory Pubertal-Growth_Cousminer_2013
wget https://egg-consortium.org/downloads/Pubertal_growth_12M.txt.gz --directory Pubertal-Growth_Cousminer_2013
wget https://egg-consortium.org/downloads/Pubertal_growth_10F_12M_combined.txt.gz --directory Pubertal-Growth_Cousminer_2013
wget https://egg-consortium.org/downloads/Pubertal_growth_PGF.txt.gz --directory Pubertal-Growth_Cousminer_2013
wget https://egg-consortium.org/downloads/Pubertal_growth_PGM.txt.gz  --directory Pubertal-Growth_Cousminer_2013
wget https://egg-consortium.org/downloads/Pubertal_growth_PGF_PGM_combined.txt.gz --directory Pubertal-Growth_Cousminer_2013
wget https://egg-consortium.org/downloads/Pubertal_growth_PTF.txt.gz --directory Pubertal-Growth_Cousminer_2013
wget https://egg-consortium.org/downloads/Pubertal_growth_PTM.txt.gz  --directory Pubertal-Growth_Cousminer_2013
wget https://egg-consortium.org/downloads/Pubertal_growth_PTF_PTM_combined.txt.gz --directory Pubertal-Growth_Cousminer_2013

# https://www.ncbi.nlm.nih.gov/pubmed/24770850
# Genome-wide association study of sexual maturation in males and females highlights a role for body mass and menarche loci in male puberty.
# Cousminer et al. 2014
mkdir Tanner-Stage_Cousminer_2014
wget https://egg-consortium.org/downloads/EGG_TANNER_males.v2.txt.gz --directory Tanner-Stage_Cousminer_2014
wget https://egg-consortium.org/downloads/EGG_TANNER_females.v2.txt.gz --directory Tanner-Stage_Cousminer_2014
wget https://egg-consortium.org/downloads/EGG_TANNER_males_and_females_combined.v2.txt.gz --directory Tanner-Stage_Cousminer_2014

# https://www.ncbi.nlm.nih.gov/pubmed/26604143
# Genome-wide association analysis identifies three new susceptibility loci for childhood body mass index.
# Felix et al. 2015
mkdir BMI-Childhood_Felix_2015
wget https://egg-consortium.org/downloads/EGG_BMI_HapMap_DISCOVERY.txt.gz --directory BMI-Childhood_Felix_2015

# https://www.ncbi.nlm.nih.gov/pubmed/28990592
# Maternal and fetal genetic contribution to gestational weight gain.
# Warrington et al. 2017
mkdir Gestational-Weight-Gain_Warrington_2017
wget https://egg-consortium.org/downloads/EGG-TotalGWG-Maternal.txt.gz --directory Gestational-Weight-Gain_Warrington_2017
wget https://egg-consortium.org/downloads/EGG-EarlyGWG-Maternal.txt.gz --directory Gestational-Weight-Gain_Warrington_2017
wget https://egg-consortium.org/downloads/EGG-LateGWG-Maternal.txt.gz --directory Gestational-Weight-Gain_Warrington_2017
wget https://egg-consortium.org/downloads/EGG-TotalGWG-Offspring.txt.gz --directory Gestational-Weight-Gain_Warrington_2017
wget https://egg-consortium.org/downloads/EGG-EarlyGWG-Offspring.txt.gz --directory Gestational-Weight-Gain_Warrington_2017
wget https://egg-consortium.org/downloads/EGG-LateGWG-Offspring.txt.gz --directory Gestational-Weight-Gain_Warrington_2017

# https://www.ncbi.nlm.nih.gov/pubmed/29309628
# Genome-wide association study of offspring birth weight in 86 577 women identifies five novel loci and highlights maternal genetic effects that are independent of fetal genetics.
# Beaumont et al. 2018
mkdir Offspring-Birth-Weight_Beaumont_2018
wget http://mccarthy.well.ox.ac.uk/publications/2018/EggOffspringBirthWeight_HumMolGen/MBW_Summary_Stats.txt.gz --directory Offspring-Birth-Weight_Beaumont_2018

# http://csg.sph.umich.edu/abecasis/public/lipids2013/
# Discovery and refinement of loci associated with lipid levels
# Willer et al. 2013
# GLGC
# PMID: 24097068 PMCID: PMC3838666 DOI: 10.1038/ng.2797
mkdir Blood-Lipids_Willer_2013
wget http://csg.sph.umich.edu/abecasis/public/lipids2013/jointGwasMc_LDL.txt.gz --directory Blood-Lipids_Willer_2013
wget http://csg.sph.umich.edu/abecasis/public/lipids2013/jointGwasMc_HDL.txt.gz --directory Blood-Lipids_Willer_2013
wget http://csg.sph.umich.edu/abecasis/public/lipids2013/jointGwasMc_TG.txt.gz --directory Blood-Lipids_Willer_2013
wget http://csg.sph.umich.edu/abecasis/public/lipids2013/jointGwasMc_TC.txt.gz --directory Blood-Lipids_Willer_2013
wget http://csg.sph.umich.edu/abecasis/public/lipids2013/Mc_LDL.txt.gz --directory Blood-Lipids_Willer_2013
wget http://csg.sph.umich.edu/abecasis/public/lipids2013/Mc_HDL.txt.gz --directory Blood-Lipids_Willer_2013
wget http://csg.sph.umich.edu/abecasis/public/lipids2013/Mc_TG.txt.gz --directory Blood-Lipids_Willer_2013
wget http://csg.sph.umich.edu/abecasis/public/lipids2013/Mc_TC.txt.gz --directory Blood-Lipids_Willer_2013

# https://www.ncbi.nlm.nih.gov/pubmed/23263486
# Genome-wide association analyses identify 18 new loci associated with serum urate concentrations.
# Kottgen et al. 2013
# GUGC
mkdir Serum-Urate_Kottgen_2013
mkdir Gout_Kottgen_2013
wget http://metabolomics.helmholtz-muenchen.de/gugc/GUGC_MetaAnalysis_Results_UA.csv.zip --directory Serum-Urate_Kottgen_2013
wget http://metabolomics.helmholtz-muenchen.de/gugc/GUGC_MetaAnalysis_Results_Gout.csv.zip --directory Gout_Kottgen_2013
wget http://metabolomics.helmholtz-muenchen.de/gugc/GUGC_Datasets_Posting_readme.txt --directory Serum-Urate_Kottgen_2013
wget http://metabolomics.helmholtz-muenchen.de/gugc/GUGC_Datasets_Posting_readme.txt --directory Gout_Kottgen_2013

# https://www.ncbi.nlm.nih.gov/pubmed/21173776
# Meta-analysis of genome-wide association studies for personality.
# De Moor et al. 2012
# GPC
mkdir Personality-Big5_De-Moor_2012
wget https://www.dropbox.com/s/df3bifmk238ks2y/GPC-1.BigFiveNEO.zip --directory Personality-Big5_De-Moor_2012

# https://www.ncbi.nlm.nih.gov/pubmed/25993607
# Meta-analysis of Genome-wide Association Studies for Neuroticism, and the Polygenic Association With Major Depressive Disorder 
# De Moor et al. 2015
# GPC
mkdir Neuroticism_De-Moor_2012
mkdir Extraversion_De-Moor_2012
wget https://www.dropbox.com/s/ql1en6s0kramxne/GPC-2.NEUROTICISM.zip --directory Neuroticism_De-Moor_2012
wget https://www.dropbox.com/s/bk2jn41vrfl3zna/GPC-2.EXTRAVERSION.zip --directory Extraversion_De-Moor_2012


# https://www.ncbi.nlm.nih.gov/pubmed/23583979
# Identification of heart rate-associated loci and their effects on cardiac conduction and rhythm disorders.
# den Hoed et al. 2013
mkdir Heart-Rate_den-Hoed_2013
wget http://walker05.u.hpc.mssm.edu/META_STAGE1_GWASHR_SUMSTATS.txt --directory Heart-Rate_den-Hoed_2013
wget http://walker05.u.hpc.mssm.edu/Read_me_GWAS_HR.txt --directory Heart-Rate_den-Hoed_2013

# https://www.ncbi.nlm.nih.gov/pubmed/26833098
# Genome-wide meta-analysis uncovers novel loci influencing circulating leptin levels.
# Kilpelainen et al. 2016
mkdir Leptin_Kilpelainen_2016
wget http://walker05.u.hpc.mssm.edu/Leptin_Adjusted_for_BMI.txt --directory Leptin_Kilpelainen_2016
wget http://walker05.u.hpc.mssm.edu/Leptin_Not_Adjusted_for_BMI.txt --directory Leptin_Kilpelainen_2016

# https://www.ncbi.nlm.nih.gov/pubmed/23128233
# Host-microbe interactions have shaped the genetic architecture of inflammatory bowel disease.
# Jostins et al. 2012
mkdir Inflammatory-Bowel-Disease_Jostins_2012
wget ftp://ftp.sanger.ac.uk/pub/consortia/ibdgenetics/iibdgc-trans-ancestry-filtered-summary-stats.tgz --directory Inflammatory-Bowel-Disease_Jostins_2012

# https://www.ncbi.nlm.nih.gov/pubmed/21102463
# Genome-wide meta-analysis increases to 71 the number of confirmed Crohn's disease susceptibility loci.
# Franke et al. 2010
mkdir Crohns-Disease_Franke_2010
wget ftp://ftp.sanger.ac.uk/pub/consortia/ibdgenetics/cd-meta.txt.gz --directory Crohns-Disease_Franke_2010

# https://www.ncbi.nlm.nih.gov/pubmed/21297633
# Meta-analysis identifies 29 additional ulcerative colitis risk loci, increasing the number of confirmed associations to 47.
# Anderson et al. 2011
mkdir Ulcerative-Colitis_Anderson_2011
wget ftp://ftp.sanger.ac.uk/pub/consortia/ibdgenetics/ucmeta-sumstats.txt.gz --directory Ulcerative-Colitis_Anderson_2011

# https://www.ncbi.nlm.nih.gov/pubmed/26192919
# Association analyses identify 38 susceptibility loci for inflammatory bowel disease and highlight shared genetic risk across populations.
# Liu et al. 2015
mkdir Inflammatory-Bowel-Disease_Liu_2015
wget ftp://ftp.sanger.ac.uk/pub/consortia/ibdgenetics/iibdgc-trans-ancestry-filtered-summary-stats.tgz --directory Inflammatory-Bowel-Disease_Liu_2015

# https://www.ncbi.nlm.nih.gov/pubmed/28490609
# A Genome-Wide Association Study of IVGTT-Based Measures of First-Phase Insulin Secretion Refines the Underlying Physiology of Type 2 Diabetes Variants.
# Wood et al. 2017
mkdir Insulin-Secretion_Wood_2017
wget http://www.t2diabetesgenes.org/datasets/Wood_et_al_2017_AIR.txt.gz --directory Insulin-Secretion_Wood_2017
wget http://www.t2diabetesgenes.org/datasets/Wood_et_al_2017_AIR_adj_BMI+SI.txt.gz --directory Insulin-Secretion_Wood_2017
wget http://www.t2diabetesgenes.org/datasets/Wood_et_al_2017_AIR_adj_SI.txt.gz --directory Insulin-Secretion_Wood_2017
wget http://www.t2diabetesgenes.org/datasets/Wood_et_al_2017_PEAK.txt.gz --directory Insulin-Secretion_Wood_2017
wget http://www.t2diabetesgenes.org/datasets/Wood_et_al_2017_PEAK_adj_BMI+SI.txt.gz --directory Insulin-Secretion_Wood_2017
wget http://www.t2diabetesgenes.org/datasets/Wood_et_al_2017_PEAK_adj_SI.txt.gz --directory Insulin-Secretion_Wood_2017
wget http://www.t2diabetesgenes.org/datasets/Wood_et_al_2017_DI.txt.gz --directory Insulin-Secretion_Wood_2017
wget http://www.t2diabetesgenes.org/datasets/Wood_et_al_2017_DI_adj_BMI.txt.gz --directory Insulin-Secretion_Wood_2017
wget http://www.t2diabetesgenes.org/datasets/Wood_et_al_2017_ISR.txt.gz --directory Insulin-Secretion_Wood_2017
wget http://www.t2diabetesgenes.org/datasets/Wood_et_al_2017_ISR_adj_BMI.txt.gz --directory Insulin-Secretion_Wood_2017

# https://www.ncbi.nlm.nih.gov/pubmed/28957414
# Red blood cell distribution width: Genetic evidence for aging pathways in 116,666 volunteers.
# Pilling et al. 2017
mkdir Red-Blood-Cell-Distribution-Width_Pilling_2017
wget http://www.t2diabetesgenes.org/datasets/UKB_150K.Pilling_2017.RDW_GWAS.txt.gz --directory Red-Blood-Cell-Distribution-Width_Pilling_2017

# https://www.ncbi.nlm.nih.gov/pubmed/27494321 
# Genome-Wide Association Analyses in 128,266 Individuals Identifies New Morningness and Sleep Duration Loci.
# Jones et al. 2016
mkdir Sleep-Timing_Jones_2016
wget http://www.t2diabetesgenes.org/datasets/Chronotype_SIN_BOLT.output_plus.metrics_MAF0.001_HWE1E-5_qual0.4.txt.gz --directory Sleep-Timing_Jones_2016
wget http://www.t2diabetesgenes.org/datasets/Sleep_Duration_SIN_BOLT.output_plus.metrics_MAF0.001_HWE1E-5_qual0.4.txt.gz --directory Sleep-Timing_Jones_2016
wget http://www.t2diabetesgenes.org/datasets/bin_oversleeper_BOLT.output_for_plotting_maf0.001_hwe1eminus5_qual0.4.txt.gz --directory Sleep-Timing_Jones_2016
wget http://www.t2diabetesgenes.org/datasets/bin_undersleeper_BOLT.output_for_plotting_maf0.001_hwe1eminus5_qual0.4.txt.gz --directory Sleep-Timing_Jones_2016

# https://www.ncbi.nlm.nih.gov/pubmed/26961502
# Variants in the FTO and CDKAL1 loci have recessive effects on risk of obesity and type 2 diabetes, respectively.
# Wood et al. 2016
mkdir BMI_Wood_2016
mkdir Type-2-Diabetes_Wood_2016
wget http://www.t2diabetesgenes.org/datasets/bmi_dom_dev.txt.gz --directory BMI_Wood_2016
wget http://www.t2diabetesgenes.org/datasets/t2d_dom_dev.txt.gz --directory Type-2-Diabetes_Wood_2016

# https://www.ncbi.nlm.nih.gov/pubmed/27015805
# Human longevity is influenced by many genetic variants: evidence from 75,000 UK Biobank participants.
# Pilling et al. 2016
mkdir Age-At-Death_Pilling_2016
wget http://www.t2diabetesgenes.org/datasets/results.UKBiobank_9millionSNPs.parents_lifespan.Pilling_et_al_2016_Aging.txt.gz --directory Age-At-Death_Pilling_2016

# https://www.ncbi.nlm.nih.gov/pubmed/28979981
# Genome-Wide Association Studies of a Broad Spectrum of Antisocial Behavior.
# Tielbeek et al. 2017
mkdir Antisocial-Behavior_Tielbeek_2017
wget http://broadabc.ctglab.nl/documents/p12/BroadABC_METALoutput_Combined.tbl --directory Antisocial-Behavior_Tielbeek_2017
wget http://broadabc.ctglab.nl/documents/p12/BroadABC_METALoutput_Females.tbl --directory Antisocial-Behavior_Tielbeek_2017
wget http://broadabc.ctglab.nl/documents/p12/BroadABC_METALoutput__Males.tbl --directory Antisocial-Behavior_Tielbeek_2017
wget http://broadabc.ctglab.nl/documents/p12/readme_tielbeek_jamapsychiatry2017_antisocial_behavior_sumstats.txt --directory Antisocial-Behavior_Tielbeek_2017

# https://www.ncbi.nlm.nih.gov/pubmed/24390342
# Genetics of rheumatoid arthritis contributes to biology and drug discovery.
# Okada et al. 2014
mkdir Rheumatoid-Arthritis_Okada_2014
wget http://plaza.umin.ac.jp/~yokada/datasource/files/GWASMetaResults/RA_GWASmeta_Asian_v2.txt.gz --directory Rheumatoid-Arthritis_Okada_2014
wget http://plaza.umin.ac.jp/~yokada/datasource/files/GWASMetaResults/RA_GWASmeta_European_v2.txt.gz --directory Rheumatoid-Arthritis_Okada_2014

# https://www.ncbi.nlm.nih.gov/pubmed/23041239
# Genetic risk factors for ischaemic stroke and its subtypes (the METASTROKE collaboration): a meta-analysis of genome-wide association studies.
# Traylor et al. 2012
mkdir Ischaemic-Stroke_Traylor_2012
wget https://personal.broadinstitute.org/mvon/3490334.Traylor.2012.zip --directory Ischaemic-Stroke_Traylor_2012
wget https://s3.amazonaws.com/broad-portal-resources/stroke/README_Traylor_2012.pdf  --directory Ischaemic-Stroke_Traylor_2012

# https://www.ncbi.nlm.nih.gov/pubmed/24656865
# Meta-analysis of genome-wide association studies identifies 1q22 as a susceptibility locus for intracerebral hemorrhage.
# Woo et al. 2014
mkdir Intracerebral-Hemorrhage_Woo_2014
wget https://personal.broadinstitute.org/mvon/3980413.Woo.2014.zip --directory Intracerebral-Hemorrhage_Woo_2014
wget https://s3.amazonaws.com/broad-portal-resources/stroke/README_Woo_2014.pdf  --directory Intracerebral-Hemorrhage_Woo_2014

# https://www.ncbi.nlm.nih.gov/pubmed/26708676
# Loci associated with ischaemic stroke and its subtypes (SiGN): a genome-wide association study.
# Pulit et al. 2016
mkdir Ischaemic-Stroke_Pulit_2016
wget https://personal.broadinstitute.org/mvon/4912948.SiGN.allstroke.2015.zip --directory Ischaemic-Stroke_Pulit_2016
# The following 5 lines are redundant; all of them are contained in the "allstroke" file
wget https://personal.broadinstitute.org/mvon/4912948.SiGN.CCS.all.2015.zip --directory Ischaemic-Stroke_Pulit_2016
wget https://personal.broadinstitute.org/mvon/4912948.SiGN.CCS.AFR.2015.zip --directory Ischaemic-Stroke_Pulit_2016
wget https://personal.broadinstitute.org/mvon/4912948.SiGN.CCS.EUR.2015.zip --directory Ischaemic-Stroke_Pulit_2016
wget https://personal.broadinstitute.org/mvon/4912948.SiGN.CCS.HIS.2015.zip --directory Ischaemic-Stroke_Pulit_2016
wget https://personal.broadinstitute.org/mvon/4912948.SiGN.toast.2015.zip --directory Ischaemic-Stroke_Pulit_2016
wget https://s3.amazonaws.com/broad-portal-resources/stroke/README_SiGN_2015.pdf --directory Ischaemic-Stroke_Pulit_2016

# https://www.ncbi.nlm.nih.gov/pubmed/26674333
# Genome-wide meta-analysis of cerebral white matter hyperintensities in patients with stroke.
# Traylor et al. 2016
mkdir Cerebral-White-Matter-Hyperintensity_Traylor_2016
wget https://personal.broadinstitute.org/mvon/26674333.Traylor.2016.txt.gz --directory Cerebral-White-Matter-Hyperintensity_Traylor_2016 --directory Cerebral-White-Matter-Hyperintensity_Traylor_2016

# https://www.ncbi.nlm.nih.gov/pubmed/27997041 
# Genetic variation at 16q24.2 is associated with small vessel stroke.
# Traylor et al. 2017
mkdir Small-Vessel-Stroke_Traylor_2017
wget https://personal.broadinstitute.org/mvon/27997041.Traylor.2017.tar.gz --directory Small-Vessel-Stroke_Traylor_2017

# https://www.ncbi.nlm.nih.gov/pubmed/28067912
# Genome-wide association study identifies distinct genetic contributions to prognosis and susceptibility in Crohn's disease
# Lee et al. 2017
mkdir Crohns_Lee_2017
wget ftp://ftp.sanger.ac.uk/pub/project/humgen/summary_statistics/human/2016-10-12/CD_prognosis_GWA_results.csv.zip --directory Crohns_Lee_2017

# https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5540332/
# Genome-wide association study of primary sclerosing cholangitis identifies new risk loci and quantifies the genetic relationship with inflammatory bowel disease
# Ji et al. 2016
# PMID: 27992413 PMCID: PMC5540332 DOI: 10.1038/ng.3745
mkdir Primary-Sclerosing-Cholangitis_Ji_2017
wget http://ous-research.no/ipscsg/docs/ipscsg2016.result.combined.full.with_header.txt --directory Primary-Sclerosing-Cholangitis_Ji_2017

# https://www.ncbi.nlm.nih.gov/pubmed/28898252
# Impact of common genetic determinants of Hemoglobin A1c on type 2 diabetes risk and diagnosis in ancestrally diverse populations: A transethnic genome-wide meta-analysis.
# Wheeler et al. 2017
# MAGIC
mkdir Hemoglobin-A1c_Wheeler_2017
wget ftp://ftp.sanger.ac.uk/pub/magic/HbA1c_MANTRA.txt.gz --directory  Hemoglobin-A1c_Wheeler_2017
wget ftp://ftp.sanger.ac.uk/pub/magic/HbA1c_METAL_AfricanAmerican.txt.gz --directory  Hemoglobin-A1c_Wheeler_2017
wget ftp://ftp.sanger.ac.uk/pub/magic/HbA1c_METAL_EastAsian.txt.gz --directory  Hemoglobin-A1c_Wheeler_2017
wget ftp://ftp.sanger.ac.uk/pub/magic/HbA1c_METAL_European.txt.gz --directory  Hemoglobin-A1c_Wheeler_2017
wget ftp://ftp.sanger.ac.uk/pub/magic/HbA1c_METAL_SouthAsian.txt.gz --directory  Hemoglobin-A1c_Wheeler_2017
wget ftp://ftp.sanger.ac.uk/pub/magic/HbA1c_METAL_SouthAsian.txt.gz --directory  Hemoglobin-A1c_Wheeler_2017

# https://www.ncbi.nlm.nih.gov/pubmed/27416945
# Genome-Wide Association Study of the Modified Stumvoll Insulin Sensitivity Index Identifies BCL2 and FAM19A2 as Novel Insulin Sensitivity Loci.
# Walford et al. 2016
mkdir Insulin-Sensitivity-Index_Walford_2016
wget ftp://ftp.sanger.ac.uk/pub/magic/MAGIC_ISI_Model_1_AgeSexOnly.txt --directory Insulin-Sensitivity-Index_Walford_2016
wget ftp://ftp.sanger.ac.uk/pub/magic/MAGIC_ISI_Model_2_AgeSexBMI.txt --directory Insulin-Sensitivity-Index_Walford_2016
wget ftp://ftp.sanger.ac.uk/pub/magic/MAGIC_ISI_Model_3_JMA.txt --directory Insulin-Sensitivity-Index_Walford_2016
wget ftp://ftp.sanger.ac.uk/pub/magic/MAGIC_ISI_README.docx --directory Insulin-Sensitivity-Index_Walford_2016

# https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3974640/
# A Central Role for GRB10 in Regulation of Islet Function in Man
# Prokopenko et al. 2014
# PMID: 24699409
mkdir Glucose-Stimulated-Insulin-Secretion_Prokopenko_2014
wget ftp://ftp.sanger.ac.uk/pub/magic/MAGIC_InsulinSecretion_data_release_May2014.zip --directory Glucose-Stimulated-Insulin-Secretion_Prokopenko_2014

# https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3433394/
# Large-scale association analyses identify new loci influencing glycemic traits and provide insight into the underlying biological pathways
# Scott et al. 2013
# PMID: 22885924
mkdir Glycemic-Traits_Scott_2013
wget ftp://ftp.sanger.ac.uk/pub/magic/MAGIC_Metabochip_Public_data_release_25Jan.zip --directory Glycemic-Traits_Scott_2013

# https://www.ncbi.nlm.nih.gov/pubmed/22581228
# A genome-wide approach accounting for body mass index identifies genetic variants influencing fasting glycemic traits and insulin resistance.
# Manning et al. 2012
mkdir Glycemic-Traits-BMI-Corrected_Manning_2012
wget ftp://ftp.sanger.ac.uk/pub/magic/MAGIC_Manning_et_al_FastingGlucose_MainEffect.txt.gz --directory Glycemic-Traits-BMI-Corrected_Manning_2012
wget ftp://ftp.sanger.ac.uk/pub/magic/MAGIC_Manning_et_al_FastingGlucose_Interaction.txt.gz --directory Glycemic-Traits-BMI-Corrected_Manning_2012
wget ftp://ftp.sanger.ac.uk/pub/magic/MAGIC_Manning_et_al_lnFastingInsulin_MainEffect.txt.gz --directory Glycemic-Traits-BMI-Corrected_Manning_2012
wget ftp://ftp.sanger.ac.uk/pub/magic/MAGIC_Manning_et_al_lnFastingInsulin_Interaction.txt.gz --directory Glycemic-Traits-BMI-Corrected_Manning_2012
wget ftp://ftp.sanger.ac.uk/pub/magic/MAGIC_Manning_et_al_README.pdf --directory Glycemic-Traits-BMI-Corrected_Manning_2012

# https://www.ncbi.nlm.nih.gov/pubmed/21873549
# Genome-wide association identifies nine common variants associated with fasting proinsulin levels and provides new insights into the pathophysiology of type 2 diabetes.
# Strawbridge et al. 2011
mkdir Fasting-Proinsulin_Strawbridge_2011 
wget ftp://ftp.sanger.ac.uk/pub/magic/MAGIC_ln_fastingProinsulin.txt.gz --directory Fasting-Proinsulin_Strawbridge_2011

# https://www.ncbi.nlm.nih.gov/pubmed/20858683
# Common variants at 10 genomic loci influence hemoglobin A₁(C) levels via glycemic and nonglycemic pathways.
# Soranzo et al. 2010
mkdir Hemoglobin-A1c_Soranzo_2010
wget ftp://ftp.sanger.ac.uk/pub/magic/MAGIC_HbA1C.txt.gz --directory Hemoglobin-A1c_Soranzo_2010

# https://www.ncbi.nlm.nih.gov/pubmed/20081857
# Genetic variation in GIPR influences the glucose and insulin responses to an oral glucose challenge.
# Saxena et al. 2010
mkdir 2-Hour-Glucose_Saxena_2010
wget ftp://ftp.sanger.ac.uk/pub/magic/MAGIC_2hrGlucose_AdjustedForBMI.txt --directory 2-Hour-Glucose_Saxena_2010

# https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3018764/
# New genetic loci implicated in fasting glucose homeostasis and their impact on type 2 diabetes risk.
# Dupuis et al. 2010
# PMID: 20081858 PMCID: PMC3018764 DOI: 10.1038/ng.520
mkdir Glycemic-Traits_Dupuis_2010
wget ftp://ftp.sanger.ac.uk/pub/magic/MAGIC_ln_FastingInsulin.txt --directory Glycemic-Traits_Dupuis_2010
wget ftp://ftp.sanger.ac.uk/pub/magic/MAGIC_FastingGlucose.txt --directory Glycemic-Traits_Dupuis_2010
wget ftp://ftp.sanger.ac.uk/pub/magic/MAGIC_ln_HOMA-B.txt --directory Glycemic-Traits_Dupuis_2010
wget ftp://ftp.sanger.ac.uk/pub/magic/MAGIC_ln_HOMA-IR.txt --directory Glycemic-Traits_Dupuis_2010

# https://www.ncbi.nlm.nih.gov/pubmed/27568811
# Heritability and Genome-Wide Association Analyses of Sleep Duration in Children: The EAGLE Consortium.
# Marinelli et al. 2016
# PMID: 27568811 PMCID: PMC5020368 DOI: 10.5665/sleep.6170
mkdir Sleep-Duration_Marinelli_2016
wget https://www.dropbox.com/s/u1mgr7opvqsblmw/Marinelli_Sleep2016_EAGLE%20MA%20summary%20statistics_BMI%20adjusted%20model.txt?dl=0 --directory Sleep-Duration_Marinelli_2016
wget https://www.dropbox.com/s/lmmz9l17tqzg2bh/Marinelli_Sleep2016_EAGLE%20MA%20summary%20statistics_basic%20model.txt?dl=0 --directory Sleep-Duration_Marinelli_2016

# https://www.ncbi.nlm.nih.gov/pubmed/24839885
# A genome-wide association meta-analysis of preschool internalizing problems.
# Benke et al. 2014
mkdir Internalizing-Problems_Benke_2014
wget http://www.tweelingenregister.org/fileadmin/user_upload/EAGLE/Internalizing.zip --directory Internalizing-Problems_Benke_2014

# https://www.ncbi.nlm.nih.gov/pubmed/27559109
# A genome-wide association meta-analysis of diarrhoeal disease in young children identifies FUT2 locus and provides plausible biological pathways
# Bustamante et al. 2016
mkdir Diarrhoeal-Disease_Bustamante_2016
wget https://grasp.nhlbi.nih.gov/downloads/FullResults/2016/2016_Bustamante/2016-09-06_EAGLE_diarrhoea_d1y.txt.gz --directory Diarrhoeal-Disease_Bustamante_2016
wget https://grasp.nhlbi.nih.gov/downloads/FullResults/2016/2016_Bustamante/2016-09-06_EAGLE_diarrhoea_d2y.txt.gz --directory Diarrhoeal-Disease_Bustamante_2016
wget https://grasp.nhlbi.nih.gov/downloads/FullResults/2016/2016_Bustamante/2016-09-06_EAGLE_diarrhoea_dd1y.txt.gz --directory Diarrhoeal-Disease_Bustamante_2016
wget https://grasp.nhlbi.nih.gov/downloads/FullResults/2016/2016_Bustamante/2016-09-06_EAGLE_diarrhoea_dd2y.txt.gz --directory Diarrhoeal-Disease_Bustamante_2016
wget https://grasp.nhlbi.nih.gov/downloads/FullResults/2016/2016_Bustamante/README.txt --directory Diarrhoeal-Disease_Bustamante_2016

# https://www.biorxiv.org/content/early/2018/03/02/274654
# Meta-analysis of genome-wide association studies for height and body mass index in ~700,000 individuals of European ancestry
# Yengo et al. 2018
# PMID: 30124842 PMCID: PMC6488973 DOI: 10.1093/hmg/ddy271
mkdir Yengo_BMI+Height_2018
wget https://portals.broadinstitute.org/collaboration/giant/images/0/0f/Meta-analysis_Locke_et_al%2BUKBiobank_2018.txt.gz --directory Yengo_BMI+Height_2018
wget https://portals.broadinstitute.org/collaboration/giant/images/6/63/Meta-analysis_Wood_et_al%2BUKBiobank_2018.txt.gz --directory Yengo_BMI+Height_2018

# Unclear whether these ones have been published.
# Downloaded from GIANT at https://portals.broadinstitute.org/collaboration/giant/index.php/GIANT_consortium_data_files
mkdir BMI-Smoking-Adjusted_GIANT_2017
wget https://portals.broadinstitute.org/collaboration/giant/images/3/3a/BMI.SNPadjSMK.zip --directory BMI-Smoking-Adjusted_GIANT_2017
wget https://portals.broadinstitute.org/collaboration/giant/images/9/9f/WCadjBMI.SNPadjSMK.zip --directory BMI-Smoking-Adjusted_GIANT_2017
wget https://portals.broadinstitute.org/collaboration/giant/images/e/ed/WHRadjBMI.SNPadjSMK.zip --directory BMI-Smoking-Adjusted_GIANT_2017
wget https://portals.broadinstitute.org/collaboration/giant/images/c/c7/BMI.Stratified.zip  --directory BMI-Smoking-Adjusted_GIANT_2017
wget https://portals.broadinstitute.org/collaboration/giant/images/3/35/WCadjBMI.Stratified.zip --directory BMI-Smoking-Adjusted_GIANT_2017
wget https://portals.broadinstitute.org/collaboration/giant/images/1/1c/WHRadjBMI.Stratified.zip --directory BMI-Smoking-Adjusted_GIANT_2017


# Unclear whether these ones have been published.
# Downloaded from GIANT at https://portals.broadinstitute.org/collaboration/giant/index.php/GIANT_consortium_data_files
mkdir BMI-Physical-Activity-Interaction_GIANT_2017
wget https://portals.broadinstitute.org/collaboration/giant/images/2/27/BMI.ACTIVE.ALL.AllAncestry.txt.gz --directory BMI-Physical-Activity-Interaction_GIANT_2017
wget https://portals.broadinstitute.org/collaboration/giant/images/e/e9/BMI.ACTIVE.ALL.European.txt.gz --directory BMI-Physical-Activity-Interaction_GIANT_2017
wget https://portals.broadinstitute.org/collaboration/giant/images/9/90/BMI.ACTIVE.MEN.AllAncestry.txt.gz --directory BMI-Physical-Activity-Interaction_GIANT_2017
wget https://portals.broadinstitute.org/collaboration/giant/images/a/a2/BMI.ACTIVE.MEN.European.txt.gz --directory BMI-Physical-Activity-Interaction_GIANT_2017
wget https://portals.broadinstitute.org/collaboration/giant/images/0/01/BMI.ACTIVE.WOMEN.AllAncestry.txt.gz --directory BMI-Physical-Activity-Interaction_GIANT_2017
wget https://portals.broadinstitute.org/collaboration/giant/images/e/e0/BMI.ACTIVE.WOMEN.European.txt.gz --directory BMI-Physical-Activity-Interaction_GIANT_2017
wget https://portals.broadinstitute.org/collaboration/giant/images/a/a5/BMI.INACTIVE.ALL.AllAncestry.txt.gz --directory BMI-Physical-Activity-Interaction_GIANT_2017
wget https://portals.broadinstitute.org/collaboration/giant/images/0/0c/BMI.INACTIVE.ALL.European.txt.gz --directory BMI-Physical-Activity-Interaction_GIANT_2017
wget https://portals.broadinstitute.org/collaboration/giant/images/7/76/BMI.INACTIVE.MEN.AllAncestry.txt.gz --directory BMI-Physical-Activity-Interaction_GIANT_2017
wget https://portals.broadinstitute.org/collaboration/giant/images/1/1c/BMI.INACTIVE.MEN.European.txt.gz --directory BMI-Physical-Activity-Interaction_GIANT_2017
wget https://portals.broadinstitute.org/collaboration/giant/images/f/f0/BMI.INACTIVE.WOMEN.AllAncestry.txt.gz --directory BMI-Physical-Activity-Interaction_GIANT_2017
wget https://portals.broadinstitute.org/collaboration/giant/images/9/94/BMI.INACTIVE.WOMEN.European.txt.gz --directory BMI-Physical-Activity-Interaction_GIANT_2017
wget https://portals.broadinstitute.org/collaboration/giant/images/d/de/BMI.SNPadjPA.ALL.AllAncestry.txt.gz --directory BMI-Physical-Activity-Interaction_GIANT_2017
wget https://portals.broadinstitute.org/collaboration/giant/images/d/d2/BMI.SNPadjPA.ALL.European.txt.gz --directory BMI-Physical-Activity-Interaction_GIANT_2017
wget https://portals.broadinstitute.org/collaboration/giant/images/e/ef/BMI.SNPadjPA.MEN.AllAncestry.txt.gz --directory BMI-Physical-Activity-Interaction_GIANT_2017
wget https://portals.broadinstitute.org/collaboration/giant/images/5/5a/BMI.SNPadjPA.MEN.European.txt.gz --directory BMI-Physical-Activity-Interaction_GIANT_2017
wget https://portals.broadinstitute.org/collaboration/giant/images/4/41/BMI.SNPadjPA.WOMEN.AllAncestry.txt.gz --directory BMI-Physical-Activity-Interaction_GIANT_2017
wget https://portals.broadinstitute.org/collaboration/giant/images/0/04/BMI.SNPadjPA.WOMEN.European.txt.gz --directory BMI-Physical-Activity-Interaction_GIANT_2017
wget https://portals.broadinstitute.org/collaboration/giant/images/c/c5/WAISTadjBMI.ACTIVE.ALL.AllAncestry.txt.gz --directory BMI-Physical-Activity-Interaction_GIANT_2017
wget https://portals.broadinstitute.org/collaboration/giant/images/8/8e/WAISTadjBMI.ACTIVE.ALL.European.txt.gz --directory BMI-Physical-Activity-Interaction_GIANT_2017
wget https://portals.broadinstitute.org/collaboration/giant/images/b/b7/WAISTadjBMI.ACTIVE.MEN.AllAncestry.txt.gz --directory BMI-Physical-Activity-Interaction_GIANT_2017
wget https://portals.broadinstitute.org/collaboration/giant/images/3/30/WAISTadjBMI.ACTIVE.MEN.European.txt.gz --directory BMI-Physical-Activity-Interaction_GIANT_2017
wget https://portals.broadinstitute.org/collaboration/giant/images/8/83/WAISTadjBMI.ACTIVE.WOMEN.AllAncestry.txt.gz --directory BMI-Physical-Activity-Interaction_GIANT_2017
wget https://portals.broadinstitute.org/collaboration/giant/images/d/d0/WAISTadjBMI.ACTIVE.WOMEN.European.txt.gz --directory BMI-Physical-Activity-Interaction_GIANT_2017
wget https://portals.broadinstitute.org/collaboration/giant/images/d/d8/WAISTadjBMI.INACTIVE.ALL.AllAncestry.txt.gz --directory BMI-Physical-Activity-Interaction_GIANT_2017
wget https://portals.broadinstitute.org/collaboration/giant/images/2/22/WAISTadjBMI.INACTIVE.ALL.European.txt.gz --directory BMI-Physical-Activity-Interaction_GIANT_2017
wget https://portals.broadinstitute.org/collaboration/giant/images/8/85/WAISTadjBMI.INACTIVE.MEN.AllAncestry.txt.gz --directory BMI-Physical-Activity-Interaction_GIANT_2017
wget https://portals.broadinstitute.org/collaboration/giant/images/a/aa/WAISTadjBMI.INACTIVE.MEN.European.txt.gz --directory BMI-Physical-Activity-Interaction_GIANT_2017
wget https://portals.broadinstitute.org/collaboration/giant/images/3/31/WAISTadjBMI.INACTIVE.WOMEN.AllAncestry.txt.gz --directory BMI-Physical-Activity-Interaction_GIANT_2017
wget https://portals.broadinstitute.org/collaboration/giant/images/f/f2/WAISTadjBMI.INACTIVE.WOMEN.European.txt.gz --directory BMI-Physical-Activity-Interaction_GIANT_2017
wget https://portals.broadinstitute.org/collaboration/giant/images/d/d9/WAISTadjBMI.SNPadjPA.ALL.AllAncestry.txt.gz --directory BMI-Physical-Activity-Interaction_GIANT_2017
wget https://portals.broadinstitute.org/collaboration/giant/images/9/97/WAISTadjBMI.SNPadjPA.ALL.European.txt.gz --directory BMI-Physical-Activity-Interaction_GIANT_2017
wget https://portals.broadinstitute.org/collaboration/giant/images/6/6a/WAISTadjBMI.SNPadjPA.MEN.AllAncestry.txt.gz --directory BMI-Physical-Activity-Interaction_GIANT_2017
wget https://portals.broadinstitute.org/collaboration/giant/images/4/4c/WAISTadjBMI.SNPadjPA.MEN.European.txt.gz --directory BMI-Physical-Activity-Interaction_GIANT_2017
wget https://portals.broadinstitute.org/collaboration/giant/images/3/3b/WAISTadjBMI.SNPadjPA.WOMEN.AllAncestry.txt.gz --directory BMI-Physical-Activity-Interaction_GIANT_2017
wget https://portals.broadinstitute.org/collaboration/giant/images/4/4f/WAISTadjBMI.SNPadjPA.WOMEN.European.txt.gz --directory BMI-Physical-Activity-Interaction_GIANT_2017
wget https://portals.broadinstitute.org/collaboration/giant/images/b/b2/WHRadjBMI.ACTIVE.ALL.AllAncestry.txt.gz --directory BMI-Physical-Activity-Interaction_GIANT_2017
wget https://portals.broadinstitute.org/collaboration/giant/images/b/b0/WHRadjBMI.ACTIVE.ALL.European.txt.gz --directory BMI-Physical-Activity-Interaction_GIANT_2017
wget https://portals.broadinstitute.org/collaboration/giant/images/7/70/WHRadjBMI.ACTIVE.MEN.AllAncestry.txt.gz --directory BMI-Physical-Activity-Interaction_GIANT_2017
wget https://portals.broadinstitute.org/collaboration/giant/images/7/78/WHRadjBMI.ACTIVE.MEN.European.txt.gz --directory BMI-Physical-Activity-Interaction_GIANT_2017
wget https://portals.broadinstitute.org/collaboration/giant/images/c/c0/WHRadjBMI.ACTIVE.WOMEN.AllAncestry.txt.gz --directory BMI-Physical-Activity-Interaction_GIANT_2017
wget https://portals.broadinstitute.org/collaboration/giant/images/a/a2/WHRadjBMI.ACTIVE.WOMEN.European.txt.gz --directory BMI-Physical-Activity-Interaction_GIANT_2017
wget https://portals.broadinstitute.org/collaboration/giant/images/c/cf/WHRadjBMI.INACTIVE.ALL.AllAncestry.txt.gz --directory BMI-Physical-Activity-Interaction_GIANT_2017
wget https://portals.broadinstitute.org/collaboration/giant/images/f/f8/WHRadjBMI.INACTIVE.ALL.European.txt.gz --directory BMI-Physical-Activity-Interaction_GIANT_2017
wget https://portals.broadinstitute.org/collaboration/giant/images/b/b6/WHRadjBMI.INACTIVE.MEN.AllAncestry.txt.gz --directory BMI-Physical-Activity-Interaction_GIANT_2017
wget https://portals.broadinstitute.org/collaboration/giant/images/b/b0/WHRadjBMI.INACTIVE.MEN.European.txt.gz --directory BMI-Physical-Activity-Interaction_GIANT_2017
wget https://portals.broadinstitute.org/collaboration/giant/images/3/30/WHRadjBMI.INACTIVE.WOMEN.AllAncestry.txt.gz --directory BMI-Physical-Activity-Interaction_GIANT_2017
wget https://portals.broadinstitute.org/collaboration/giant/images/2/23/WHRadjBMI.INACTIVE.WOMEN.European.txt.gz --directory BMI-Physical-Activity-Interaction_GIANT_2017
wget https://portals.broadinstitute.org/collaboration/giant/images/3/3d/WHRadjBMI.SNPadjPA.ALL.AllAncestry.txt.gz --directory BMI-Physical-Activity-Interaction_GIANT_2017
wget https://portals.broadinstitute.org/collaboration/giant/images/a/af/WHRadjBMI.SNPadjPA.ALL.European.txt.gz --directory BMI-Physical-Activity-Interaction_GIANT_2017
wget https://portals.broadinstitute.org/collaboration/giant/images/2/23/WHRadjBMI.SNPadjPA.MEN.AllAncestry.txt.gz --directory BMI-Physical-Activity-Interaction_GIANT_2017
wget https://portals.broadinstitute.org/collaboration/giant/images/2/23/WHRadjBMI.SNPadjPA.MEN.European.txt.gz --directory BMI-Physical-Activity-Interaction_GIANT_2017
wget https://portals.broadinstitute.org/collaboration/giant/images/7/78/WHRadjBMI.SNPadjPA.WOMEN.AllAncestry.txt.gz --directory BMI-Physical-Activity-Interaction_GIANT_2017
wget https://portals.broadinstitute.org/collaboration/giant/images/7/71/WHRadjBMI.SNPadjPA.WOMEN.European.txt.gz --directory BMI-Physical-Activity-Interaction_GIANT_2017

# Unclear whether these ones have been published.
# Downloaded from GIANT at https://portals.broadinstitute.org/collaboration/giant/index.php/GIANT_consortium_data_files
mkdir Height-Exome_GIANT_2016
wget https://portals.broadinstitute.org/collaboration/giant/images/b/bb/Height_HA_add_SV.txt.gz --directory Height-Exome_GIANT_2016
wget https://portals.broadinstitute.org/collaboration/giant/images/8/80/Height_AA_add_SV.txt.gz --directory Height-Exome_GIANT_2016
wget https://portals.broadinstitute.org/collaboration/giant/images/d/d5/Height_EA_add_SV.txt.gz --directory Height-Exome_GIANT_2016
wget https://portals.broadinstitute.org/collaboration/giant/images/7/7d/Height_EAS_add_SV.txt.gz --directory Height-Exome_GIANT_2016
wget https://portals.broadinstitute.org/collaboration/giant/images/b/bb/Height_SA_add_SV.txt.gz --directory Height-Exome_GIANT_2016
wget https://portals.broadinstitute.org/collaboration/giant/images/5/59/Height_All_add_SV.txt.gz --directory Height-Exome_GIANT_2016

# https://www.ncbi.nlm.nih.gov/pubmed/26426971
# The Influence of Age and Sex on Genetic Associations with Adult Body Size and Shape: A Large-Scale Genome-Wide Interaction Study.
# Winkler et al. 2015
mkdir BMI-Age-Stratified_Winkler_2015
wget https://portals.broadinstitute.org/collaboration/giant/images/7/7d/BMI.MEN.GT50.publicrelease.txt.gz --directory BMI-Age-Stratified_Winkler_2015
wget https://portals.broadinstitute.org/collaboration/giant/images/e/ea/BMI.MEN.LE50.publicrelease.txt.gz --directory BMI-Age-Stratified_Winkler_2015
wget https://portals.broadinstitute.org/collaboration/giant/images/7/77/BMI.WOMEN.GT50.publicrelease.txt.gz --directory BMI-Age-Stratified_Winkler_2015
wget https://portals.broadinstitute.org/collaboration/giant/images/7/7c/BMI.WOMEN.LE50.publicrelease.txt.gz --directory BMI-Age-Stratified_Winkler_2015
wget https://portals.broadinstitute.org/collaboration/giant/images/7/7c/BMI.WOMEN.LE50.publicrelease.txt.gz --directory BMI-Age-Stratified_Winkler_2015
wget https://portals.broadinstitute.org/collaboration/giant/images/6/60/WHRADJ.MEN.LE50.publicrelease.txt.gz --directory BMI-Age-Stratified_Winkler_2015
wget https://portals.broadinstitute.org/collaboration/giant/images/6/60/WHRADJ.MEN.LE50.publicrelease.txt.gz --directory BMI-Age-Stratified_Winkler_2015
wget https://portals.broadinstitute.org/collaboration/giant/images/4/48/WHRADJ.WOMEN.LE50.publicrelease.txt.gz --directory BMI-Age-Stratified_Winkler_2015
 
# https://www.ncbi.nlm.nih.gov/pubmed/25673413
# Genetic studies of body mass index yield new insights for obesity biology.
# Locke et al. 2015
mkdir BMI_Locke_2015
wget https://portals.broadinstitute.org/collaboration/giant/images/7/7b/Men_SNP_gwas_mc_merge_nogc.tbl.uniq.gz --directory BMI_Locke_2015
wget https://portals.broadinstitute.org/collaboration/giant/images/0/0d/Women_SNP_gwas_mc_merge_nogc.tbl.uniq.gz --directory BMI_Locke_2015
wget https://portals.broadinstitute.org/collaboration/giant/images/1/15/SNP_gwas_mc_merge_nogc.tbl.uniq.gz --directory BMI_Locke_2015
wget https://portals.broadinstitute.org/collaboration/giant/images/f/f0/All_ancestries_SNP_gwas_mc_merge_nogc.tbl.uniq.gz --directory BMI_Locke_2015

# https://www.ncbi.nlm.nih.gov/pubmed/25673412
# New genetic loci link adipose and insulin biology to body fat distribution.
# Shungin et al. 2015
mkdir Waist_Shungin_2015
wget https://portals.broadinstitute.org/collaboration/giant/images/2/20/GIANT_2015_HIP_MALES_EUR.txt.gz --directory Waist_Shungin_2015
wget https://portals.broadinstitute.org/collaboration/giant/images/9/9a/GIANT_2015_HIP_MALES_AllAncestries.txt.gz --directory Waist_Shungin_2015
wget https://portals.broadinstitute.org/collaboration/giant/images/3/3e/GIANT_2015_HIP_FEMALES_EUR.txt.gz --directory Waist_Shungin_2015
wget https://portals.broadinstitute.org/collaboration/giant/images/6/63/GIANT_2015_HIP_FEMALES_AllAncestries.txt.gz --directory Waist_Shungin_2015
wget https://portals.broadinstitute.org/collaboration/giant/images/e/e4/GIANT_2015_HIP_COMBINED_EUR.txt.gz --directory Waist_Shungin_2015
wget https://portals.broadinstitute.org/collaboration/giant/images/6/6f/GIANT_2015_HIP_COMBINED_AllAncestries.txt.gz --directory Waist_Shungin_2015
wget https://portals.broadinstitute.org/collaboration/giant/images/5/5f/GIANT_2015_HIPadjBMI_MALES_EUR.txt.gz --directory Waist_Shungin_2015
wget https://portals.broadinstitute.org/collaboration/giant/images/d/dd/GIANT_2015_HIPadjBMI_MALES_AllAncestries.txt.gz --directory Waist_Shungin_2015
wget https://portals.broadinstitute.org/collaboration/giant/images/a/a4/GIANT_2015_HIPadjBMI_FEMALES_EUR.txt.gz --directory Waist_Shungin_2015
wget https://portals.broadinstitute.org/collaboration/giant/images/4/47/GIANT_2015_HIPadjBMI_FEMALES_AllAncestries.txt.gz --directory Waist_Shungin_2015
wget https://portals.broadinstitute.org/collaboration/giant/images/5/52/GIANT_2015_HIPadjBMI_COMBINED_EUR.txt.gz --directory Waist_Shungin_2015
wget https://portals.broadinstitute.org/collaboration/giant/images/0/0e/GIANT_2015_HIPadjBMI_COMBINED_AllAncestries.txt.gz --directory Waist_Shungin_2015
wget https://portals.broadinstitute.org/collaboration/giant/images/5/5a/GIANT_2015_WC_MALES_EUR.txt.gz --directory Waist_Shungin_2015
wget https://portals.broadinstitute.org/collaboration/giant/images/0/00/GIANT_2015_WC_MALES_AllAncestries.txt.gz --directory Waist_Shungin_2015
wget https://portals.broadinstitute.org/collaboration/giant/images/2/2b/GIANT_2015_WC_FEMALES_EUR.txt.gz --directory Waist_Shungin_2015
wget https://portals.broadinstitute.org/collaboration/giant/images/2/28/GIANT_2015_WC_FEMALES_AllAncestries.txt.gz --directory Waist_Shungin_2015
wget https://portals.broadinstitute.org/collaboration/giant/images/7/73/GIANT_2015_WCadjBMI_COMBINED_EUR.txt.gz --directory Waist_Shungin_2015
wget https://portals.broadinstitute.org/collaboration/giant/images/3/3f/GIANT_2015_WCadjBMI_COMBINED_AllAncestries.txt.gz --directory Waist_Shungin_2015
wget https://portals.broadinstitute.org/collaboration/giant/images/5/57/GIANT_2015_WC_COMBINED_EUR.txt.gz  --directory Waist_Shungin_2015
wget https://portals.broadinstitute.org/collaboration/giant/images/e/ea/GIANT_2015_WC_COMBINED_AllAncestries.txt.gz --directory Waist_Shungin_2015
wget https://portals.broadinstitute.org/collaboration/giant/images/9/93/GIANT_2015_WCadjBMI_MALES_EUR.txt.gz --directory Waist_Shungin_2015
wget https://portals.broadinstitute.org/collaboration/giant/images/e/e0/GIANT_2015_WCadjBMI_MALES_AllAncestries.txt.gz --directory Waist_Shungin_2015
wget https://portals.broadinstitute.org/collaboration/giant/images/9/92/GIANT_2015_WCadjBMI_FEMALES_EUR.txt.gz --directory Waist_Shungin_2015
wget https://portals.broadinstitute.org/collaboration/giant/images/f/ff/GIANT_2015_WCadjBMI_FEMALES_AllAncestries.txt.gz --directory Waist_Shungin_2015
wget https://portals.broadinstitute.org/collaboration/giant/images/f/fd/GIANT_2015_WHR_MALES_EUR.txt.gz --directory Waist_Shungin_2015
wget https://portals.broadinstitute.org/collaboration/giant/images/b/ba/GIANT_2015_WHR_MALES_AllAncestries.txt.gz --directory Waist_Shungin_2015
wget https://portals.broadinstitute.org/collaboration/giant/images/d/de/GIANT_2015_WHR_FEMALES_EUR.txt.gz --directory Waist_Shungin_2015
wget https://portals.broadinstitute.org/collaboration/giant/images/1/15/GIANT_2015_WHR_FEMALES_AllAncestries.txt.gz --directory Waist_Shungin_2015
wget https://portals.broadinstitute.org/collaboration/giant/images/5/54/GIANT_2015_WHR_COMBINED_EUR.txt.gz --directory Waist_Shungin_2015
wget https://portals.broadinstitute.org/collaboration/giant/images/d/d7/GIANT_2015_WHR_COMBINED_AllAncestries.txt.gz --directory Waist_Shungin_2015
wget https://portals.broadinstitute.org/collaboration/giant/images/1/14/GIANT_2015_WHRadjBMI_MALES_EUR.txt.gz --directory Waist_Shungin_2015
wget https://portals.broadinstitute.org/collaboration/giant/images/2/20/GIANT_2015_WHRadjBMI_MALES_AllAncestries.txt.gz --directory Waist_Shungin_2015
wget https://portals.broadinstitute.org/collaboration/giant/images/f/f8/GIANT_2015_WHRadjBMI_FEMALES_EUR.txt.gz --directory Waist_Shungin_2015
wget https://portals.broadinstitute.org/collaboration/giant/images/0/04/GIANT_2015_WHRadjBMI_FEMALES_AllAncestries.txt.gz --directory Waist_Shungin_2015
wget https://portals.broadinstitute.org/collaboration/giant/images/e/eb/GIANT_2015_WHRadjBMI_COMBINED_EUR.txt.gz --directory Waist_Shungin_2015
wget https://portals.broadinstitute.org/collaboration/giant/images/f/f6/GIANT_2015_WHRadjBMI_COMBINED_AllAncestries.txt.gz --directory Waist_Shungin_2015

# https://www.ncbi.nlm.nih.gov/pubmed/25282103?dopt=Citation
# Defining the role of common variation in the genomic and biological architecture of adult human height.
# Wood et al. 2014
mkdir Height_Wood_2014
wget https://portals.broadinstitute.org/collaboration/giant/images/0/01/GIANT_HEIGHT_Wood_et_al_2014_publicrelease_HapMapCeuFreq.txt.gz --directory Height_Wood_2014

# https://www.ncbi.nlm.nih.gov/pubmed/22982992?dopt=Citation
# FTO genotype is associated with phenotypic variability of body mass index. 
# Yang et al. 2012
mkdir Height_Yang_2012
mkdir BMI_Yang_2012
wget https://portals.broadinstitute.org/collaboration/giant/images/5/5e/GIANT_Yang2012Nature_publicrelease_HapMapCeuFreq_BMI.txt.gz --directory BMI_Yang_2012
wget https://portals.broadinstitute.org/collaboration/giant/images/b/b0/GIANT_Yang2012Nature_publicrelease_HapMapCeuFreq_Height.txt.gz --directory Height_Yang_2012

# https://www.ncbi.nlm.nih.gov/pubmed/23754948?dopt=Citation
# Sex-stratified genome-wide association studies including 270,000 individuals show sexual dimorphism in genetic loci for anthropometric traits.
# Randall et al. 2013
mkdir Anthropometrics-Sex-Stratified_Randall_2013
wget https://portals.broadinstitute.org/collaboration/giant/images/3/30/GIANT_Randall2013PlosGenet_stage1_publicrelease_HapMapCeuFreq_BMI_MEN_N.txt --directory Anthropometrics-Sex-Stratified_Randall_2013
wget https://portals.broadinstitute.org/collaboration/giant/images/8/8d/GIANT_Randall2013PlosGenet_stage1_publicrelease_HapMapCeuFreq_BMI_WOMEN_N.txt --directory Anthropometrics-Sex-Stratified_Randall_2013
wget https://portals.broadinstitute.org/collaboration/giant/images/5/5c/GIANT_Randall2013PlosGenet_stage1_publicrelease_HapMapCeuFreq_HEIGHT_MEN_N.txt --directory Anthropometrics-Sex-Stratified_Randall_2013
wget https://portals.broadinstitute.org/collaboration/giant/images/f/fe/GIANT_Randall2013PlosGenet_stage1_publicrelease_HapMapCeuFreq_HEIGHT_WOMEN_N.txt --directory Anthropometrics-Sex-Stratified_Randall_2013
wget https://portals.broadinstitute.org/collaboration/giant/images/a/a9/GIANT_Randall2013PlosGenet_stage1_publicrelease_HapMapCeuFreq_HIP_MEN_N.txt --directory Anthropometrics-Sex-Stratified_Randall_2013
wget https://portals.broadinstitute.org/collaboration/giant/images/9/99/GIANT_Randall2013PlosGenet_stage1_publicrelease_HapMapCeuFreq_HIP_WOMEN_N.txt --directory Anthropometrics-Sex-Stratified_Randall_2013
wget https://portals.broadinstitute.org/collaboration/giant/images/2/2f/GIANT_Randall2013PlosGenet_stage1_publicrelease_HapMapCeuFreq_HIPadjBMI_MEN_N.txt --directory Anthropometrics-Sex-Stratified_Randall_2013
wget https://portals.broadinstitute.org/collaboration/giant/images/e/e5/GIANT_Randall2013PlosGenet_stage1_publicrelease_HapMapCeuFreq_HIPadjBMI_WOMEN_N.txt --directory Anthropometrics-Sex-Stratified_Randall_2013
wget https://portals.broadinstitute.org/collaboration/giant/images/3/33/GIANT_Randall2013PlosGenet_stage1_publicrelease_HapMapCeuFreq_WC_MEN_N.txt --directory Anthropometrics-Sex-Stratified_Randall_2013
wget https://portals.broadinstitute.org/collaboration/giant/images/e/e7/GIANT_Randall2013PlosGenet_stage1_publicrelease_HapMapCeuFreq_WC_WOMEN_N.txt --directory Anthropometrics-Sex-Stratified_Randall_2013
wget https://portals.broadinstitute.org/collaboration/giant/images/0/08/GIANT_Randall2013PlosGenet_stage1_publicrelease_HapMapCeuFreq_WCadjBMI_MEN_N.txt --directory Anthropometrics-Sex-Stratified_Randall_2013
wget https://portals.broadinstitute.org/collaboration/giant/images/2/24/GIANT_Randall2013PlosGenet_stage1_publicrelease_HapMapCeuFreq_WCadjBMI_WOMEN_N.txt --directory Anthropometrics-Sex-Stratified_Randall_2013
wget https://portals.broadinstitute.org/collaboration/giant/images/f/f8/GIANT_Randall2013PlosGenet_stage1_publicrelease_HapMapCeuFreq_WEIGHT_MEN_N.txt --directory Anthropometrics-Sex-Stratified_Randall_2013
wget https://portals.broadinstitute.org/collaboration/giant/images/c/cc/GIANT_Randall2013PlosGenet_stage1_publicrelease_HapMapCeuFreq_WEIGHT_WOMEN_N.txt --directory Anthropometrics-Sex-Stratified_Randall_2013
wget https://portals.broadinstitute.org/collaboration/giant/images/f/fe/GIANT_Randall2013PlosGenet_stage1_publicrelease_HapMapCeuFreq_WHR_MEN_N.txt --directory Anthropometrics-Sex-Stratified_Randall_2013
wget https://portals.broadinstitute.org/collaboration/giant/images/f/f0/GIANT_Randall2013PlosGenet_stage1_publicrelease_HapMapCeuFreq_WHR_WOMEN_N.txt --directory Anthropometrics-Sex-Stratified_Randall_2013
wget https://portals.broadinstitute.org/collaboration/giant/images/f/f7/GIANT_Randall2013PlosGenet_stage1_publicrelease_HapMapCeuFreq_WHRadjBMI_MEN_N.txt --directory Anthropometrics-Sex-Stratified_Randall_2013
wget https://portals.broadinstitute.org/collaboration/giant/images/4/40/GIANT_Randall2013PlosGenet_stage1_publicrelease_HapMapCeuFreq_WHRadjBMI_WOMEN_N.txt --directory Anthropometrics-Sex-Stratified_Randall_2013

# https://www.ncbi.nlm.nih.gov/pubmed/23563607?dopt=Citation
# Genome-wide meta-analysis identifies 11 new loci for anthropometric traits and provides insights into genetic architecture.
# Berndt et al. 2013
mkdir Anthropometric-Extremes_Berndt_2013
wget https://portals.broadinstitute.org/collaboration/giant/images/9/98/GIANT_EXTREME_BMI_Stage1_Berndt2013_publicrelease_HapMapCeuFreq.txt.gz --directory Anthropometric-Extremes_Berndt_2013
wget https://portals.broadinstitute.org/collaboration/giant/images/b/bd/GIANT_EXTREME_HEIGHT_Stage1_Berndt2013_publicrelease_HapMapCeuFreq.txt.gz --directory Anthropometric-Extremes_Berndt_2013
wget https://portals.broadinstitute.org/collaboration/giant/images/b/b2/GIANT_EXTREME_WHR_Stage1_Berndt2013_publicrelease_HapMapCeuFreq.txt.gz --directory Anthropometric-Extremes_Berndt_2013
wget https://portals.broadinstitute.org/collaboration/giant/images/4/42/GIANT_OBESITY_CLASS1_Stage1_Berndt2013_publicrelease_HapMapCeuFreq.txt.gz --directory Anthropometric-Extremes_Berndt_2013
wget https://portals.broadinstitute.org/collaboration/giant/images/a/a9/GIANT_OBESITY_CLASS2_Stage1_Berndt2013_publicrelease_HapMapCeuFreq.txt.gz --directory Anthropometric-Extremes_Berndt_2013
wget https://portals.broadinstitute.org/collaboration/giant/images/d/d0/GIANT_OBESITY_CLASS3_Stage1_Berndt2013_publicrelease_HapMapCeuFreq.txt.gz --directory Anthropometric-Extremes_Berndt_2013
wget https://portals.broadinstitute.org/collaboration/giant/images/3/3a/GIANT_OVERWEIGHT_Stage1_Berndt2013_publicrelease_HapMapCeuFreq.txt.gz --directory Anthropometric-Extremes_Berndt_2013

# https://www.ncbi.nlm.nih.gov/pubmed/20935630?dopt=Citation
# Association analyses of 249,796 individuals reveal 18 new loci associated with body mass index.
# Speliotes et al. 2010
mkdir BMI_Speliotes_2010
wget https://portals.broadinstitute.org/collaboration/giant/images/3/33/GIANT_BMI_Speliotes2010_publicrelease_HapMapCeuFreq.txt --directory BMI_Speliotes_2010 

# https://www.ncbi.nlm.nih.gov/pubmed/20881960?dopt=Citation
# Hundreds of variants clustered in genomic loci and biological pathways affect human height.
# Lango Allen et al. 2010
mkdir Height_Lango-Allen_2010
wget https://portals.broadinstitute.org/collaboration/giant/images/4/47/GIANT_HEIGHT_LangoAllen2010_publicrelease_HapMapCeuFreq.txt --directory Height_Lango-Allen_2010

# https://www.ncbi.nlm.nih.gov/pubmed/20935629?dopt=Citation
# Meta-analysis identifies 13 new loci associated with waist-hip ratio and reveals sexual dimorphism in the genetic basis of fat distribution.
# Heid et al. 2010
mkdir Waist-Hip-Ratio-Adjusted-For-BMI_Heid_2010
wget https://portals.broadinstitute.org/collaboration/giant/images/0/0d/GIANT_WHRadjBMI_Heid2010_publicrelease_HapMapCeuFreq.txt --directory Waist-Hip-Ratio-Adjusted-For-BMI_Heid_2010

# https://www.ncbi.nlm.nih.gov/pubmed/28452372
# 1000 Genomes-based meta-analysis identifies 10 novel loci for kidney function.
# Gorski et al. 2017
mkdir Kidney-Function_Gorski_2017
wget http://ckdgen.imbi.uni-freiburg.de/files/Gorski2017/CKDGen_1000Genomes_DiscoveryMeta_eGFRcrea_overall.csv.gz --directory Kidney-Function_Gorski_2017
wget http://ckdgen.imbi.uni-freiburg.de/files/Gorski2017/CKDGen_1000Genomes_DiscoveryMeta_eGFRcys_overall.csv.gz --directory Kidney-Function_Gorski_2017

# https://www.ncbi.nlm.nih.gov/pubmed/26831199
# Genetic associations at 53 loci highlight cell types and biological pathways relevant for kidney function
# Pattaro et al. 2016
mkdir Estimated-Glomerular-Filtration-Rate_Pattaro_2016
wget http://ckdgen.imbi.uni-freiburg.de/files/Pattaro2016/formatted_round3meta_eGFRcrea_overall_IV_2GC_b36_MAFget005_Nget50_20120705_b37.csv.gz --directory Estimated-Glomerular-Filtration-Rate_Pattaro_2016
wget http://ckdgen.imbi.uni-freiburg.de/files/Pattaro2016/formatted_round3meta_eGFRcrea_DM_IV_2GC_b36_MAFget005_Nget50_20140331.csv.gz --directory Estimated-Glomerular-Filtration-Rate_Pattaro_2016
wget http://ckdgen.imbi.uni-freiburg.de/files/Pattaro2016/formatted_round3meta_eGFRcrea_nonDM_IV_2GC_b36_MAFget005_Nget50_20120627_b37.csv.gz --directory Estimated-Glomerular-Filtration-Rate_Pattaro_2016
wget http://ckdgen.imbi.uni-freiburg.de/files/Pattaro2016/formatted_round3meta_eGFRcys_overall_IV_2GC_b36_MAFget005_Nget50_20120725_b37.csv.gz --directory Estimated-Glomerular-Filtration-Rate_Pattaro_2016
wget http://ckdgen.imbi.uni-freiburg.de/files/Pattaro2016/formatted_round3meta_CKD_overall_IV_2GC_b36_MAFget005_Nget50_20120725_b37.csv.gz --directory Estimated-Glomerular-Filtration-Rate_Pattaro_2016
wget http://ckdgen.imbi.uni-freiburg.de/files/Pattaro2016/formatted_AA_eGFRcrea_overall_2GC_b36_MAFget005_Nget50.csv.gz --directory Estimated-Glomerular-Filtration-Rate_Pattaro_2016

# https://www.ncbi.nlm.nih.gov/pubmed/26631737
# Genome-wide Association Studies Identify Genetic Loci Associated With Albuminuria in Diabetes.
# Teumer et al. 2016
mkdir Albuminuria_Teumer_2016
wget http://ckdgen.imbi.uni-freiburg.de/files/Teumer2015/formatted_round3meta_UACR_overall_IV_2GC_b36_MAFget005_Nget50_20140505.csv.gz --directory Albuminuria_Teumer_2016
wget http://ckdgen.imbi.uni-freiburg.de/files/Teumer2015/formatted_Round3_UACR_DM_2GC_b36_MAFget005_Nget50_2014_03_17.csv.gz --directory Albuminuria_Teumer_2016
wget http://ckdgen.imbi.uni-freiburg.de/files/Teumer2015/formatted_Round3_UACR_noDM_2GC_b36_MAFget005_Nget50_2014_09_29.csv.gz --directory Albuminuria_Teumer_2016
wget http://ckdgen.imbi.uni-freiburg.de/files/Teumer2015/formatted_MA_overall_2GC_b36_MAFget005_Nget50.csv.gz --directory Albuminuria_Teumer_2016

# https://www.ncbi.nlm.nih.gov/pubmed/25493955
# Genome-wide association study of kidney function decline in individuals of European descent.
# Gorski et al. 2015
mkdir Kidney-Function_Gorski_2015
wget http://ckdgen.imbi.uni-freiburg.de/files/Gorski2015/CKDGen_Progression_DiscoveryMeta_CKDi_overall.csv.gz --directory Kidney-Function_Gorski_2015
wget http://ckdgen.imbi.uni-freiburg.de/files/Gorski2015/CKDGen_Progression_DiscoveryMeta_CKDi25_overall.csv.gz --directory Kidney-Function_Gorski_2015
wget http://ckdgen.imbi.uni-freiburg.de/files/Gorski2015/CKDGen_Progression_DiscoveryMeta_eGFRdecline_CKD.csv.gz --directory Kidney-Function_Gorski_2015
wget http://ckdgen.imbi.uni-freiburg.de/files/Gorski2015/CKDGen_Progression_DiscoveryMeta_eGFRdecline_noCKD.csv.gz --directory Kidney-Function_Gorski_2015
wget http://ckdgen.imbi.uni-freiburg.de/files/Gorski2015/CKDGen_Progression_DiscoveryMeta_eGFRdecline_overall.csv.gz --directory Kidney-Function_Gorski_2015
wget http://ckdgen.imbi.uni-freiburg.de/files/Gorski2015/CKDGen_Progression_DiscoveryMeta_Rapid3_noCKD.csv.gz --directory Kidney-Function_Gorski_2015
wget http://ckdgen.imbi.uni-freiburg.de/files/Gorski2015/CKDGen_Progression_DiscoveryMeta_Rapid3_overall.csv.gz --directory Kidney-Function_Gorski_2015

# https://www.ncbi.nlm.nih.gov/pubmed/20383146
# New loci associated with kidney function and chronic kidney disease.
# Kottgen et al. 2010
mkdir Kidney-Function_Kottgen_2010
wget http://ckdgen.imbi.uni-freiburg.de/files/KottgenBoger2011/CKDGen-eGFRcrea_meta_post.csv.gz --directory Kidney-Function_Kottgen_2010
wget http://ckdgen.imbi.uni-freiburg.de/files/KottgenBoger2011/CKDGen-eGFRcys_meta_post.csv.gz --directory Kidney-Function_Kottgen_2010
wget http://ckdgen.imbi.uni-freiburg.de/files/KottgenBoger2011/CKDGen-CKD_meta_post.csv.gz --directory Kidney-Function_Kottgen_2010

# https://www.ncbi.nlm.nih.gov/pubmed/21355061
# CUBN is a gene locus for albuminuria.
# Boger et al. 2011
mkdir Albuminuria_Boger_2011
wget http://ckdgen.imbi.uni-freiburg.de/files/KottgenBoger2011/CKDGen-UACR_meta_post.csv.gz --directory Albuminuria_Boger_2011
wget http://ckdgen.imbi.uni-freiburg.de/files/KottgenBoger2011/CKDGen-MA_meta_post.csv.gz --directory Albuminuria_Boger_2011

# https://www.ncbi.nlm.nih.gov/pubmed/27046643
# Genome-wide association study of cognitive functions and educational attainment in UK Biobank 
# Davies et al. 2016
mkdir Cognitive-Functions_Davies_2016
wget http://www.psy.ed.ac.uk/ccace/downloads/Davies_MP_2016.zip --directory Cognitive-Functions_Davies_2016

# https://www.ncbi.nlm.nih.gov/pubmed/27864402
# Molecular genetic contributions to self-rated health.
# Harris et al. 2016
mkdir Self-Rated-Health_Harris_2016
wget http://www.psy.ed.ac.uk/ccace/downloads/Harris2016_IJE_self_rated_health.zip --directory Self-Rated-Health_Harris_2016

# https://www.ncbi.nlm.nih.gov/pubmed/27818178
# Molecular Genetic Contributions to Social Deprivation and Household Income in UK Biobank.
# Hill et al. 2016
mkdir Social-Deprivation_Hill_2016
wget http://www.psy.ed.ac.uk/ccace/downloads/Hill_CB_2016.zip --directory Social-Deprivation_Hill_2016

# https://www.ncbi.nlm.nih.gov/pubmed/28194004
# Genetic contributions to self-reported tiredness.
# Deary et al. 2018
mkdir Tiredness_Deary_2018
wget http://www.psy.ed.ac.uk/ccace/downloads/Deary2017_Mol_Psych_tiredness.zip --directory Tiredness_Deary_2018

# https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5308812/
# Genetic prediction of male pattern baldness
# Hagenaars et al. 2017
# PMID: 28196072 PMCID: PMC5308812 DOI: 10.1371/journal.pgen.1006594
mkdir Male-Pattern-Baldness_Hagenaars_2017
wget http://www.psy.ed.ac.uk/ccace/downloads/Hagenaars2017_UKB_MPB_summary_results.zip --directory  Male-Pattern-Baldness_Hagenaars_2017

# https://www.ncbi.nlm.nih.gov/pubmed/28077804 
# The complex genetics of gait speed: genome-wide meta-analysis approach.
# Ben-Avraham et al. 2017
mkdir Gait-Speed_Ben-Avraham_2017
wget https://grasp.nhlbi.nih.gov/downloads/FullResults/2017/2017_Ben_Avrahim/Gait-Aging-All.txt --directory Gait-Speed_Ben-Avraham_2017
wget https://grasp.nhlbi.nih.gov/downloads/FullResults/2017/2017_Ben_Avrahim/CHARGE_Gait_speed_README.docx --directory Gait-Speed_Ben-Avraham_2017

# https://www.ncbi.nlm.nih.gov/pubmed/27918534
# Multiethnic genome-wide meta-analysis of ectopic fat depots identifies loci associated with adipocyte development and differentiation.
# Chu et al. 2017
mkdir Ectopic-Fat-Traits_Chu_2017
wget https://grasp.nhlbi.nih.gov/downloads/FullResults/2017/2017_Chu/PAT.tar.gz --directory Ectopic-Fat-Traits_Chu_2017
wget https://grasp.nhlbi.nih.gov/downloads/FullResults/2017/2017_Chu/PATadjHtWt.tar.gz --directory Ectopic-Fat-Traits_Chu_2017
wget https://grasp.nhlbi.nih.gov/downloads/FullResults/2017/2017_Chu/SAT.tar.gz --directory Ectopic-Fat-Traits_Chu_2017
wget https://grasp.nhlbi.nih.gov/downloads/FullResults/2017/2017_Chu/SATHU.tar.gz --directory Ectopic-Fat-Traits_Chu_2017
wget https://grasp.nhlbi.nih.gov/downloads/FullResults/2017/2017_Chu/VAT.tar.gz --directory Ectopic-Fat-Traits_Chu_2017
wget https://grasp.nhlbi.nih.gov/downloads/FullResults/2017/2017_Chu/VATadjBMI.tar.gz --directory Ectopic-Fat-Traits_Chu_2017
wget https://grasp.nhlbi.nih.gov/downloads/FullResults/2017/2017_Chu/VATHU.tar.gz --directory Ectopic-Fat-Traits_Chu_2017
wget https://grasp.nhlbi.nih.gov/downloads/FullResults/2017/2017_Chu/VATSAT.tar.gz --directory Ectopic-Fat-Traits_Chu_2017
wget https://grasp.nhlbi.nih.gov/downloads/FullResults/2017/2017_Chu/VATSATadjBMI.tar.gz --directory Ectopic-Fat-Traits_Chu_2017
wget https://grasp.nhlbi.nih.gov/downloads/FullResults/2017/2017_Chu/ChuVATgenREADME.txt --directory Ectopic-Fat-Traits_Chu_2017

# https://www.ncbi.nlm.nih.gov/pubmed/27920155
# SOS2 and ACP1 Loci Identified through Large-Scale Exome Chip Analysis Regulate Kidney Development and Function.
# Li et al. 2017
mkdir Kidney-Function_Li_2017
wget http://ckdgen.imbi.uni-freiburg.de/files/Li2017/LiEtAl2017.tar.gz --directory Kidney-Function_Li_2017

# https://www.ncbi.nlm.nih.gov/pubmed/28757204
# Low-Frequency Synonymous Coding Variation in CYP2R1 Has Large Effects on Vitamin D Levels and Risk of Multiple Sclerosis.
# Manousaki et al. 2017
mkdir Vitamin-D_Manousaki_2017
wget https://grasp.nhlbi.nih.gov/downloads/FullResults/2017/2017_Manousaki/vitd.gwama.out.gz --directory Vitamin-D_Manousaki_2017
wget https://grasp.nhlbi.nih.gov/downloads/FullResults/2017/2017_Manousaki/vitD.Manousaki.README.txt --directory Vitamin-D_Manousaki_2017

# https://www.ncbi.nlm.nih.gov/pubmed/?term=28800628
# GENomE wide analysis of sotalol-induced IKr inhibition during ventricular REPOLarization, "GENEREPOL study": Lack of common variants with large effect sizes.
# Salem et al. 2017
mkdir Ventricular-Repolarization_Salem_2017
wget https://grasp.nhlbi.nih.gov/downloads/FullResults/2017/2017_Salem/GENEREPOL_GWAS_DeltaAmplitude_PlosOne.txt --directory Ventricular-Repolarization_Salem_2017
wget https://grasp.nhlbi.nih.gov/downloads/FullResults/2017/2017_Salem/Salem_SotalolECGdrugEffects_README.txt --directory Ventricular-Repolarization_Salem_2017

# https://www.ncbi.nlm.nih.gov/pubmed/28358823
# Genome-wide association screens for Achilles tendon and ACL tears and tendinopathy.
# Kim et al. 2017
mkdir Achilles-Injury_Kim_2017
mkdir ACL-Injury_Kim_2017
wget https://grasp.nhlbi.nih.gov/downloads/FullResults/2017/2017_Kim_ACL_Achilles/ACLSummary3.txt.zip --directory ACL-Injury_Kim_2017
wget https://grasp.nhlbi.nih.gov/downloads/FullResults/2017/2017_Kim_ACL_Achilles/AchillesSummary.txt.zip --directory Achilles-Injury_Kim_2017
wget https://grasp.nhlbi.nih.gov/downloads/FullResults/2017/2017_Kim_ACL_Achilles/KimAchillesReadme.txt --directory ACL-Injury_Kim_2017
wget https://grasp.nhlbi.nih.gov/downloads/FullResults/2017/2017_Kim_ACL_Achilles/KimAchillesReadme.txt --directory Achilles-Injury_Kim_2017

# https://www.ncbi.nlm.nih.gov/pubmed/28957384
# Two genetic loci associated with ankle injury.
# Kim et al. 2017
mkdir Ankle-Injury_Kim_2017
wget https://grasp.nhlbi.nih.gov/downloads/FullResults/2017/2017_Kim_Ankle_Injury/Ankle3b_META_sort.txt.zip --directory Ankle-Injury_Kim_2017
wget https://grasp.nhlbi.nih.gov/downloads/FullResults/2017/2017_Kim_Ankle_Injury/KimAnkleReadme.txt --directory Ankle-Injury_Kim_2017

# https://www.ncbi.nlm.nih.gov/pubmed/29534260
# Two Genetic Variants Associated with Plantar Fascial Disorders.
# Kim et al. 2018
mkdir Plantar-Fasciitis_Kim_2018
wget https://grasp.nhlbi.nih.gov/downloads/FullResults/2017/2017_Kim_Plantar_fasciitis/PlantarSummary.txt.zip --directory Plantar-Fasciitis_Kim_2018
wget https://grasp.nhlbi.nih.gov/downloads/FullResults/2017/2017_Kim_Plantar_fasciitis/KimPlantarReadme.txt  --directory Plantar-Fasciitis_Kim_2018

# https://www.ncbi.nlm.nih.gov/pubmed/28521375
# A Genetic Marker Associated with Shoulder Dislocation.
# Kim et al. 2017
mkdir Shoulder-Dislocation_Kim_2017
wget https://grasp.nhlbi.nih.gov/downloads/FullResults/2017/2017_Kim_Shoulder_dislocation/Dislocation_EUR_sort.txt.zip --directory  Shoulder-Dislocation_Kim_2017
wget https://grasp.nhlbi.nih.gov/downloads/FullResults/2017/2017_Kim_Shoulder_dislocation/Dislocation_LAT_sort.txt.zip --directory  Shoulder-Dislocation_Kim_2017
wget https://grasp.nhlbi.nih.gov/downloads/FullResults/2017/2017_Kim_Shoulder_dislocation/Dislocation2_EAS_filter.txt.zip --directory  Shoulder-Dislocation_Kim_2017
wget https://grasp.nhlbi.nih.gov/downloads/FullResults/2017/2017_Kim_Shoulder_dislocation/Dislocation_EUR_LAT_META_sort.txt.zip --directory  Shoulder-Dislocation_Kim_2017
wget https://grasp.nhlbi.nih.gov/downloads/FullResults/2017/2017_Kim_Shoulder_dislocation/Dislocation2_ALLMETA_sort.txt.zip --directory  Shoulder-Dislocation_Kim_2017
wget https://grasp.nhlbi.nih.gov/downloads/FullResults/2017/2017_Kim_Shoulder_dislocation/KimShoulderReadme.txt --directory  Shoulder-Dislocation_Kim_2017

# https://www.ncbi.nlm.nih.gov/pubmed/28482362
# Two Genetic Loci associated with Medial Collateral Ligament Injury.
# Roos et al. 2017
mkdir Medial-Collateral-Ligament-Injury_Roos_2017
wget https://grasp.nhlbi.nih.gov/downloads/FullResults/2017/2017_Roos_MCL/MCLSummary.txt.zip --directory Medial-Collateral-Ligament-Injury_Roos_2017
wget https://grasp.nhlbi.nih.gov/downloads/FullResults/2017/2017_Roos_MCL/RoosMCLreadme.txt --directory Medial-Collateral-Ligament-Injury_Roos_2017

# http://journals.plos.org/plosone/article?id=10.1371/journal.pone.0189317
# Genome-wide association study identifies a locus associated with rotator cuff injury
# Roos et al. 2017
# PMID: 29228018 PMCID: PMC5724859 DOI: 10.1371/journal.pone.0189317
mkdir Rotator-Cuff-Injury_Roos_2017
wget https://grasp.nhlbi.nih.gov/downloads/FullResults/2017/2017_Roos_Rotator_Cuff/RotatorCuffSummary.txt.zip --directory Rotator-Cuff-Injury_Roos_2017
wget https://grasp.nhlbi.nih.gov/downloads/FullResults/2017/2017_Roos_Rotator_Cuff/RoosRotatorReadme.txt --directory Rotator-Cuff-Injury_Roos_2017

# https://www.ncbi.nlm.nih.gov/pubmed/28892062
# Genome-wide association study identifies 112 new loci for body mass index in the Japanese population.
# Akiyama et al. 2017
mkdir BMI_Akiyama_2017
wget https://humandbs.biosciencedbc.jp/files/hum0014/hum0014.v6.158k.v1.zip --directory BMI_Akiyama_2017

# https://www.nature.com/articles/s41588-018-0057-4
# Genome-wide mapping of global-to-local genetic effects on human facial shape
# Claes et al. 2018
# PMID: 29459680 PMCID: PMC5937280 DOI: 10.1038/s41588-018-0057-4
mkdir Facial-Shape_Claes_2018
wget https://mirc.uzleuven.be/MedicalImagingCenter/ImagingGenetics/FacialGWAS/DATA/GWASEXPORT/CHR1.txt.zip --directory Facial-Shape_Claes_2018
wget https://mirc.uzleuven.be/MedicalImagingCenter/ImagingGenetics/FacialGWAS/DATA/GWASEXPORT/CHR2.txt.zip --directory Facial-Shape_Claes_2018
wget https://mirc.uzleuven.be/MedicalImagingCenter/ImagingGenetics/FacialGWAS/DATA/GWASEXPORT/CHR3.txt.zip --directory Facial-Shape_Claes_2018
wget https://mirc.uzleuven.be/MedicalImagingCenter/ImagingGenetics/FacialGWAS/DATA/GWASEXPORT/CHR4.txt.zip --directory Facial-Shape_Claes_2018
wget https://mirc.uzleuven.be/MedicalImagingCenter/ImagingGenetics/FacialGWAS/DATA/GWASEXPORT/CHR5.txt.zip --directory Facial-Shape_Claes_2018
wget https://mirc.uzleuven.be/MedicalImagingCenter/ImagingGenetics/FacialGWAS/DATA/GWASEXPORT/CHR6.txt.zip --directory Facial-Shape_Claes_2018
wget https://mirc.uzleuven.be/MedicalImagingCenter/ImagingGenetics/FacialGWAS/DATA/GWASEXPORT/CHR7.txt.zip --directory Facial-Shape_Claes_2018
wget https://mirc.uzleuven.be/MedicalImagingCenter/ImagingGenetics/FacialGWAS/DATA/GWASEXPORT/CHR8.txt.zip --directory Facial-Shape_Claes_2018
wget https://mirc.uzleuven.be/MedicalImagingCenter/ImagingGenetics/FacialGWAS/DATA/GWASEXPORT/CHR9.txt.zip --directory Facial-Shape_Claes_2018
wget https://mirc.uzleuven.be/MedicalImagingCenter/ImagingGenetics/FacialGWAS/DATA/GWASEXPORT/CHR10.txt.zip --directory Facial-Shape_Claes_2018
wget https://mirc.uzleuven.be/MedicalImagingCenter/ImagingGenetics/FacialGWAS/DATA/GWASEXPORT/CHR11.txt.zip --directory Facial-Shape_Claes_2018
wget https://mirc.uzleuven.be/MedicalImagingCenter/ImagingGenetics/FacialGWAS/DATA/GWASEXPORT/CHR12.txt.zip --directory Facial-Shape_Claes_2018
wget https://mirc.uzleuven.be/MedicalImagingCenter/ImagingGenetics/FacialGWAS/DATA/GWASEXPORT/CHR13.txt.zip --directory Facial-Shape_Claes_2018
wget https://mirc.uzleuven.be/MedicalImagingCenter/ImagingGenetics/FacialGWAS/DATA/GWASEXPORT/CHR14.txt.zip --directory Facial-Shape_Claes_2018
wget https://mirc.uzleuven.be/MedicalImagingCenter/ImagingGenetics/FacialGWAS/DATA/GWASEXPORT/CHR15.txt.zip --directory Facial-Shape_Claes_2018
wget https://mirc.uzleuven.be/MedicalImagingCenter/ImagingGenetics/FacialGWAS/DATA/GWASEXPORT/CHR16.txt.zip --directory Facial-Shape_Claes_2018
wget https://mirc.uzleuven.be/MedicalImagingCenter/ImagingGenetics/FacialGWAS/DATA/GWASEXPORT/CHR17.txt.zip --directory Facial-Shape_Claes_2018
wget https://mirc.uzleuven.be/MedicalImagingCenter/ImagingGenetics/FacialGWAS/DATA/GWASEXPORT/CHR18.txt.zip --directory Facial-Shape_Claes_2018
wget https://mirc.uzleuven.be/MedicalImagingCenter/ImagingGenetics/FacialGWAS/DATA/GWASEXPORT/CHR19.txt.zip --directory Facial-Shape_Claes_2018
wget https://mirc.uzleuven.be/MedicalImagingCenter/ImagingGenetics/FacialGWAS/DATA/GWASEXPORT/CHR20.txt.zip --directory Facial-Shape_Claes_2018
wget https://mirc.uzleuven.be/MedicalImagingCenter/ImagingGenetics/FacialGWAS/DATA/GWASEXPORT/CHR21.txt.zip --directory Facial-Shape_Claes_2018
wget https://mirc.uzleuven.be/MedicalImagingCenter/ImagingGenetics/FacialGWAS/DATA/GWASEXPORT/CHR22.txt.zip --directory Facial-Shape_Claes_2018
wget https://mirc.uzleuven.be/MedicalImagingCenter/ImagingGenetics/FacialGWAS/DATA/GWASEXPORT/CHR23.txt.zip --directory Facial-Shape_Claes_2018

# https://www.nature.com/articles/s41588-017-0011-x
# Protein-altering variants associated with body mass index implicate pathways that control energy intake and expenditure in obesity
# Turcot et al. 2017
# PMID: 29273807 PMCID: PMC5945951 DOI: 10.1038/s41588-017-0011-x
mkdir BMI-Exome_Turcot_2017
wget http://portals.broadinstitute.org/collaboration/giant/images/2/21/BMI_All_ancestry.fmt.gzip --directory BMI-Exome_Turcot_2017
wget http://portals.broadinstitute.org/collaboration/giant/images/3/33/BMI_African_American.fmt.gzip  --directory BMI-Exome_Turcot_2017
wget http://portals.broadinstitute.org/collaboration/giant/images/7/78/BMI_Eastern_Asian.fmt.gzip  --directory BMI-Exome_Turcot_2017
wget http://portals.broadinstitute.org/collaboration/giant/images/3/37/BMI_European.fmt.gzip  --directory BMI-Exome_Turcot_2017
wget http://portals.broadinstitute.org/collaboration/giant/images/a/ad/BMI_Hispanic_American.fmt.gzip --directory BMI-Exome_Turcot_2017
wget http://portals.broadinstitute.org/collaboration/giant/images/0/02/BMI_South_Asian.fmt.gzip --directory BMI-Exome_Turcot_2017

# https://www.nature.com/articles/s41588-017-0014-7
# Multiancestry association study identifies new asthma risk loci that colocalize with immune-cell enhancer marks.
# Demenais et al. 2017
# PMID: 29273806 PMCID: PMC5901974 DOI: 10.1038/s41588-017-0014-7
mkdir Asthma_Demenais_2017
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/DemenaisF_29273806_GCST005212/TAGC_meta-analyses_results_for_asthma_risk.zip --directory Asthma_Demenais_2017

# https://www.nature.com/articles/s41588-017-0013-8
# Association analysis in over 329,000 individuals identifies 116 independent variants influencing neuroticism 
# Luciano et al. 2017
# PMID: 29255261 PMCID: PMC5985926 DOI: 10.1038/s41588-017-0013-8
mkdir Neuroticism_Luciano_2017
wget http://www.psy.ed.ac.uk/ccace/downloads/Luciano_2017.zip --directory Neuroticism_Luciano_2017

# https://www.nature.com/articles/ng.3973
# Genome-wide association analysis identifies 30 new susceptibility loci for schizophrenia
# Li et al. 2017
# PMID: 28991256 DOI: 10.1038/ng.3973
mkdir Schizophrenia_Li_2017
wget https://ndownloader.figshare.com/files/9500335 --directory Schizophrenia_Li_2017
mv Schizophrenia_Li_2017/9500335 Schizophrenia_Li_2017/Schizophrenia_Li_2017.txt.gz

# https://www.nature.com/articles/ng.3888#supplementary-information
# Genome-wide association analysis of insomnia complaints identifies risk genes and genetic overlap with psychiatric and metabolic traits
# Hammerschlag et al. 2017
# PMID: 28604731 PMCID: PMC5600256 DOI: 10.1038/ng.3888
mkdir Insomnia_Hammerschlag_2017
wget http://ctg.cncr.nl/documents/p1651/Hammerschlag_NatGenet2017_insomnia_sumstats-full_090617.txt.gz --directory Insomnia_Hammerschlag_2017

# https://www.nature.com/articles/ng.3869
# Genome-wide association meta-analysis of 78,308 individuals identifies new loci and genes influencing human intelligence.
# Sniekers et al. 2017
# PMID: 28530673 PMCID: PMC5665562 DOI: 10.1038/ng.3869
mkdir Intelligence_Sniekers_2017
wget http://ctg.cncr.nl/documents/p1651/sumstats.txt.gz --directory Intelligence_Sniekers_2017

# https://www.nature.com/articles/ng.3977
# Exome-wide association study of plasma lipids in >300,000 individuals
# Liu et al. 2017
# PMID: 29083408 PMCID: PMC5709146 DOI: 10.1038/ng.3977
mkdir Plasma-Lipids_Liu_2017
wget http://csg.sph.umich.edu/abecasis/public/lipids2017/GLGC_exome_LDL_release.txt --directory Plasma-Lipids_Liu_2017
wget http://csg.sph.umich.edu/abecasis/public/lipids2017/GLGC_exome_HDL_release.txt  --directory Plasma-Lipids_Liu_2017
wget http://csg.sph.umich.edu/abecasis/public/lipids2017/GLGC_exome_TG_release.txt --directory Plasma-Lipids_Liu_2017
wget http://csg.sph.umich.edu/abecasis/public/lipids2017/GLGC_exome_TC_release.txt --directory Plasma-Lipids_Liu_2017

# https://www.nature.com/articles/ng.3978
# Exome chip meta-analysis identifies novel loci and East Asian–specific coding variants that contribute to lipid levels and coronary artery disease
# Lu et al. 2017
# PMID: 29083407 PMCID: PMC5899829 DOI: 10.1038/ng.3978
mkdir Plasma-Lipids_Lu_2017
wget http://csg.sph.umich.edu/abecasis/public/lipids2017EastAsian/EastAsian_exome_LDL.txt --directory Plasma-Lipids_Lu_2017
wget http://csg.sph.umich.edu/abecasis/public/lipids2017EastAsian/EastAsian_exome_HDL.txt --directory Plasma-Lipids_Lu_2017
wget http://csg.sph.umich.edu/abecasis/public/lipids2017EastAsian/EastAsian_exome_TG.txt --directory Plasma-Lipids_Lu_2017
wget http://csg.sph.umich.edu/abecasis/public/lipids2017EastAsian/EastAsian_exome_TC.txt --directory Plasma-Lipids_Lu_2017
wget http://csg.sph.umich.edu/abecasis/public/lipids2017/European_EastAsian_exome_LDL.txt --directory Plasma-Lipids_Lu_2017
wget http://csg.sph.umich.edu/abecasis/public/lipids2017/European_EastAsian_exome_HDL.txt --directory Plasma-Lipids_Lu_2017
wget http://csg.sph.umich.edu/abecasis/public/lipids2017/European_EastAsian_exome_TG.txt --directory Plasma-Lipids_Lu_2017
wget http://csg.sph.umich.edu/abecasis/public/lipids2017/European_EastAsian_exome_TC.txt --directory Plasma-Lipids_Lu_2017

# https://www.nature.com/articles/ng.3943
# Identification of new susceptibility loci for type 2 diabetes and shared etiological pathways with coronary heart disease
# Zhao et al. 2017
# PMID: 28869590 PMCID: PMC5844224 DOI: 10.1038/ng.3943
mkdir Type-2-Diabetes_Zhao_2017
wget http://www.med.upenn.edu/ccebfiles//t2d_meta_cleaned.zip --directory Type-2-Diabetes_Zhao_2017

# https://www.nature.com/articles/ejhg2014110
# A genome-wide association study identifies PLCL2 and AP3D1-DOT1L-SF3A2 as new susceptibility loci for myocardial infarction in Japanese
# Hirokawa et al 2015
# PMID: 24916648 PMCID: PMC4326706 DOI: 10.1038/ejhg.2014.110
mkdir Myocardial-Infarction_Hirokawa_2015
wget https://humandbs.biosciencedbc.jp/files/hum0014/hum0014_freq.xlsx --directory Myocardial-Infarction_Hirokawa_2015

# https://www.nature.com/articles/ncomms10531
# Genome-wide association studies in the Japanese population identify seven novel loci for type 2 diabetes
# Imamura et al 2015
# PMID: 26818947 PMCID: PMC4738362 DOI: 10.1038/ncomms10531
mkdir Type-2-Diabetes_Imamura_2015
wget https://humandbs.biosciencedbc.jp/files/hum0014/hum0014.v3.T2DM-1.v1.xlsx --directory Type-2-Diabetes_Imamura_2015
wget https://humandbs.biosciencedbc.jp/files/hum0014/hum0014.v3.T2DM-2.v1.xlsx --directory Type-2-Diabetes_Imamura_2015

# https://www.nature.com/articles/ng.2438
# Genome-wide association study identifies eight new susceptibility loci for atopic dermatitis in the Japanese population
# Hirota et al. 2012
# PMID: 23042114 DOI: 10.1038/ng.2438
mkdir Atopic-Dermatitis_Hirota_2012
wget https://humandbs.biosciencedbc.jp/files/hum0014/hum0014.v4.AD.v1.zip --directory Atopic-Dermatitis_Hirota_2012

# https://www.nature.com/articles/ng.3842
# Identification of six new genetic loci associated with atrial fibrillation in the Japanese population
# Low et al. 2017
# PMID: 28416822 DOI: 10.1038/ng.3842
mkdir Atrial-Fibrillation_Low_2017
wget https://humandbs.biosciencedbc.jp/files/hum0014/hum0014.v5.AF.v1.txt.zip --directory Atrial-Fibrillation_Low_2017

# https://www.ncbi.nlm.nih.gov/pubmed/27863252
# The Allelic Landscape of Human Blood Cell Trait Variation and Links to Common Complex Disease.
# Astle et al. 2016
mkdir Blood-Cell-Traits_Astle_2016
wget https://grasp.nhlbi.nih.gov/downloads/FullResults/2016/2016_Astle/baso.tsv.gz --directory Blood-Cell-Traits_Astle_2016
wget https://grasp.nhlbi.nih.gov/downloads/FullResults/2016/2016_Astle/baso_neut_sum.tsv.gz --directory Blood-Cell-Traits_Astle_2016
wget https://grasp.nhlbi.nih.gov/downloads/FullResults/2016/2016_Astle/baso_p.tsv.gz --directory Blood-Cell-Traits_Astle_2016
wget https://grasp.nhlbi.nih.gov/downloads/FullResults/2016/2016_Astle/baso_p_gran.tsv.gz --directory Blood-Cell-Traits_Astle_2016
wget https://grasp.nhlbi.nih.gov/downloads/FullResults/2016/2016_Astle/eo.tsv.gz --directory Blood-Cell-Traits_Astle_2016
wget https://grasp.nhlbi.nih.gov/downloads/FullResults/2016/2016_Astle/eo_baso_sum.tsv.gz --directory Blood-Cell-Traits_Astle_2016
wget https://grasp.nhlbi.nih.gov/downloads/FullResults/2016/2016_Astle/eo_p.tsv.gz --directory Blood-Cell-Traits_Astle_2016
wget https://grasp.nhlbi.nih.gov/downloads/FullResults/2016/2016_Astle/eo_p_gran.tsv.gz --directory Blood-Cell-Traits_Astle_2016
wget https://grasp.nhlbi.nih.gov/downloads/FullResults/2016/2016_Astle/gran.tsv.gz --directory Blood-Cell-Traits_Astle_2016
wget https://grasp.nhlbi.nih.gov/downloads/FullResults/2016/2016_Astle/gran_p_myeloid_wbc.tsv.gz --directory Blood-Cell-Traits_Astle_2016
wget https://grasp.nhlbi.nih.gov/downloads/FullResults/2016/2016_Astle/hct.tsv.gz --directory Blood-Cell-Traits_Astle_2016
wget https://grasp.nhlbi.nih.gov/downloads/FullResults/2016/2016_Astle/hgb.tsv.gz --directory Blood-Cell-Traits_Astle_2016
wget https://grasp.nhlbi.nih.gov/downloads/FullResults/2016/2016_Astle/hlr.tsv.gz --directory Blood-Cell-Traits_Astle_2016
wget https://grasp.nhlbi.nih.gov/downloads/FullResults/2016/2016_Astle/irf.tsv.gz --directory Blood-Cell-Traits_Astle_2016
wget https://grasp.nhlbi.nih.gov/downloads/FullResults/2016/2016_Astle/lymph.tsv.gz --directory Blood-Cell-Traits_Astle_2016
wget https://grasp.nhlbi.nih.gov/downloads/FullResults/2016/2016_Astle/lymph_p.tsv.gz --directory Blood-Cell-Traits_Astle_2016
wget https://grasp.nhlbi.nih.gov/downloads/FullResults/2016/2016_Astle/mch.tsv.gz --directory Blood-Cell-Traits_Astle_2016
wget https://grasp.nhlbi.nih.gov/downloads/FullResults/2016/2016_Astle/mchc.tsv.gz --directory Blood-Cell-Traits_Astle_2016
wget https://grasp.nhlbi.nih.gov/downloads/FullResults/2016/2016_Astle/mcv.tsv.gz --directory Blood-Cell-Traits_Astle_2016
wget https://grasp.nhlbi.nih.gov/downloads/FullResults/2016/2016_Astle/mono.tsv.gz --directory Blood-Cell-Traits_Astle_2016
wget https://grasp.nhlbi.nih.gov/downloads/FullResults/2016/2016_Astle/mono_p.tsv.gz --directory Blood-Cell-Traits_Astle_2016
wget https://grasp.nhlbi.nih.gov/downloads/FullResults/2016/2016_Astle/mpv.tsv.gz --directory Blood-Cell-Traits_Astle_2016
wget https://grasp.nhlbi.nih.gov/downloads/FullResults/2016/2016_Astle/myeloid_wbc.tsv.gz --directory Blood-Cell-Traits_Astle_2016
wget https://grasp.nhlbi.nih.gov/downloads/FullResults/2016/2016_Astle/neut.tsv.gz --directory Blood-Cell-Traits_Astle_2016
wget https://grasp.nhlbi.nih.gov/downloads/FullResults/2016/2016_Astle/neut_eo_sum.tsv.gz --directory Blood-Cell-Traits_Astle_2016
wget https://grasp.nhlbi.nih.gov/downloads/FullResults/2016/2016_Astle/neut_p.tsv.gz --directory Blood-Cell-Traits_Astle_2016
wget https://grasp.nhlbi.nih.gov/downloads/FullResults/2016/2016_Astle/neut_p_gran.tsv.gz --directory Blood-Cell-Traits_Astle_2016
wget https://grasp.nhlbi.nih.gov/downloads/FullResults/2016/2016_Astle/pct.tsv.gz --directory Blood-Cell-Traits_Astle_2016
wget https://grasp.nhlbi.nih.gov/downloads/FullResults/2016/2016_Astle/pdw.tsv.gz --directory Blood-Cell-Traits_Astle_2016
wget https://grasp.nhlbi.nih.gov/downloads/FullResults/2016/2016_Astle/plt.tsv.gz --directory Blood-Cell-Traits_Astle_2016
wget https://grasp.nhlbi.nih.gov/downloads/FullResults/2016/2016_Astle/rbc.tsv.gz --directory Blood-Cell-Traits_Astle_2016
wget https://grasp.nhlbi.nih.gov/downloads/FullResults/2016/2016_Astle/rdw.tsv.gz --directory Blood-Cell-Traits_Astle_2016
wget https://grasp.nhlbi.nih.gov/downloads/FullResults/2016/2016_Astle/ret.tsv.gz --directory Blood-Cell-Traits_Astle_2016
wget https://grasp.nhlbi.nih.gov/downloads/FullResults/2016/2016_Astle/ret_p.tsv.gz --directory Blood-Cell-Traits_Astle_2016
wget https://grasp.nhlbi.nih.gov/downloads/FullResults/2016/2016_Astle/wbc.tsv.gz --directory Blood-Cell-Traits_Astle_2016
wget https://grasp.nhlbi.nih.gov/downloads/FullResults/2016/2016_Astle/AstleREADME.txt --directory Blood-Cell-Traits_Astle_2016

# https://www.ncbi.nlm.nih.gov/pubmed/27670767
# Genome-wide association study identifies pharmacogenomic loci linked with specific antihypertensive drug treatment and new-onset diabetes.
# Chang et al. 2018
mkdir New-Onset-Diabetes_Chang_2018
wget https://grasp.nhlbi.nih.gov/downloads/FullResults/2016/2016_Chang/PGRN_AntiHTN_AA_invest_nod_black_interdrug_all_chr.txt --directory New-Onset-Diabetes_Chang_2018
wget https://grasp.nhlbi.nih.gov/downloads/FullResults/2016/2016_Chang/PGRN_antiHTN_EA_nvest_nod_white_interdrug_all_chr.txt --directory New-Onset-Diabetes_Chang_2018
wget https://grasp.nhlbi.nih.gov/downloads/FullResults/2016/2016_Chang/PGRN_antiHTN_HA_invest_nod_hisp_interdrug_all_chr.txt --directory New-Onset-Diabetes_Chang_2018
wget https://grasp.nhlbi.nih.gov/downloads/FullResults/2016/2016_Chang/PGRN_meta_w_h_b_n1.tbl.zip --directory New-Onset-Diabetes_Chang_2018
wget https://grasp.nhlbi.nih.gov/downloads/FullResults/2016/2016_Chang/PGRN_AntiHTNdiabe_readme_chang_et_al.txt --directory New-Onset-Diabetes_Chang_2018

# https://www.ncbi.nlm.nih.gov/pubmed/27455348
# Genome-wide association analyses identify new risk variants and the genetic architecture of amyotrophic lateral sclerosis.
# van Rheenen et al. 2016
mkdir Amyotrophic-Lateral-Sclerosis_van-Rheenen_2016
wget https://grasp.nhlbi.nih.gov/downloads/FullResults/2016/2016_van_Rheenen/ALSdiscoveryLMM.txt.gz --directory Amyotrophic-Lateral-Sclerosis_van-Rheenen_2016
wget https://grasp.nhlbi.nih.gov/downloads/FullResults/2016/2016_van_Rheenen/ALSmeta.txt.gz --directory Amyotrophic-Lateral-Sclerosis_van-Rheenen_2016
wget https://grasp.nhlbi.nih.gov/downloads/FullResults/2016/2016_van_Rheenen/README.txt --directory Amyotrophic-Lateral-Sclerosis_van-Rheenen_2016

# https://www.ncbi.nlm.nih.gov/pubmed/?term=27911795
# KLB is associated with alcohol drinking, and its gene product β-Klotho is necessary for FGF21 regulation of alcohol preference.
# Schumann et al. 2016
mkdir Alcohol-Consumption_Schumann_2016
wget https://grasp.nhlbi.nih.gov/downloads/ResultsFebruary2017/2016/2016_Schumann/pooled_continuous_alcohol.csv.gz --directory Alcohol-Consumption_Schumann_2016
wget https://grasp.nhlbi.nih.gov/downloads/ResultsFebruary2017/2016/2016_Schumann/women_continuous_alcohol.csv.gz --directory Alcohol-Consumption_Schumann_2016
wget https://grasp.nhlbi.nih.gov/downloads/ResultsFebruary2017/2016/2016_Schumann/men_continuous_alcohol.csv.gz --directory Alcohol-Consumption_Schumann_2016
wget https://grasp.nhlbi.nih.gov/downloads/ResultsFebruary2017/2016/2016_Schumann/pooled_dichotomous_alcohol.csv.gz --directory Alcohol-Consumption_Schumann_2016
wget https://grasp.nhlbi.nih.gov/downloads/ResultsFebruary2017/2016/2016_Schumann/women_dichotomous_alcohol.csv.gz --directory Alcohol-Consumption_Schumann_2016
wget https://grasp.nhlbi.nih.gov/downloads/ResultsFebruary2017/2016/2016_Schumann/men_dichotomous_alcohol.csv.gz --directory Alcohol-Consumption_Schumann_2016
wget https://grasp.nhlbi.nih.gov/downloads/ResultsFebruary2017/2016/2016_Schumann/CHARGE_AlcGen_Meta_Results_README_v2.docx --directory Alcohol-Consumption_Schumann_2016

# https://www.ncbi.nlm.nih.gov/pubmed/27618448
# Meta-analysis identifies common and rare variants influencing blood pressure and overlapping with metabolic trait loci.
# Liu et al. 2016
mkdir Metabolic-Traits-Exome_Liu_2016
wget https://grasp.nhlbi.nih.gov/downloads/ResultsFebruary2017/2016/2016_Liu_Exome_Chip_BP/SBP_all_ethnic.csv --directory Metabolic-Traits-Exome_Liu_2016
wget https://grasp.nhlbi.nih.gov/downloads/ResultsFebruary2017/2016/2016_Liu_Exome_Chip_BP/SBP_EA.csv --directory Metabolic-Traits-Exome_Liu_2016
wget https://grasp.nhlbi.nih.gov/downloads/ResultsFebruary2017/2016/2016_Liu_Exome_Chip_BP/SBP_AA.csv --directory Metabolic-Traits-Exome_Liu_2016
wget https://grasp.nhlbi.nih.gov/downloads/ResultsFebruary2017/2016/2016_Liu_Exome_Chip_BP/SBP_HA.csv --directory Metabolic-Traits-Exome_Liu_2016
wget https://grasp.nhlbi.nih.gov/downloads/ResultsFebruary2017/2016/2016_Liu_Exome_Chip_BP/DBP_all_ethnic.csv --directory Metabolic-Traits-Exome_Liu_2016
wget https://grasp.nhlbi.nih.gov/downloads/ResultsFebruary2017/2016/2016_Liu_Exome_Chip_BP/DBP_EA.csv --directory Metabolic-Traits-Exome_Liu_2016
wget https://grasp.nhlbi.nih.gov/downloads/ResultsFebruary2017/2016/2016_Liu_Exome_Chip_BP/DBP_AA.csv --directory Metabolic-Traits-Exome_Liu_2016
wget https://grasp.nhlbi.nih.gov/downloads/ResultsFebruary2017/2016/2016_Liu_Exome_Chip_BP/DBP_HA.csv --directory Metabolic-Traits-Exome_Liu_2016
wget https://grasp.nhlbi.nih.gov/downloads/ResultsFebruary2017/2016/2016_Liu_Exome_Chip_BP/MAP_all_ethnic.csv --directory Metabolic-Traits-Exome_Liu_2016
wget https://grasp.nhlbi.nih.gov/downloads/ResultsFebruary2017/2016/2016_Liu_Exome_Chip_BP/MAP_EA.csv --directory Metabolic-Traits-Exome_Liu_2016
wget https://grasp.nhlbi.nih.gov/downloads/ResultsFebruary2017/2016/2016_Liu_Exome_Chip_BP/MAP_AA.csv --directory Metabolic-Traits-Exome_Liu_2016
wget https://grasp.nhlbi.nih.gov/downloads/ResultsFebruary2017/2016/2016_Liu_Exome_Chip_BP/MAP_HA.csv --directory Metabolic-Traits-Exome_Liu_2016
wget https://grasp.nhlbi.nih.gov/downloads/ResultsFebruary2017/2016/2016_Liu_Exome_Chip_BP/PP_all_ethnic.csv --directory Metabolic-Traits-Exome_Liu_2016
wget https://grasp.nhlbi.nih.gov/downloads/ResultsFebruary2017/2016/2016_Liu_Exome_Chip_BP/PP_EA.csv --directory Metabolic-Traits-Exome_Liu_2016
wget https://grasp.nhlbi.nih.gov/downloads/ResultsFebruary2017/2016/2016_Liu_Exome_Chip_BP/PP_AA.csv --directory Metabolic-Traits-Exome_Liu_2016
wget https://grasp.nhlbi.nih.gov/downloads/ResultsFebruary2017/2016/2016_Liu_Exome_Chip_BP/PP_HA.csv --directory Metabolic-Traits-Exome_Liu_2016
wget https://grasp.nhlbi.nih.gov/downloads/ResultsFebruary2017/2016/2016_Liu_Exome_Chip_BP/HTN_all_ethnic.csv --directory Metabolic-Traits-Exome_Liu_2016
wget https://grasp.nhlbi.nih.gov/downloads/ResultsFebruary2017/2016/2016_Liu_Exome_Chip_BP/HTN_EA.csv --directory Metabolic-Traits-Exome_Liu_2016
wget https://grasp.nhlbi.nih.gov/downloads/ResultsFebruary2017/2016/2016_Liu_Exome_Chip_BP/HTN_AA.csv --directory Metabolic-Traits-Exome_Liu_2016
wget https://grasp.nhlbi.nih.gov/downloads/ResultsFebruary2017/2016/2016_Liu_Exome_Chip_BP/HTN_HA.csv --directory Metabolic-Traits-Exome_Liu_2016
wget https://grasp.nhlbi.nih.gov/downloads/ResultsFebruary2017/2016/2016_Liu_Exome_Chip_BP/CHARGE_exome_chip_summary_README.docx --directory Metabolic-Traits-Exome_Liu_2016

# https://www.ncbi.nlm.nih.gov/pubmed/26362575
# Meta-analysis of Genome-Wide Association Studies for Extraversion: Findings from the Genetics of Personality Consortium.
# van den Berg
mkdir Extraversion_van-den-Berg_2016
wget https://grasp.nhlbi.nih.gov/downloads/ResultsFebruary2017/2016/2016_Van_den_Berg/GPC-2.EXTRAVERSION.zip --directory Extraversion_van-den-Berg_2016
wget https://grasp.nhlbi.nih.gov/downloads/ResultsFebruary2017/2016/2016_Van_den_Berg/ReadmeGPC-2.pdf --directory Extraversion_van-den-Berg_2016

# https://www.ncbi.nlm.nih.gov/pubmed/?term=27346686
# Platelet-Related Variants Identified by Exomechip Meta-analysis in 157,293 Individuals.
# Eicher et al. 2016
mkdir Platelet-Traits_Eicher_2016
wget https://grasp.nhlbi.nih.gov/downloads/ResultsOctober2016/Eicher/BCX_PLT_AA.tar.gz --directory Platelet-Traits_Eicher_2016
wget https://grasp.nhlbi.nih.gov/downloads/ResultsOctober2016/Eicher/BCX_PLT_ALL.tar.gz --directory Platelet-Traits_Eicher_2016
wget https://grasp.nhlbi.nih.gov/downloads/ResultsOctober2016/Eicher/BCX_PLT_EA.tar.gz --directory Platelet-Traits_Eicher_2016
wget https://grasp.nhlbi.nih.gov/downloads/ResultsOctober2016/Eicher/readmeeicher.txt --directory Platelet-Traits_Eicher_2016

# https://www.ncbi.nlm.nih.gov/pubmed/27346689
# Large-Scale Exome-wide Association Analysis Identifies Loci for White Blood Cell Traits and Pleiotropy with Immune-Mediated Diseases.
# Tajuddin et al. 2016
mkdir White-Blood-Cell-Traits_Tajuddin_2016
wget https://grasp.nhlbi.nih.gov/downloads/ResultsOctober2016/Tajuddin/BCX_WBC_AA.tar.gz --directory White-Blood-Cell-Traits_Tajuddin_2016
wget https://grasp.nhlbi.nih.gov/downloads/ResultsOctober2016/Tajuddin/BCX_WBC_ALL.tar.gz --directory White-Blood-Cell-Traits_Tajuddin_2016
wget https://grasp.nhlbi.nih.gov/downloads/ResultsOctober2016/Tajuddin/BCX_WBC_EA.tar.gz --directory White-Blood-Cell-Traits_Tajuddin_2016
wget https://grasp.nhlbi.nih.gov/downloads/ResultsOctober2016/Tajuddin/readmetajuddin.txt --directory White-Blood-Cell-Traits_Tajuddin_2016

# https://www.ncbi.nlm.nih.gov/pubmed/27346685
# Exome Genotyping Identifies Pleiotropic Variants Associated with Red Blood Cell Traits.
# Chami et al. 2016
mkdir Red-Blood-Cell-Traits_Chami_2016
wget https://grasp.nhlbi.nih.gov/downloads/ResultsOctober2016/Chami/BCX_RBC_AA.tar.gz --directory Red-Blood-Cell-Traits_Chami_2016
wget https://grasp.nhlbi.nih.gov/downloads/ResultsOctober2016/Chami/BCX_RBC_ALL.tar.gz --directory Red-Blood-Cell-Traits_Chami_2016
wget https://grasp.nhlbi.nih.gov/downloads/ResultsOctober2016/Chami/BCX_RBC_EA.tar.gz --directory Red-Blood-Cell-Traits_Chami_2016
wget https://grasp.nhlbi.nih.gov/downloads/ResultsOctober2016/Chami/readmechami.txt --directory Red-Blood-Cell-Traits_Chami_2016

# https://www.ncbi.nlm.nih.gov/pubmed/26833246
# New loci for body fat percentage reveal link between adiposity and cardiometabolic disease risk.
# Lu et al. 2016
mkdir Body-Fat-Percentage_Lu_2016 
wget https://grasp.nhlbi.nih.gov/downloads/ResultsOctober2016/Lu/Body_fat_percentage_GWAS_PLUS_MC_ALL_ancestry_se_Sex_combined_for_locus_zoom_plot.TBL.txt --directory Body-Fat-Percentage_Lu_2016
wget https://grasp.nhlbi.nih.gov/downloads/ResultsOctober2016/Lu/Read_me_GWAS_BFpercent.txt --directory Body-Fat-Percentage_Lu_2016

# https://www.ncbi.nlm.nih.gov/pubmed/25199915
# GWAS of longevity in CHARGE consortium confirms APOE and FOXO3 candidacy.
# Broer et al. 2015
mkdir Longevity_Broer_2015
wget https://grasp.nhlbi.nih.gov/downloads/FullResults/2015/2015_Broer/broer_age90.csv.gz --directory Longevity_Broer_2015
wget https://grasp.nhlbi.nih.gov/downloads/FullResults/2015/2015_Broer/broer_age90_table3.csv --directory Longevity_Broer_2015
wget https://grasp.nhlbi.nih.gov/downloads/FullResults/2015/2015_Broer/CHARGE_longevity_age90_README.docx --directory Longevity_Broer_2015

# https://www.ncbi.nlm.nih.gov/pubmed/25676789
# Genome-wide association study identifies ABCG2 (BCRP) as an allopurinol transporter and a determinant of drug response.
# Wen et al. 2015
mkdir Allopurinol-Response_Wen_2015
wget https://grasp.nhlbi.nih.gov/downloads/FullResults/2015/2015_Wen/PGRN_allop_wenc_eur_sumstats_a2.txt.zip --directory Allopurinol-Response_Wen_2015
wget https://grasp.nhlbi.nih.gov/downloads/FullResults/2015/2015_Wen/PGRN_wenc_allopurinol_readme.txt --directory Allopurinol-Response_Wen_2015

# https://www.ncbi.nlm.nih.gov/pubmed/26677855
# Genome-Wide Scan Informed by Age-Related Disease Identifies Loci for Exceptional Human Longevity.
# Fortney et al. 2015
mkdir Longevity_Fortney_2015
wget https://grasp.nhlbi.nih.gov/downloads/ResultsFebruary2017/2015/2015_Fortney_Longevity/FortneyiGWAS_P.rar --directory Longevity_Fortney_2015

# https://www.ncbi.nlm.nih.gov/pubmed/?term=26635082
# Sixteen new lung function signals identified through 1000 Genomes Project reference panel imputation. 
# Soler Artigas et al. 2015
mkdir Forced-Expiratory-Volume_Soler-Artigas_2015
wget https://grasp.nhlbi.nih.gov/downloads/ResultsOctober2016/SolerArtigas/SpiroMeta_1000G_FEV1_50Neff_filt_results.txt.gz --directory Forced-Expiratory-Volume_Soler-Artigas_2015
wget https://grasp.nhlbi.nih.gov/downloads/ResultsOctober2016/SolerArtigas/SpiroMeta_1000G_FVC_50Neff_filt_results.txt.gz --directory Forced-Expiratory-Volume_Soler-Artigas_2015
wget https://grasp.nhlbi.nih.gov/downloads/ResultsOctober2016/SolerArtigas/SpiroMeta_1000G_FEV1overFVC_50Neff_filt_results.txt.gz --directory Forced-Expiratory-Volume_Soler-Artigas_2015
wget https://grasp.nhlbi.nih.gov/downloads/ResultsOctober2016/SolerArtigas/SpiroMeta_README.txt --directory Forced-Expiratory-Volume_Soler-Artigas_2015

# https://www.ncbi.nlm.nih.gov/pubmed/24688116
# Genome-wide association meta-analysis of human longevity identifies a novel locus conferring survival beyond 90 years of age.
# Deelen et al. 2014
mkdir Longevity_Deelen_2014
wget https://grasp.nhlbi.nih.gov/downloads/ResultsFebruary2017/2014/2014_Deelen_Longevity/DeelenLongevityGWAS.txt --directory Longevity_Deelen_2014
wget https://grasp.nhlbi.nih.gov/downloads/ResultsFebruary2017/2014/2014_Benyamin_CHIC/CHICheader.txt --directory Longevity_Deelen_2014

# https://www.ncbi.nlm.nih.gov/pubmed/24852370
# Genome-wide association study identifies a novel susceptibility gene for serum TSH levels in Chinese populations.
# Zhan et al. 2014
mkdir Thyroid-Stimulating-Hormone_Zhan_2014
wget https://grasp.nhlbi.nih.gov/downloads/ResultsOctober2016/Zhan/Zhan_serum_TSH.zip --directory Thyroid-Stimulating-Hormone_Zhan_2014

# https://www.ncbi.nlm.nih.gov/pubmed/?term=24514567
# A genome-wide association study of anorexia nervosa.
# Boraska et al. 2014
mkdir Anorexia-Nervosa_Boraska_2014
wget https://grasp.nhlbi.nih.gov/downloads/ResultsOctober2016/Boraska/gcan_meta.out.gz --directory Anorexia-Nervosa_Boraska_2014

# https://www.ncbi.nlm.nih.gov/pubmed/25282103
# Defining the role of common variation in the genomic and biological architecture of adult human height.
# Wood et al. 2014
mkdir Height_Wood_2014
wget https://grasp.nhlbi.nih.gov/downloads/ResultsOctober2016/Wood/GIANT_HEIGHT_Wood_et_al_2014_publicrelease_HapMapCeuFreq.txt.gz --directory Height_Wood_2014
wget https://grasp.nhlbi.nih.gov/downloads/ResultsOctober2016/Wood/GIANT_2012-15_Data_File_ReadMe_Height.txt --directory Height_Wood_2014

# https://www.ncbi.nlm.nih.gov/pubmed/25087078
# Genetic determinants of common epilepsies: a meta-analysis of genome-wide association studies.
# Anney et al. 2014
# International League Against Epilepsy Consortium on Complex Epilepsies
mkdir Epilepsy_Anney_2014
wget https://grasp.nhlbi.nih.gov/downloads/ResultsOctober2016/International_League_Against_Epilepsy_Consortium_on_Complex_Epilepsies/ILAE_All_Epi_11.8.14.txt.gz --directory Epilepsy_Anney_2014
wget https://grasp.nhlbi.nih.gov/downloads/ResultsOctober2016/International_League_Against_Epilepsy_Consortium_on_Complex_Epilepsies/ILAE_Focal_5.8.14.txt.gz  --directory Epilepsy_Anney_2014
wget https://grasp.nhlbi.nih.gov/downloads/ResultsOctober2016/International_League_Against_Epilepsy_Consortium_on_Complex_Epilepsies/ILAE_GGE_5.8.14.txt.gz --directory Epilepsy_Anney_2014
wget https://grasp.nhlbi.nih.gov/downloads/ResultsOctober2016/International_League_Against_Epilepsy_Consortium_on_Complex_Epilepsies/ILAE_All_Epi_README.txt --directory Epilepsy_Anney_2014
wget https://grasp.nhlbi.nih.gov/downloads/ResultsOctober2016/International_League_Against_Epilepsy_Consortium_on_Complex_Epilepsies/ILAE_Focal_README.txt --directory Epilepsy_Anney_2014
wget https://grasp.nhlbi.nih.gov/downloads/ResultsOctober2016/International_League_Against_Epilepsy_Consortium_on_Complex_Epilepsies/ILAE_GGE_README.txt --directory Epilepsy_Anney_2014

# https://www.ncbi.nlm.nih.gov/pubmed/25027320
# SUCLG2 identified as both a determinator of CSF Aβ1-42 levels and an attenuator of cognitive decline in Alzheimer's disease.
# Ramirez et al. 2014
mkdir Alzheimers-Protein-Levels_Ramirez_2014
wget https://grasp.nhlbi.nih.gov/downloads/ResultsOctober2016/Ramirez/MA_Abeta42_Short.zip --directory Alzheimers-Protein-Levels_Ramirez_2014
wget https://grasp.nhlbi.nih.gov/downloads/ResultsOctober2016/Ramirez/MA_pTau181_Short.zip --directory Alzheimers-Protein-Levels_Ramirez_2014

# https://www.ncbi.nlm.nih.gov/pubmed/24824216
# Genome-wide interaction studies reveal sex-specific asthma risk alleles.
# Myers et al. 2014
mkdir Asthma_Myers_2014
wget https://grasp.nhlbi.nih.gov/downloads/ResultsOctober2016/Myers/HMG-2013-W-01483_Myers_DataS1_MaleCases_vsPooledControls.csv.gz --directory Asthma_Myers_2014
wget https://grasp.nhlbi.nih.gov/downloads/ResultsOctober2016/Myers/HMG-2013-W-01483_Myers_DataS2_FemaleCases_vsPooledControls.csv.gz --directory Asthma_Myers_2014
wget https://grasp.nhlbi.nih.gov/downloads/ResultsOctober2016/Myers/readmeasthmamale.txt --directory Asthma_Myers_2014
wget https://grasp.nhlbi.nih.gov/downloads/ResultsOctober2016/Myers/readmeasthmafemale.txt --directory Asthma_Myers_2014

# https://www.ncbi.nlm.nih.gov/pubmed/?term=24282030
# A genome-wide association study identifies polymorphisms in the HLA-DR region associated with non-response to hepatitis B vaccination in Chinese Han populations.
# Pan et al. 2014
mkdir Hepatitis-B-Vaccine-Response_Pan_2014
wget https://grasp.nhlbi.nih.gov/downloads/ResultsOctober2016/Pan/ddt586supp_table1.xlsx --directory Hepatitis-B-Vaccine-Response_Pan_2014

# https://www.ncbi.nlm.nih.gov/pubmed/?term=23474815
# Meta-analysis of genome-wide association studies in five cohorts reveals common variants in RBFOX1, a regulator of tissue-specific splicing, associated with refractive error.
# Stambolian et al. 2013
mkdir Visual-Refractive-Error_Stambolian_2013
wget https://grasp.nhlbi.nih.gov/downloads/ResultsOctober2016/Stambolian/Stambolianmeta.zip --directory Visual-Refractive-Error_Stambolian_2013

# https://www.ncbi.nlm.nih.gov/pubmed/?term=23455636
# Seven new loci associated with age-related macular degeneration.
# Fritsche et al. 2013
mkdir Age-Related-Macular-Degeneration_Fritsche_2013
wget https://grasp.nhlbi.nih.gov/downloads/ResultsOctober2016/Fritsche/Fristche_AMDGene2013_Neovascular_v_Controls.txt --directory Age-Related-Macular-Degeneration_Fritsche_2013
wget https://grasp.nhlbi.nih.gov/downloads/ResultsOctober2016/Fritsche/Fritsche_AMDGene2013_GeographicAtropy_v_Controls.txt --directory Age-Related-Macular-Degeneration_Fritsche_2013
wget https://grasp.nhlbi.nih.gov/downloads/ResultsOctober2016/Fritsche/FritscheAMDGene2013_Advanced_v_Controls.txt --directory Age-Related-Macular-Degeneration_Fritsche_2013

# https://www.ncbi.nlm.nih.gov/pubmed/?term=23388002
# Genetic associations with valvular calcification and aortic stenosis.
# Thanassoulis et al. 2013
mkdir Aortic-Valve-Calcification_Thanassoulis_2013
wget https://grasp.nhlbi.nih.gov/downloads/ResultsOctober2016/Thanassoulis/AVC_meta_results_dbGAP_2013Jan08.txt --directory Aortic-Valve-Calcification_Thanassoulis_2013
wget https://grasp.nhlbi.nih.gov/downloads/ResultsOctober2016/Thanassoulis/MAC_meta_results_dbGAP_2013Jan08.txt --directory Aortic-Valve-Calcification_Thanassoulis_2013
wget https://grasp.nhlbi.nih.gov/downloads/ResultsOctober2016/Thanassoulis/AVC_MAC_meta_results_README_2013Feb01.txt --directory Aortic-Valve-Calcification_Thanassoulis_2013

# https://www.ncbi.nlm.nih.gov/pubmed/?term=23297363
# Genome-wide association study identifies loci on 12q24 and 13q32 associated with tetralogy of Fallot.
# Cordell et al. 2013
mkdir Tetralogy-Of-Fallot_Cordell_2013
wget https://grasp.nhlbi.nih.gov/downloads/ResultsOctober2016/Cordell/TOF_GWAS_Results_Dec2012.zip --directory Tetralogy-Of-Fallot_Cordell_2013
wget https://grasp.nhlbi.nih.gov/downloads/ResultsOctober2016/Cordell/TOF_GWAS_README.txt --directory Tetralogy-Of-Fallot_Cordell_2013

# https://www.ncbi.nlm.nih.gov/pubmed/?term=22479346
# Identification of IGF1, SLC4A4, WWOX, and SFMBT1 as hypertension susceptibility genes in Han Chinese with a genome-wide gene-based association study.
# Yang et al. 2012
mkdir Hypertension_Yang_2012
wget https://grasp.nhlbi.nih.gov/downloads/ResultsOctober2016/Yang_Hypertension/Yang_YoungOnsetHypertension_Illumina550_SBAS_rawpv.csv --directory Hypertension_Yang_2012
wget https://grasp.nhlbi.nih.gov/downloads/ResultsOctober2016/Yang_Hypertension/Yang_ReadMe.txt --directory Hypertension_Yang_2012

# https://www.ncbi.nlm.nih.gov/pubmed/?term=22451204
# Meta-analysis of Parkinson's disease: identification of a novel locus, RIT2.
# Pankratz et al. 2012
mkdir Parkinsons_Pankratz_2012
wget https://grasp.nhlbi.nih.gov/downloads/ResultsOctober2016/Pankratz/Pankratz_Parkinsons_22687-SuppTable1.txt --directory Parkinsons_Pankratz_2012

# https://www.ncbi.nlm.nih.gov/pubmed/?term=22377632
# Evaluating the evidence for transmission distortion in human pedigrees.
# Meyer et al. 2012
mkdir Transmission-Distortion_Meyer_2012
wget https://grasp.nhlbi.nih.gov/downloads/ResultsOctober2016/Meyer/Meyer_TDT_TableS1.txt --directory Transmission-Distortion_Meyer_2012

# https://www.ncbi.nlm.nih.gov/pubmed/?term=21909115
# Genetic variants in novel pathways influence blood pressure and cardiovascular disease risk.
# Ehret et al. 2011
# International Consortium for Blood Pressure Genome-Wide Association Studies
mkdir Blood-Pressure_Ehret_2011
wget https://grasp.nhlbi.nih.gov/downloads/ResultsOctober2016/International_Consortium_for_Blood_Pressure_GWAS/ICBP-summary-Nature.csv.gz --directory Blood-Pressure_Ehret_2011

# https://www.ncbi.nlm.nih.gov/pubmed/?term=20522523
# Common genetic variation and susceptibility to partial epilepsies: a genome-wide association study.
# Kasperaviciute et al. 2010
mkdir Partial-Epilepsy_Kasperaviciute_2010
wget https://grasp.nhlbi.nih.gov/downloads/ResultsOctober2016/Kasperaviciute/PartialEpilepsySyndromes_Kasperaviciute_3445cases_6935controls.txt --directory Partial-Epilepsy_Kasperaviciute_2010

# https://www.ncbi.nlm.nih.gov/pubmed/?term=20453842
# Genome-wide association study meta-analysis identifies seven new rheumatoid arthritis risk loci.
# Stahl et al. 2010
mkdir Rheumatoid-Arthritis_Stahl_2010
wget https://grasp.nhlbi.nih.gov/downloads/ResultsOctober2016/Stahl/RheumatoidArthritis_Stahl_5539cases_20169controls.txt --directory Rheumatoid-Arthritis_Stahl_2010

# https://www.ncbi.nlm.nih.gov/pubmed/?term=20442857
# Genome-wide association study of Lp-PLA(2) activity and mass in the Framingham Heart Study.
# Suchindran et al. 2010
mkdir Lipoprotein-Associated-Phospholipase-A2_Suchindran_2010
wget https://grasp.nhlbi.nih.gov/downloads/ResultsOctober2016/Suchindran/LpPLA2activity_Suchindran.txt --directory Lipoprotein-Associated-Phospholipase-A2_Suchindran_2010
wget https://grasp.nhlbi.nih.gov/downloads/ResultsOctober2016/Suchindran/LpPLA2mass_Suchindran.txt --directory Lipoprotein-Associated-Phospholipase-A2_Suchindran_2010

# https://www.ncbi.nlm.nih.gov/pubmed/?term=20339536
# Genome-wide association of lipid-lowering response to statins in combined study populations.
# Barber et al. 2010
mkdir Statin-Efficacy_Barber_2010
wget https://grasp.nhlbi.nih.gov/downloads/ResultsOctober2016/Barber/HDLcholChangeWithStatin_Stephens.txt --directory Statin-Efficacy_Barber_2010
wget https://grasp.nhlbi.nih.gov/downloads/ResultsOctober2016/Barber/HDLcholRegardlessOfStatins_Stephens.txt --directory Statin-Efficacy_Barber_2010
wget https://grasp.nhlbi.nih.gov/downloads/ResultsOctober2016/Barber/LDLcholChangeWithStatin_Stephens.txt --directory Statin-Efficacy_Barber_2010
wget https://grasp.nhlbi.nih.gov/downloads/ResultsOctober2016/Barber/LDLcholRegardlessOfStatins_Stephens.txt --directory Statin-Efficacy_Barber_2010
wget https://grasp.nhlbi.nih.gov/downloads/ResultsOctober2016/Barber/TcholChangeWithStatin_Stephens.txt --directory Statin-Efficacy_Barber_2010
wget https://grasp.nhlbi.nih.gov/downloads/ResultsOctober2016/Barber/TcholRegardlessOfStatins_Stephens.txt --directory Statin-Efficacy_Barber_2010
wget https://grasp.nhlbi.nih.gov/downloads/ResultsOctober2016/Barber/TGChangeWithStatin_Stephens.txt --directory Statin-Efficacy_Barber_2010
wget https://grasp.nhlbi.nih.gov/downloads/ResultsOctober2016/Barber/TGRegardlessOfStatins_Stephens.txt --directory Statin-Efficacy_Barber_2010
wget https://grasp.nhlbi.nih.gov/downloads/ResultsOctober2016/Barber/READMEBarber.txt --directory Statin-Efficacy_Barber_2010

# https://www.ncbi.nlm.nih.gov/pubmed/?term=20081856
# Meta-analysis of genome-wide association data identifies a risk locus for major mood disorders on 3p21.1.
# McMahon et al. 2010
mkdir Major-Depressive-Disorder_McMahon_2010
wget https://grasp.nhlbi.nih.gov/downloads/ResultsOctober2016/McMahon/MajorDepressiveDisorders_McMahon_6683cases_9068controls.txt --directory Major-Depressive-Disorder_McMahon_2010

# https://www.ncbi.nlm.nih.gov/pubmed/?term=19060906
# Common variants at 30 loci contribute to polygenic dyslipidemia.
# Kathiresan et al. 2009
mkdir Lipoprotein-Concentrations_Kathiresan_2009
wget https://grasp.nhlbi.nih.gov/downloads/ResultsOctober2016/Kathiresan/METAHDL2009.zip --directory Lipoprotein-Concentrations_Kathiresan_2009
wget https://grasp.nhlbi.nih.gov/downloads/ResultsOctober2016/Kathiresan/METALDL2009.zip --directory Lipoprotein-Concentrations_Kathiresan_2009
wget https://grasp.nhlbi.nih.gov/downloads/ResultsOctober2016/Kathiresan/METATG2009.zip --directory Lipoprotein-Concentrations_Kathiresan_2009

# https://www.ncbi.nlm.nih.gov/pubmed/?term=18535201
# A genome-wide scan for common genetic variants with a large influence on warfarin maintenance dose.
# Cooper et al. 2008
mkdir Warfarin-Dosage_Cooper_2008
wget https://grasp.nhlbi.nih.gov/downloads/ResultsOctober2016/Cooper/Cooper_Add_TableS1.txt --directory Warfarin-Dosage_Cooper_2008

# https://www.ncbi.nlm.nih.gov/pubmed/?term=18445777
# Multiple genetic loci for bone mineral density and fractures.
# Styrkarsdottir et al. 2008
mkdir Bone-Mineral-Density_Styrkarsdottir_2008
wget https://grasp.nhlbi.nih.gov/downloads/ResultsOctober2016/Styrkarsdottir/SpineBMD_Strykarsdottir.txt --directory Bone-Mineral-Density_Styrkarsdottir_2008

# https://www.ncbi.nlm.nih.gov/pubmed/?term=17660530
# Risk alleles for multiple sclerosis identified by a genomewide study.
# Hafler et al. 2007
mkdir Multiple-Sclerosis_Hafler_2007
wget https://grasp.nhlbi.nih.gov/downloads/ResultsOctober2016/International_Multiple_Sclerosis_Genetics_Consortium/phs000139.pha002854.txt.gz --directory Multiple-Sclerosis_Hafler_2007
wget https://grasp.nhlbi.nih.gov/downloads/ResultsOctober2016/International_Multiple_Sclerosis_Genetics_Consortium/MSGCReadme.txt --directory Multiple-Sclerosis_Hafler_2007

# https://www.ncbi.nlm.nih.gov/pubmed/?term=17529973
# A genome-wide association study identifies alleles in FGFR2 associated with risk of sporadic postmenopausal breast cancer.
# Hunter et al. 2007
mkdir Breast-Cancer_Hunter_2007
wget https://grasp.nhlbi.nih.gov/downloads/ResultsOctober2016/Hunter/phs000147.pha002853.txt.gz --directory Breast-Cancer_Hunter_2007
wget https://grasp.nhlbi.nih.gov/downloads/ResultsOctober2016/Hunter/HunterReadMe.txt --directory Breast-Cancer_Hunter_2007

# https://www.ncbi.nlm.nih.gov/pubmed/?term=17401363
# Genome-wide association study of prostate cancer identifies a second risk locus at 8q24.
# Yeager et al. 2007
mkdir Prostate-Cancer_Yeager_2007
wget https://grasp.nhlbi.nih.gov/downloads/ResultsOctober2016/Yeager/phs000207.pha002877.txt.gz --directory Prostate-Cancer_Yeager_2007
wget https://grasp.nhlbi.nih.gov/downloads/ResultsOctober2016/Yeager/phs000207.pha002878.txt.gz --directory Prostate-Cancer_Yeager_2007
wget https://grasp.nhlbi.nih.gov/downloads/ResultsOctober2016/Yeager/YeagerReadMe1.txt --directory Prostate-Cancer_Yeager_2007
wget https://grasp.nhlbi.nih.gov/downloads/ResultsOctober2016/Yeager/YeagerReadMe2.txt --directory Prostate-Cancer_Yeager_2007

# https://www.ncbi.nlm.nih.gov/pubmed/24816252
# An atlas of genetic influences on human blood metabolites.
# Shin et al. 2014
mkdir Blood-Metabolites_Shin_2014
wget http://metabolomics.helmholtz-muenchen.de/gwas/gwas_server/shin_et_al.metal.out.tar.gz --directory Blood-Metabolites_Shin_2014
wget http://metabolomics.helmholtz-muenchen.de/gwas/gwas_server/shin_et_al.xeno.metal.out.tar.gz --directory Blood-Metabolites_Shin_2014

# https://www.ncbi.nlm.nih.gov/pubmed/30617256
# Genome-wide meta-analysis identifies new loci and functional pathways influencing Alzheimer’s disease risk
# Jansen et al. 2018
mkdir Alzheimers_Jansen_2018
wget https://ctg.cncr.nl/documents/p1651/AD_sumstats_Jansenetal.txt.gz --directory Alzheimers_Jansen_2018
wget https://ctg.cncr.nl/documents/p1651/AD_sumstats.readme --directory Alzheimers_Jansen_2018

# New additions
######################################################

# https://www.ncbi.nlm.nih.gov/pmc/articles/pmid/20686565/
# Biological, Clinical, and Population Relevance of 95 Loci for Blood Lipids
mkdir Blood-Lipids_Teslovich_2010
wget http://csg.sph.umich.edu/willer/public/lipids2010/TC2010.zip --directory Blood-Lipids_Teslovich_2010
wget http://csg.sph.umich.edu/willer/public/lipids2010/HDL2010.zip --directory Blood-Lipids_Teslovich_2010
wget http://csg.sph.umich.edu/willer/public/lipids2010/LDL2010.zip --directory Blood-Lipids_Teslovich_2010
wget http://csg.sph.umich.edu/willer/public/lipids2010/TG2010.zip --directory Blood-Lipids_Teslovich_2010
wget http://csg.sph.umich.edu/willer/public/lipids2010/TC_with_Effect.zip --directory Blood-Lipids_Teslovich_2010
wget http://csg.sph.umich.edu/willer/public/lipids2010/HDL_with_Effect.zip --directory Blood-Lipids_Teslovich_2010
wget http://csg.sph.umich.edu/willer/public/lipids2010/LDL_with_Effect.zip --directory Blood-Lipids_Teslovich_2010
wget http://csg.sph.umich.edu/willer/public/lipids2010/TG_with_Effect.zip --directory Blood-Lipids_Teslovich_2010

# https://www.ncbi.nlm.nih.gov/pmc/articles/pmid/18193043/ 
# Newly identified loci that influence lipid concentrations and risk of coronary artery disease
mkdir Blood-Lipids_Willer_2008
wget http://csg.sph.umich.edu/willer/public/lipids/METAHDL.zip --directory Blood-Lipids_Willer_2008 
wget http://csg.sph.umich.edu/willer/public/lipids/METALDL.zip --directory Blood-Lipids_Willer_2008 
wget http://csg.sph.umich.edu/willer/public/lipids/METATG.zip --directory Blood-Lipids_Willer_2008 


mkdir -p Fasting-Glucose_Lagou_2018
#https://www.magicinvestigators.org/downloads/
wget ftp://ftp.sanger.ac.uk/pub/magic/FG_STAGE1_2_3_SEX_GWAS_2018.txt.gz -P Fasting-Glucose_Lagou_2018
wget ftp://ftp.sanger.ac.uk/pub/magic/FI_STAGE1_2_3_SEX_GWAS_2018.txt.gz -P Fasting-Glucose_Lagou_2018
wget ftp://ftp.sanger.ac.uk/pub/magic/MAGIC-sex_dimorphic_fasting_glucose_insulin_README.pdf -P Fasting-Glucose_Lagou_2018

# Morris, Kemp, et al. An atlas of genetic influences on osteoporosis in humans and mice. Nature Genetics 2018.
# PMID: 30598549 PMCID: PMC6358485 DOI: 10.1038/s41588-018-0302-x
# http://www.gefos.org/?q=content/data-release-2018
mkdir -p Osteoporosis_Morris_2018
wget http://www.gefos.org/sites/default/files/Morrisetal2018.NatGen.SumStats.tar_0.gz -P Osteoporosis_Morris_2018

# http://www.gefos.org/?q=content/fracture-gwas-2018-release
# Trajanoska et al. Assessment of the genetic and clinical determinants of fracture risk: genome wide association and mendelian randomisation study. BMJ 2018. 
# PMID: 30158200 PMCID: PMC6113773 DOI: 10.1136/bmj.k3225
mkdir -p Bone-Fracture_Trajanoska_2018
wget http://www.gefos.org/sites/default/files/ALLFX_GWAS_build37.txt.gz -P Bone-Fracture_Trajanoska_2018

# https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5562285/
# Type 2 diabetes variants disrupt function of SLC16A11 through two distinct mechanisms
# SIGMA consortium
# PMID: 28666119 PMCID: PMC5562285 DOI: 10.1016/j.cell.2017.06.011
mkdir -p Type-2-Diabetes_Rusu_2018
wget https://personal.broadinstitute.org/mvon/GWAS_SIGMA_dv1.T2D.txt.zip -P Type-2-Diabetes_Rusu_2018
wget https://personal.broadinstitute.org/mvon/ExChip_SIGMA_dv1.txt.zip -P Type-2-Diabetes_Rusu_2018
wget https://personal.broadinstitute.org/mvon/ExSeq_26k_hs_sigma_dv2.T2D.txt.zip -P Type-2-Diabetes_Rusu_2018

# https://www.pgrn.org/riken-gwas-statistics.html
# Variants in WFS1 and other Mendelian deafness genes are associated with cisplatin-associated ototoxicity.
# Wheeler HE et al. Clin Cancer Res. 2016 Dec 30
# Pubmed: 28039263; DOI: 10.1158/1078-0432.CCR-16-2809
# PMID: 28039263 PMCID: PMC5493516 DOI: 10.1158/1078-0432.CCR-16-2809
mkdir -p Cisplatin-Associated-Ototoxicity_Wheeler_2016
wget https://www.pgrn.org/uploads/1/0/7/8/107807723/wheeler_et_al_ccr_2017_sum_stats.txt_5.zip -P Cisplatin-Associated-Ototoxicity_Wheeler_2016
wget https://www.pgrn.org/uploads/1/0/7/8/107807723/wheeler_et_al_ccr_2017_readme_2.txt -P Cisplatin-Associated-Ototoxicity_Wheeler_2016

# https://www.pgrn.org/riken-gwas-statistics.html
# Germline variants and advanced colorectal adenomas: adenoma prevention with celecoxib trial genome-wide association study.
# Wang J et al. Clin Cancer Res. 2013 Dec 1;19(23):6430-7. 
# Pubmed: 24084763; PubMed Central: PMC4037290; DOI: 10.1158/1078-0432.CCR-13-0550
# PMID: 24084763 PMCID: PMC4037290 DOI: 10.1158/1078-0432.CCR-13-0550
mkdir -p Colorectal-Adenoma_Wang_2013
wget https://www.pgrn.org/uploads/1/0/7/8/107807723/adv_adno_assoc.assoc.txt.zip -P Colorectal-Adenoma_Wang_2013
wget https://www.pgrn.org/uploads/1/0/7/8/107807723/readme-colorectaladenomaprev-celecoxib.txt -P Colorectal-Adenoma_Wang_2013

# https://www.ncbi.nlm.nih.gov/pubmed/30220432
# Genetic Association of Albuminuria with Cardiometabolic Disease and Blood Pressure.
# Haas ME, et al.
# Am J Hum Genet. 2018 Oct 4;103(4):461-473. doi: 10.1016/j.ajhg.2018.08.004
# PMID: 30220432 PMCID: PMC6174360 DOI: 10.1016/j.ajhg.2018.08.004
mkdir -p Albuminuria_Haas_2018
wget https://personal.broadinstitute.org/mvon/UKB.v2.albuminuria.n382500.zip -P Albuminuria_Haas_2018
wget https://s3.amazonaws.com/broad-portal-resources/CVDKP/UKB.v2.albuminuria.n382500.README.txt -P Albuminuria_Haas_2018
unzip Albuminuria_Haas_2018

# http://www.broadcvdi.org/informational/data
# Heart failure
# Phenotypic Refinement of Heart Failure in a National Biobank Facilitates Genetic Discovery.
# Aragam KG, et al.
# Circulation. 2018 Nov 11. doi: 10.1161/CIRCULATIONAHA.118.035774
# PMID: 30586722 PMCID: PMC6511334 [Available on 2020-05-11] DOI: 10.1161/CIRCULATIONAHA.118.035774
mkdir -p Heart-Failure_Aragam_2018
wget https://s3.amazonaws.com/broad-portal-resources/CVDKP/Heart_failure_GWAS_README.txt -P Heart-Failure_Aragam_2018
wget https://personal.broadinstitute.org/mvon/2018.HRC.GWAS.UKBB.zip -P Heart-Failure_Aragam_2018
unzip Heart-Failure_Aragam_2018/2018.HRC.GWAS.UKBB.zip -d Heart-Failure_Aragam_2018

# https://www.ncbi.nlm.nih.gov/pubmed/30535219
# Association between titin loss-of-function variants and early-onset atrial fibrillation.
mkdir -p Atrial-Fibrillation-Early-Onset_Choi_2018
wget https://personal.broadinstitute.org/mvon/2018.AF.WGS.TOPMed.zip -P Atrial-Fibrillation-Early-Onset_Choi_2018 
wget https://s3.amazonaws.com/broad-portal-resources/CVDKP/AF_WGS_TOPMed_Freeze4_GWAS.README.txt -P Atrial-Fibrillation-Early-Onset_Choi_2018
unzip Atrial-Fibrillation-Early-Onset_Choi_2018/2018.AF.WGS.TOPMed.zip -d Atrial-Fibrillation-Early-Onset_Choi_2018

# Multi-ethnic genome-wide association study for atrial fibrillation.
# Roselli C, et al.
# Nat Genet. 2018 Sep;50(9):1225-1233. doi: 10.1038/s41588-018-0133-9
# PMID: 29892015 PMCID: PMC6136836 DOI: 10.1038/s41588-018-0133-9
mkdir -p Atrial-Fibrillation-Multi-Ethnic_Roselli_2018
wget https://personal.broadinstitute.org/mvon/AF_HRC_GWAS_ALLv11.zip -P Atrial-Fibrillation-Multi-Ethnic_Roselli_2018 
wget https://s3.amazonaws.com/broad-portal-resources/CVDKP/AF_HRC_GWAS_ALLv11_README.txt -P Atrial-Fibrillation-Multi-Ethnic_Roselli_2018
unzip Atrial-Fibrillation-Multi-Ethnic_Roselli_2018/AF_HRC_GWAS_ALLv11.zip -d Atrial-Fibrillation-Multi-Ethnic_Roselli_2018

# https://www.ncbi.nlm.nih.gov/pubmed/29748316
# Common and Rare Coding Genetic Variation Underlying the Electrocardiographic PR Interval.
# Lin H, et al.
# Circ Genom Precis Med. 2018;11:e002037. doi: 10.1161/CIRCGEN.117.002037
# PMID: 29748316 PMCID: PMC5951629 DOI: 10.1161/CIRCGEN.117.002037
mkdir -p Electrocardiograph-PR-Interval_Lin_2018
wget https://personal.broadinstitute.org/mvon/29748316.PR.interval.ExomeChip.zip -P Electrocardiograph-PR-Interval_Lin_2018
wget https://s3.amazonaws.com/broad-portal-resources/CVDKP/PR_interval.exome_chip.CVDKP_Readme.txt -P Electrocardiograph-PR-Interval_Lin_2018
unzip Electrocardiograph-PR-Interval_Lin_2018/29748316.PR.interval.ExomeChip.zip -d Electrocardiograph-PR-Interval_Lin_2018

# https://www.ncbi.nlm.nih.gov/pubmed/28794112
# Fifteen Genetic Loci Associated With the Electrocardiographic P Wave.
mkdir -p Electrocardiograph-P-Wave_Christophersen_2017
wget https://personal.broadinstitute.org/mvon/28794112.PWI.GWAS.zip -P Electrocardiograph-P-Wave_Christophersen_2017
wget https://s3.amazonaws.com/broad-portal-resources/CVDKP/Pwave_duration_Ptforce_GWAS.README.txt -P Electrocardiograph-P-Wave_Christophersen_2017
unzip Electrocardiograph-P-Wave_Christophersen_2017/28794112.PWI.GWAS.zip -d Electrocardiograph-P-Wave_Christophersen_2017


# https://www.ncbi.nlm.nih.gov/pubmed/30012220
# Exome-chip meta-analysis identifies novel loci associated with cardiac conduction, including ADAMTS6.
mkdir -p Cardiac-Conduction_Prins_2018
wget https://s3.amazonaws.com/broad-portal-resources/CVDKP/CHARGE_QRS.Exome_Chip_Study.20180416+.README.txt -P Cardiac-Conduction_Prins_2018
wget https://data.mendeley.com/datasets/7jgbckpdr4/1 -P Cardiac-Conduction_Prins_2018

# A Fib
# Nielsen
# http://csg.sph.umich.edu/willer/public/afib2018/
# Biobank-driven genomic discovery yields new insight into atrial fibrillation biology (Nielsen et al., Nature Genetics, 2018)
# PMID: 30061737 PMCID: PMC6530775 DOI: 10.1038/s41588-018-0171-3
mkdir -p Atrial-Fibrillation_Nielsen_2018
wget http://csg.sph.umich.edu/willer/public/afib2018/nielsen-thorolfsdottir-willer-NG2018-AFib-gwas-summary-statistics.tbl.gz -P Atrial-Fibrillation_Nielsen_2018

# https://journals.plos.org/plosone/article?id=10.1371/journal.pone.0196951
# Genome-wide association meta-analysis of circulating odd-numbered chain saturated fatty acids: Results from the CHARGE Consortium
# PMID: 29738550 PMCID: PMC5940220 DOI: 10.1371/journal.pone.0196951
mkdir -p Odd-Chain-Saturated-Fatty-Acids_de-Oliveira_2018
wget http://faculty.washington.edu/rozenl/files/150.txt --directory Odd-Chain-Saturated-Fatty-Acids_de-Oliveira_2018
wget http://faculty.washington.edu/rozenl/files/170.txt --directory Odd-Chain-Saturated-Fatty-Acids_de-Oliveira_2018
wget http://faculty.washington.edu/rozenl/files/Sum150170.txt --directory Odd-Chain-Saturated-Fatty-Acids_de-Oliveira_2018
wget http://faculty.washington.edu/rozenl/files/190.txt --directory Odd-Chain-Saturated-Fatty-Acids_de-Oliveira_2018
wget http://faculty.washington.edu/rozenl/files/230.txt --directory Odd-Chain-Saturated-Fatty-Acids_de-Oliveira_2018

# Genome-wide association study identifies novel loci associated with concentrations of four plasma phospholipid fatty acids in the de novo lipogenesis pathway: results from the Cohorts for Heart and Aging Research in Genomic Epidemiology (CHARGE) consortium.
# https://www.ncbi.nlm.nih.gov/pmc/articles/pmid/23362303/
# PMID: 23362303 PMCID: PMC3891054 DOI: 10.1161/CIRCGENETICS.112.964619
mkdir -p Fatty-Acids-De-Novo-Lipogenesis_Wu_2013
wget http://faculty.washington.edu/rozenl/files/CHARGE_160.txt --directory Fatty-Acids-De-Novo-Lipogenesis_2013
wget http://faculty.washington.edu/rozenl/files/CHARGE_180.txt --directory Fatty-Acids-De-Novo-Lipogenesis_2013
wget http://faculty.washington.edu/rozenl/files/CHARGE_161n7.txt --directory Fatty-Acids-De-Novo-Lipogenesis_2013
wget http://faculty.washington.edu/rozenl/files/CHARGE_181n9.txt --directory Fatty-Acids-De-Novo-Lipogenesis_2013

# https://www.ncbi.nlm.nih.gov/pubmed/24823311
# Genome-wide association study of plasma N6 polyunsaturated fatty acids within the cohorts for heart and aging research in genomic epidemiology consortium.
mkdir -p N6-Fatty-Acids_Guan_2014
wget -r http://www.msi.umn.edu/~wguan/CHARGE_N6GWAS --directory N6-Fatty-Acids_Guan_2014

# https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4307209/
# Genetic loci associated with circulating  phospholipid trans fatty acids: a meta-analysis of genome-wide association studies from the CHARGE Consortium
# PMID: 25646338 PMCID: PMC4307209 DOI: 10.3945/ajcn.114.094557
mkdir -p Trans-Fatty-Acids_Mozaffarian_2015
wget http://faculty.washington.edu/rozenl/files/T16_1n7_July5_1.txt --directory Trans-Fatty-Acids_Mozaffarian_2015
wget http://faculty.washington.edu/rozenl/files/T18_1_July5_1.txt --directory Trans-Fatty-Acids_Mozaffarian_2015
wget http://faculty.washington.edu/rozenl/files/T18_2_ct_July5_1.txt --directory Trans-Fatty-Acids_Mozaffarian_2015
wget http://faculty.washington.edu/rozenl/files/T18_2_tc_July5_1.txt --directory Trans-Fatty-Acids_Mozaffarian_2015
wget http://faculty.washington.edu/rozenl/files/T18_2_tt_July5_1.txt --directory Trans-Fatty-Acids_Mozaffarian_2015

# https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4274065/
# Genetic loci associated with circulating levels of very long-chain saturated fatty acids
# PMID: 25378659 PMCID: PMC4274065 DOI: 10.1194/jlr.M052456
mkdir -p Very-Long-Chain-Fatty-Acids_Lemaitre_2015
wget http://faculty.washington.edu/rozenl/files/CHARGE_20_0.txt --directory Very-Long-Chain-Fatty-Acids_Lemaitre_2015
wget http://faculty.washington.edu/rozenl/files/CHARGE_22_0.txt --directory Very-Long-Chain-Fatty-Acids_Lemaitre_2015
wget http://faculty.washington.edu/rozenl/files/CHARGE_22_0_adjfor200.txt --directory Very-Long-Chain-Fatty-Acids_Lemaitre_2015
wget http://faculty.washington.edu/rozenl/files/CHARGE_24_0.txt --directory Very-Long-Chain-Fatty-Acids_Lemaitre_2015
wget http://faculty.washington.edu/rozenl/files/CHARGE_24_0_adjfor200.txt --directory Very-Long-Chain-Fatty-Acids_Lemaitre_2015

# https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3145614/
# Genetic loci associated with plasma phospholipid n-3 fatty acids: a meta-analysis of genome-wide association studies from the CHARGE Consortium
# PMID: 21829377 PMCID: PMC3145614 DOI: 10.1371/journal.pgen.1002193
mkdir -p N3-Fatty-Acids_Lemaitre_2011
wget http://faculty.washington.edu/rozenl/files/CHARGE_N3_ALA.txt --directory N3-Fatty-Acids_Lemaitre_2011
wget http://faculty.washington.edu/rozenl/files/CHARGE_N3_EPA.txt --directory N3-Fatty-Acids_Lemaitre_2011
wget http://faculty.washington.edu/rozenl/files/CHARGE_N3_DPA.txt --directory N3-Fatty-Acids_Lemaitre_2011
wget http://faculty.washington.edu/rozenl/files/CHARGE_N3_DHA.txt --directory N3-Fatty-Acids_Lemaitre_2011

# https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5280020/
# The Genetic Landscape of Renal Complications in Type 1 Diabetes
# PMID: 27647854 PMCID: PMC5280020 DOI: 10.1681/ASN.2016020231
mkdir -p Diabetic-Kidney-Disease-Type-2_Sandholm_2016
wget http://mccarthy.well.ox.ac.uk/publications/2018/SUMMIT_DKD/SUMMIT_T1D_Combined_DKD_2016.txt.gz --directory Diabetic-Kidney-Disease-Type-2_Sandholm_2016
wget http://mccarthy.well.ox.ac.uk/publications/2018/SUMMIT_DKD/SUMMIT_T1D_CKD_2016.txt.gz --directory Diabetic-Kidney-Disease-Type-2_Sandholm_2016
wget http://mccarthy.well.ox.ac.uk/publications/2018/SUMMIT_DKD/SUMMIT_T1D_CKD_DKD_2016.txt.gz --directory Diabetic-Kidney-Disease-Type-2_Sandholm_2016
wget http://mccarthy.well.ox.ac.uk/publications/2018/SUMMIT_DKD/SUMMIT_T1D_ESRD_vs_no_DKD_2016.txt.gz --directory Diabetic-Kidney-Disease-Type-2_Sandholm_2016
wget http://mccarthy.well.ox.ac.uk/publications/2018/SUMMIT_DKD/SUMMIT_T1D_ESRD_vs_non_ESRD_2016.txt.gz --directory Diabetic-Kidney-Disease-Type-2_Sandholm_2016
wget http://mccarthy.well.ox.ac.uk/publications/2018/SUMMIT_DKD/SUMMIT_T1D_Late_DKD_2016.txt.gz --directory Diabetic-Kidney-Disease-Type-2_Sandholm_2016
wget http://mccarthy.well.ox.ac.uk/publications/2018/SUMMIT_DKD/SUMMIT_T1D_Early_DKD_2016.txt.gz --directory Diabetic-Kidney-Disease-Type-2_Sandholm_2016
wget http://mccarthy.well.ox.ac.uk/publications/2018/SUMMIT_DKD/T1D_eGFR.euro.txt --directory Diabetic-Kidney-Disease-Type-2_Sandholm_2016

# https://www.ncbi.nlm.nih.gov/pmc/articles/PMC6014557/
# A Genome-Wide Association Study of Diabetic Kidney Disease in Subjects With Type 2 Diabetes.
# PMID: 29703844 PMCID: PMC6014557 DOI: 10.2337/db17-0914
mkdir -p Diabetic-Kidney-Disease-Type-2_van-Zuydam_2018
wget http://mccarthy.well.ox.ac.uk/publications/2018/SUMMIT_DKD/T2D_dkd.euro.txt.gz --directory Diabetic-Kidney-Disease-Type-2_van-Zuydam_2018
wget http://mccarthy.well.ox.ac.uk/publications/2018/SUMMIT_DKD/T2D_ckd.euro.n.txt.gz --directory Diabetic-Kidney-Disease-Type-2_van-Zuydam_2018
wget http://mccarthy.well.ox.ac.uk/publications/2018/SUMMIT_DKD/T2D_ckddkd.euro.txt.gz --directory Diabetic-Kidney-Disease-Type-2_van-Zuydam_2018
wget http://mccarthy.well.ox.ac.uk/publications/2018/SUMMIT_DKD/T2D_esrdvscontrols.euro.txt.gz --directory Diabetic-Kidney-Disease-Type-2_van-Zuydam_2018
wget http://mccarthy.well.ox.ac.uk/publications/2018/SUMMIT_DKD/T2D_esrdvsnonesrd.euro.txt.gz --directory Diabetic-Kidney-Disease-Type-2_van-Zuydam_2018
wget http://mccarthy.well.ox.ac.uk/publications/2018/SUMMIT_DKD/T2D_latedkd.euro.txt.gz --directory Diabetic-Kidney-Disease-Type-2_van-Zuydam_2018
wget http://mccarthy.well.ox.ac.uk/publications/2018/SUMMIT_DKD/T2D_microalbuminuria.euro.txt.gz --directory Diabetic-Kidney-Disease-Type-2_van-Zuydam_2018
wget http://mccarthy.well.ox.ac.uk/publications/2018/SUMMIT_DKD/T2D_eGFR.euro.txt.gz --directory Diabetic-Kidney-Disease-Type-2_van-Zuydam_2018
wget http://mccarthy.well.ox.ac.uk/publications/2018/SUMMIT_DKD/T2D_dkd.multiethnic.txt.gz --directory Diabetic-Kidney-Disease-Type-2_van-Zuydam_2018
wget http://mccarthy.well.ox.ac.uk/publications/2018/SUMMIT_DKD/T2D_ckd.multiethnic.txt.gz --directory Diabetic-Kidney-Disease-Type-2_van-Zuydam_2018
wget http://mccarthy.well.ox.ac.uk/publications/2018/SUMMIT_DKD/T2D_ckddkd.multiethnic.txt.gz --directory Diabetic-Kidney-Disease-Type-2_van-Zuydam_2018
wget http://mccarthy.well.ox.ac.uk/publications/2018/SUMMIT_DKD/T2D_esrdvsnonesrd.multiethnic.txt.gz --directory Diabetic-Kidney-Disease-Type-2_van-Zuydam_2018
wget http://mccarthy.well.ox.ac.uk/publications/2018/SUMMIT_DKD/T2D_latedkd.multiethnic.txt.gz --directory Diabetic-Kidney-Disease-Type-2_van-Zuydam_2018
wget http://mccarthy.well.ox.ac.uk/publications/2018/SUMMIT_DKD/T2D_microalbuminuria.multiethnic.n.txt.gz --directory Diabetic-Kidney-Disease-Type-2_van-Zuydam_2018
wget http://mccarthy.well.ox.ac.uk/publications/2018/SUMMIT_DKD/T2D_egfr.multiethnic.txt.gz --directory Diabetic-Kidney-Disease-Type-2_van-Zuydam_2018
wget http://mccarthy.well.ox.ac.uk/publications/2018/SUMMIT_DKD/T1D-T2D_dkd.euro.txt.gz --directory Diabetic-Kidney-Disease-Type-2_van-Zuydam_2018
wget http://mccarthy.well.ox.ac.uk/publications/2018/SUMMIT_DKD/T1D-T2D_ckd.euro.txt.gz --directory Diabetic-Kidney-Disease-Type-2_van-Zuydam_2018
wget http://mccarthy.well.ox.ac.uk/publications/2018/SUMMIT_DKD/T1D-T2D_ckddkd.euro.txt.gz --directory Diabetic-Kidney-Disease-Type-2_van-Zuydam_2018
wget http://mccarthy.well.ox.ac.uk/publications/2018/SUMMIT_DKD/T1D-T2D_esrdvscontrols.euro.txt.gz --directory Diabetic-Kidney-Disease-Type-2_van-Zuydam_2018
wget http://mccarthy.well.ox.ac.uk/publications/2018/SUMMIT_DKD/T1D-T2D_esrdvsnonesrd.euro.txt.gz --directory Diabetic-Kidney-Disease-Type-2_van-Zuydam_2018
wget http://mccarthy.well.ox.ac.uk/publications/2018/SUMMIT_DKD/T1D-T2D_latedkd.euro.txt.gz --directory Diabetic-Kidney-Disease-Type-2_van-Zuydam_2018
wget http://mccarthy.well.ox.ac.uk/publications/2018/SUMMIT_DKD/T1D-T2D_microalbuminuria.euro.txt.gz --directory Diabetic-Kidney-Disease-Type-2_van-Zuydam_2018
wget http://mccarthy.well.ox.ac.uk/publications/2018/SUMMIT_DKD/T1D-T2D_eGFR.euro.txt.gz --directory Diabetic-Kidney-Disease-Type-2_van-Zuydam_2018
wget http://mccarthy.well.ox.ac.uk/publications/2018/SUMMIT_DKD/T1D-T2D_dkd.multiethnic.txt.gz --directory Diabetic-Kidney-Disease-Type-2_van-Zuydam_2018
wget http://mccarthy.well.ox.ac.uk/publications/2018/SUMMIT_DKD/T1D-T2D_ckd.multiethnic.txt.gz --directory Diabetic-Kidney-Disease-Type-2_van-Zuydam_2018
wget http://mccarthy.well.ox.ac.uk/publications/2018/SUMMIT_DKD/T1D-T2D_ckddkd.multiethnic.txt.gz --directory Diabetic-Kidney-Disease-Type-2_van-Zuydam_2018
wget http://mccarthy.well.ox.ac.uk/publications/2018/SUMMIT_DKD/T1D-T2D_esrdvsnonesrd.mutliethnic.txt.gz --directory Diabetic-Kidney-Disease-Type-2_van-Zuydam_2018
wget http://mccarthy.well.ox.ac.uk/publications/2018/SUMMIT_DKD/T1D-T2D_latedkd.multiethnic.txt.gz --directory Diabetic-Kidney-Disease-Type-2_van-Zuydam_2018
wget http://mccarthy.well.ox.ac.uk/publications/2018/SUMMIT_DKD/T1D-T2D_microalbuminuria.multiethnic.txt.gz --directory Diabetic-Kidney-Disease-Type-2_van-Zuydam_2018
wget http://mccarthy.well.ox.ac.uk/publications/2018/SUMMIT_DKD/T1D-T2D_egfr.multiethnic.txt.gz --directory Diabetic-Kidney-Disease-Type-2_van-Zuydam_2018

# Siewert
# Bivariate CAD
# Bivariate Genome-Wide Association Scan Identifies 6 Novel Loci Associated With Lipid Levels and Coronary Artery Disease
# https://www.ahajournals.org/doi/full/10.1161/CIRCGEN.118.002239
# PMID: 30525989 PMCID: PMC6291836 DOI: 10.1161/CIRCGEN.118.002239
mkdir Coronary-Artery-Disease-and-Lipid-Levels_Siewert_2018
wget http://coruscant.itmat.upenn.edu/data/SiewertEA_bivarStats.tar.gz --directory Coronary-Artery-Disease-and-Lipid-Levels_Siewert_2018

# Depression
# https://datashare.is.ed.ac.uk/handle/10283/3203
# https://www.nature.com/articles/s41467-018-03819-3
# Genome-wide meta-analysis of depression identifies 102 independent variants and highlights
# PMID: 30718901 PMCID: PMC6522363 DOI: 10.1038/s41593-018-0326-7
mkdir -p Depression_Howard_2019
wget https://datashare.is.ed.ac.uk/bitstream/handle/10283/3203/PGC_UKB_depression_genome-wide.txt?sequence=3&isAllowed=y --directory Depression_Howard_2019
wget https://datashare.is.ed.ac.uk/bitstream/handle/10283/3203/ReadMe.txt?sequence=4&isAllowed=y --directory Depression_Howard_2019
wget https://datashare.is.ed.ac.uk/bitstream/handle/10283/3036/UKBiobank_broad_12Jan18.txt?sequence=1&isAllowed=y --directory Depression_Howard_2019
wget https://datashare.is.ed.ac.uk/bitstream/handle/10283/3036/UKBiobank_icdMDD_12Jan18.txt?sequence=3&isAllowed=y --directory Depression_Howard_2019
wget https://datashare.is.ed.ac.uk/bitstream/handle/10283/3036/readme.txt?sequence=4&isAllowed=y --directory Depression_Howard_2019

# wget https://myfiles.uu.se/ssf/s/readFile/share/3993/1270878243748486898/publicLink/GWAS_summary_stats_ratios.zip
# https://www.ncbi.nlm.nih.gov/pubmed/30664634
# Genome-wide association study of body fat distribution identifies adiposity loci and sex-specific genetic effects
mkdir -p BMI_Rask-Andersen_2019
wget https://myfiles.uu.se/ssf/s/readFile/share/3993/1270878243748486898/publicLink/GWAS_summary_stats_ratios.zip --directory BMI_Rask-Andersen_2019


# https://bmcpulmmed.biomedcentral.com/articles/10.1186/s12890-019-0811-0#MOESM2
# Limited overlap in significant hits between genome-wide association studies on two airflow obstruction definitions in the same population
mkdir Airflow-Obstruction_van-der-Plaat_2019
wget https://static-content.springer.com/esm/art%3A10.1186%2Fs12890-019-0811-0/MediaObjects/12890_2019_811_MOESM2_ESM.xlsx -d Airflow-Obstruction_van-der-Plaat_2019

# http://www.mrc-epid.cam.ac.uk/research/resources/gwas-summary-statistics-dataset/
# Genome–wide association study for risk taking propensity indicates shared pathways with body mass index
# https://www.nature.com/articles/s42003-018-0042-6
# PMID: 30271922 PMCID: PMC6123697 DOI: 10.1038/s42003-018-0042-6
mkdir Risk-Taking_Clifton_2018
wget https://epiweb.mrc-epid.cam.ac.uk/files/Risk_SumStats_Clifton_2018.csv.gz -d  Risk-Taking_Clifton_2018

# http://www.epigad.org/gwas_ilae2018_16loci.html
# Genome-wide mega-analysis identifies 16 loci and highlights diverse biological mechanisms in the common epilepsies
# https://www.ncbi.nlm.nih.gov/pubmed/30531953
mkdir Epilepsy_ILAE-Consortium_2018
wget http://www.epigad.org/gwas_ilae2018_16loci/all_epilepsy_METAL.gz -d Epilepsy_ILAE-Consortium_2018
wget http://www.epigad.org/gwas_ilae2018_16loci/CAE_BOLT-LMM_final.gz -d Epilepsy_ILAE-Consortium_2018
wget http://www.epigad.org/gwas_ilae2018_16loci/focal_epilepsy_METAL.gz -d Epilepsy_ILAE-Consortium_2018
wget http://www.epigad.org/gwas_ilae2018_16loci/focal_HS_BOLT-LMM_final.gz -d Epilepsy_ILAE-Consortium_2018
wget http://www.epigad.org/gwas_ilae2018_16loci/focal_lesion_negative_BOLT-LMM_final.gz -d Epilepsy_ILAE-Consortium_2018
wget http://www.epigad.org/gwas_ilae2018_16loci/focal_other_lesion_BOLT-LMM_final.gz -d Epilepsy_ILAE-Consortium_2018
wget http://www.epigad.org/gwas_ilae2018_16loci/generalised_epilepsy_METAL.gz -d Epilepsy_ILAE-Consortium_2018
wget http://www.epigad.org/gwas_ilae2018_16loci/GTCS_BOLT-LMM_final.gz -d Epilepsy_ILAE-Consortium_2018
wget http://www.epigad.org/gwas_ilae2018_16loci/JAE_BOLT-LMM_final.gz -d Epilepsy_ILAE-Consortium_2018
wget http://www.epigad.org/gwas_ilae2018_16loci/JME_BOLT-LMM_final.gz -d Epilepsy_ILAE-Consortium_2018
wget http://www.epigad.org/gwas_ilae2018_16loci/README.txt -d Epilepsy_ILAE-Consortium_2018

# Genome-wide association study in Japanese females identifies fifteen novel skin-related trait associations
# https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5997657/
# Summary stats available for download as Supp Data 1-7
# PMID: 29895819 PMCID: PMC5997657 DOI: 10.1038/s41598-018-27145-2
mkdir Skin-Traits_Endo_2018
wget https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5997657/bin/41598_2018_27145_MOESM1_ESM.pdf -d Skin-Traits_Endo_2018
wget https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5997657/bin/41598_2018_27145_MOESM4_ESM.txt -d Skin-Traits_Endo_2018 # Age-spots
wget https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5997657/bin/41598_2018_27145_MOESM5_ESM.txt -d Skin-Traits_Endo_2018 # Freckles
wget https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5997657/bin/41598_2018_27145_MOESM6_ESM.txt -d Skin-Traits_Endo_2018 # Double eyelid
wget https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5997657/bin/41598_2018_27145_MOESM7_ESM.txt -d Skin-Traits_Endo_2018 # Eyebrows
wget https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5997657/bin/41598_2018_27145_MOESM8_ESM.txt -d Skin-Traits_Endo_2018 # Hair type
wget https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5997657/bin/41598_2018_27145_MOESM9_ESM.txt -d Skin-Traits_Endo_2018 # Excessive hairiness
wget https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5997657/bin/41598_2018_27145_MOESM10_ESM.txt -d Skin-Traits_Endo_2018 # Excessive sweatiness

# https://www.ncbi.nlm.nih.gov/pubmed/30842574
# The influence of X chromosome variants on trait neuroticism.
mkdir Neuroticism_Luciano_2019
wget http://www.psy.ed.ac.uk/ccace/downloads/Luciano2019_MolPsych_Neuroticism_X.gz --directory Neuroticism_Luciano_2019
wget http://www.psy.ed.ac.uk/ccace/downloads/Luciano2019_MolPsych_Neuroticism_XY.gz --directory Neuroticism_Luciano_2019
wget http://www.psy.ed.ac.uk/ccace/downloads/Luciano2019_MolPsych_Neuroticism_README.txt --directory Neuroticism_Luciano_2019

# GWAS on family history of Alzheimer's disease
# https://datashare.is.ed.ac.uk/handle/10283/3364 
# https://www.ncbi.nlm.nih.gov/pubmed/29777097
mkdir Alzheimers-Family-History_Marioni_2018
wget https://datashare.is.ed.ac.uk/bitstream/handle/10283/3364/license_text?sequence=6&isAllowed=y --directory Alzheimers-Family-History_Marioni_2018
wget https://datashare.is.ed.ac.uk/bitstream/handle/10283/3364/1_UKB_AD_maternal_summary_output_June2019.txt?sequence=1&isAllowed=y --directory Alzheimers-Family-History_Marioni_2018
wget https://datashare.is.ed.ac.uk/bitstream/handle/10283/3364/2_UKB_AD_paternal_summary_output_June2019.txt?sequence=2&isAllowed=y --directory Alzheimers-Family-History_Marioni_2018
wget https://datashare.is.ed.ac.uk/bitstream/handle/10283/3364/3_UKB_AD_parental_meta_summary_output_June2019.txt?sequence=3&isAllowed=y --directory Alzheimers-Family-History_Marioni_2018
wget https://datashare.is.ed.ac.uk/bitstream/handle/10283/3364/README?sequence=4&isAllowed=y --directory Alzheimers-Family-History_Marioni_2018
wget https://datashare.is.ed.ac.uk/bitstream/handle/10283/3364/4_UKB_IGAP_AD_meta_summary_output_June2019.txt?sequence=5&isAllowed=y --directory Alzheimers-Family-History_Marioni_2018

# Study of 300,486 individuals identifies 148 independent genetic loci influencing general cognitive function.
# https://www.nature.com/articles/s41467-018-04362-x
# http://www.ccace.ed.ac.uk/node/335
# PMID: 29844566 PMCID: PMC5974083 DOI: 10.1038/s41467-018-04362-x
mkdir Cognitive-Function_Davies_2018
wget http://www.psy.ed.ac.uk/ccace/downloads/Davies_NC_2018.zip --directory Cognitive-Function_Davies_2018
wget http://www.psy.ed.ac.uk/ccace/downloads/Davies_NC_2018_OPEN_DATASET.zip --directory Cognitive-Function_Davies_2018
 
# https://www.nature.com/articles/s41588-018-0121-0.pdf?origin=ppub
# http://lianglab.rc.fas.harvard.edu/AsthmaAllergyHeritability/
# A genome-wide cross trait analysis from UK Biobank highlights the shared genetic architecture of asthma and allergic diseases
# PMID: 29785011 PMCID: PMC5980765 DOI: 10.1038/s41588-018-0121-0
mkdir Allergic-Diseases_Zhu_2018
wget http://lianglab.rc.fas.harvard.edu/AsthmaAllergyHeritability/UKBB.asthma.assoc.gz --directory Allergic-Diseases_Zhu_2018
wget http://lianglab.rc.fas.harvard.edu/AsthmaAllergyHeritability/UKBB.allergy.assoc.gz --directory Allergic-Diseases_Zhu_2018

# https://www.ncbi.nlm.nih.gov/pubmed/24183453
# Inference of the genetic architecture underlying BMI and height with the use of 20,240 sibling pairs.
# http://cnsgenomics.com/data.html
mkdir BMI+Height_Hemani_2013
wget http://cnsgenomics.com/data/hemani_et_al_2013_ajhg/hemani_pihat.txt --directory BMI+Height_Hemani_2013

# Estimation of genetic variance from imputed sequence variants reveals negligible missing heritability for human height and body mass index
# https://www.ncbi.nlm.nih.gov/pubmed/26323059
mkdir Yang_BMI+Height_2015
wget http://cnsgenomics.com/data/yang_et_al_2015_ng/LDSCORE_release_July2015.tar.gz --directory Yang_BMI+Height_2015
wget http://cnsgenomics.com/data/yang_et_al_2015_ng/GWAS_summary_release_July2015.tar.gz  --directory Yang_BMI+Height_2015

# Population genetic differentiation of height and body mass index across Europe
# https://www.nature.com/articles/ng.3401
# PMID: 26366552 PMCID: PMC4984852 DOI: 10.1038/ng.3401
mkdir BMI+Height_Robinson_2015
wget http://cnsgenomics.com/data/robinson_et_al_2015_ng/Within-family_GWAS_of_height_based_on_sib_regression_using_data_from_Robinson_et_al_2015_LYMRR.txt.gz --directory BMI+Height_Robinson_2015
wget http://cnsgenomics.com/data/robinson_et_al_2015_ng/Within-family_GWAS_of_bmi_based_on_sib_regression_using_data_from_Robinson_et_al_2015_LYMRR.txt.gz --directory BMI+Height_Robinson_2015

# Causal associations between risk factors and common diseases inferred from GWAS summary data
# https://www.nature.com/articles/s41467-017-02317-2
# PMID: 29335400 PMCID: PMC5768719 DOI: 10.1038/s41467-017-02317-2
mkdir Multi-Trait_Zhu_2018
wget http://cnsgenomics.com/data/GSMR/Zhu_et_al_GSMR_2017_GERA.tar.gz --directory Multi-Trait_Zhu_2018
wget http://cnsgenomics.com/data/GSMR/Zhu_et_al_GSMR_2017_UKB.tar.gz --directory Multi-Trait_Zhu_2018

# https://www.nature.com/articles/s41467-018-04951-w
# Genome-wide association analyses identify 143 risk variants and putative regulatory mechanisms for type 2 diabetes
# PMID: 30054458 PMCID: PMC6063971 DOI: 10.1038/s41467-018-04951-w
mkdir Type-2-Diabetes_Xue_2018
wget http://cnsgenomics.com/data/t2d/Xue_et_al_T2D_META_Nat_Commun_2018.gz --directory Type-2-Diabetes_Xue_2018
wget http://cnsgenomics.com/data/t2d/Xue_et_al_T2D_META_Nat_Commun_2018.pdf --directory Type-2-Diabetes_Xue_2018

# Dissection of genetic variation and evidence for pleiotropy in male pattern baldness
# https://www.nature.com/articles/s41467-018-07862-y
# PMID: 30573740 PMCID: PMC6302097 DOI: 10.1038/s41467-018-07862-y
mkdir Male-Pattern-Baldness_Yap_2018
wget http://cnsgenomics.com/data/mpb/mpb_bolt_lmm_aut_x.tab.zip --directory Male-Pattern-Baldness_Yap_2018
wget http://cnsgenomics.com/data/mpb/MPB_GWAS_summary_statistics_README.pdf --directory Male-Pattern-Baldness_Yap_2018

# Genome-wide association study of medication-use and associated disease in the UK Biobank
# https://www.nature.com/articles/s41467-019-09572-5
# PMID: 31015401 PMCID: PMC6478889 DOI: 10.1038/s41467-019-09572-5
mkdir Medication-Use_Wu_2019
wget http://cnsgenomics.com/data/wu_et_al_2019_nc/23_medication-taking_GWAS_summary_statistics.tar.gz --directory Medication-Use_Wu_2019
wget http://cnsgenomics.com/data/wu_et_al_2019_nc/23_medication-taking_GWAS_summary_statistics_README.pdf  --directory Medication-Use_Wu_2019

# The effect of X-linked dosage compensation on complex trait variation
# https://www.nature.com/articles/s41467-019-10598-y
# PMID: 31285442 PMCID: PMC6614401 DOI: 10.1038/s41467-019-10598-y
mkdir X-Linked-Dosage-Compensation_Sidorenko_2019
wget http://cnsgenomics.com/data/XWAS/UKBv3_Xchr_20traits.tar.gz --directory X-Linked-Dosage-Compensation_Sidorenko_2019
wget http://cnsgenomics.com/data/XWAS/chrX_eqtl_besd.tar.gz  --directory X-Linked-Dosage-Compensation_Sidorenko_2019

# A genome-wide association analysis identifies 16 novel susceptibility loci for carpal tunnel syndrome
# https://www.nature.com/articles/s41467-019-08993-6#MOESM6 
# PMID: 30833571 PMCID: PMC6399342 DOI: 10.1038/s41467-019-08993-6
mkdir Carpal-Tunnel-Syndrome_Wiberg_2019
wget https://static-content.springer.com/esm/art%3A10.1038%2Fs41467-019-08993-6/MediaObjects/41467_2019_8993_MOESM6_ESM.txt --directory Carpal-Tunnel-Syndrome_Wiberg_2019

# Smoking stuff
# Data Related to Association studies of up to 1.2 million individuals yield new insights into the genetic etiology of tobacco and alcohol use
# https://conservancy.umn.edu/handle/11299/201564
mkdir Smoking_Mengzhen_2019
wget https://conservancy.umn.edu/bitstream/handle/11299/201564/README.txt?sequence=29&isAllowed=y --directory Smoking_Mengzhen_2019
wget https://conservancy.umn.edu/bitstream/handle/11299/201564/AgeofInitiation.txt.gz?sequence=30&isAllowed=y --directory Smoking_Mengzhen_2019
wget https://conservancy.umn.edu/bitstream/handle/11299/201564/CigarettesPerDay.txt.gz?sequence=31&isAllowed=y --directory Smoking_Mengzhen_2019
wget https://conservancy.umn.edu/bitstream/handle/11299/201564/DrinksPerWeek.txt.gz?sequence=32&isAllowed=y --directory Smoking_Mengzhen_2019
wget https://conservancy.umn.edu/bitstream/handle/11299/201564/SmokingCessation.txt.gz?sequence=33&isAllowed=y --directory Smoking_Mengzhen_2019
wget https://conservancy.umn.edu/bitstream/handle/11299/201564/SmokingInitiation.txt.gz?sequence=34&isAllowed=y --directory Smoking_Mengzhen_2019

# https://www.ncbi.nlm.nih.gov/pubmed/29348432
# Genome-wide association study of self-reported food reactions in Japanese identifies shrimp and peach specific loci in the HLA-DR/DQ gene region.
mkdir Food-Allergies_Khor_2018
wget https://static-content.springer.com/esm/art%3A10.1038%2Fs41598-017-18241-w/MediaObjects/41598_2017_18241_MOESM3_ESM.txt --directory Food-Allergies_Khor_2018
wget https://static-content.springer.com/esm/art%3A10.1038%2Fs41598-017-18241-w/MediaObjects/41598_2017_18241_MOESM4_ESM.txt --directory Food-Allergies_Khor_2018

# https://www.nature.com/articles/s41467-018-04332-3
# https://github.com/Biogen-Inc/statgen
# A whole-genome sequence study identifies genetic risk factors for neuromyelitis optica
# PMID: 29769526 PMCID: PMC5955905 DOI: 10.1038/s41467-018-04332-3
mkdir Neuromyelitis-Optica_Estrada_2018
wget https://github.com/Biogen-Inc/statgen/archive/master.zip --directory Neuromyelitis-Optica_Estrada_2018

# https://www.ncbi.nlm.nih.gov/pubmed/29309628
# Genome-wide association study of offspring birth weight in 86 577 women identifies five novel loci and highlights maternal genetic effects that are independent of fetal genetics.
# http://egg-consortium.org/offspring-birth-weight.html
# PMID: 29309628 PMCID: PMC5886200 DOI: 10.1093/hmg/ddx429
mkdir Birth-Weight_Beaumont_2018
wget http://mccarthy.well.ox.ac.uk/publications/2018/EggOffspringBirthWeight_HumMolGen/MBW_Summary_Stats.txt.gz --directory Birth-Weight_Beaumont_2018

# http://www.lolipopstudy.org/data-download
# wget https://drive.google.com/drive/folders/1oue99uE080sSoyFF84efVTLR5GK4WZ3s?usp=sharing
# Chambers JC, Zhang W, Sehmi J, Li X, Wass MN, Van der Harst P, et al. Genome-wide association study identifies loci influencing concentrations of liver enzymes in plasma. Nature genetics. 2011;43(11):1131-8.
# PMID: 22001757 PMCID: PMC3482372 DOI: 10.1038/ng.970
mkdir -p Liver-Enzymes_Chambers_2011
wget https://drive.google.com/drive/folders/1oue99uE080sSoyFF84efVTLR5GK4WZ3s?usp=sharing -P Liver-Enzymes_Chambers_2011

# Next block of downloads are from https://ctg.cncr.nl/software/summary_statistics

# Genome-Wide Association Studies of a Broad Spectrum of Antisocial Behavior
# https://www.ncbi.nlm.nih.gov/pmc/articles/PMC6309228/
# http://broadabc.ctglab.nl/summary_statistics
# PMID: 28979981 PMCID: PMC6309228 DOI: 10.1001/jamapsychiatry.2017.3069
mkdir -p Antisocial-Behavior_Tielbeek_2017
wget http://broadabc.ctglab.nl/documents/p12/BroadABC_METALoutput_Combined.tbl -P Antisocial-Behavior_Tielbeek_2017
wget http://broadabc.ctglab.nl/documents/p12/BroadABC_METALoutput_Females.tbl -P Antisocial-Behavior_Tielbeek_2017
wget http://broadabc.ctglab.nl/documents/p12/BroadABC_METALoutput__Males.tbl -P Antisocial-Behavior_Tielbeek_2017
wget http://broadabc.ctglab.nl/documents/p12/readme_tielbeek_jamapsychiatry2017_antisocial_behavior_sumstats.txt -P Antisocial-Behavior_Tielbeek_2017

# Item-level analyses reveal genetic heterogeneity in neuroticism.
# https://www.ncbi.nlm.nih.gov/pubmed/29500382
mkdir -p Neuroticism-Items_Nagel_2018
wget https://ctg.cncr.nl/documents/p1651/readme_neuro_items_ctg -P Neuroticism-Items_Nagel_2018
wget https://ctg.cncr.nl/documents/p1651/sumstats_neuro_f1920_ctg_format.txt.gz -P Neuroticism-Items_Nagel_2018
wget https://ctg.cncr.nl/documents/p1651/sumstats_neuro_f1930_ctg_format.txt.gz -P Neuroticism-Items_Nagel_2018
wget https://ctg.cncr.nl/documents/p1651/sumstats_neuro_f1940_ctg_format.txt.gz -P Neuroticism-Items_Nagel_2018
wget https://ctg.cncr.nl/documents/p1651/sumstats_neuro_f1950_ctg_format.txt.gz -P Neuroticism-Items_Nagel_2018
wget https://ctg.cncr.nl/documents/p1651/sumstats_neuro_f1960_ctg_format.txt.gz -P Neuroticism-Items_Nagel_2018
wget https://ctg.cncr.nl/documents/p1651/sumstats_neuro_f1970_ctg_format.txt.gz -P Neuroticism-Items_Nagel_2018
wget https://ctg.cncr.nl/documents/p1651/sumstats_neuro_f1980_ctg_format.txt.gz -P Neuroticism-Items_Nagel_2018
wget https://ctg.cncr.nl/documents/p1651/sumstats_neuro_f1990_ctg_format.txt.gz -P Neuroticism-Items_Nagel_2018
wget https://ctg.cncr.nl/documents/p1651/sumstats_neuro_f2000_ctg_format.txt.gz -P Neuroticism-Items_Nagel_2018
wget https://ctg.cncr.nl/documents/p1651/sumstats_neuro_f2010_ctg_format.txt.gz -P Neuroticism-Items_Nagel_2018
wget https://ctg.cncr.nl/documents/p1651/sumstats_neuro_f2020_ctg_format.txt.gz -P Neuroticism-Items_Nagel_2018
wget https://ctg.cncr.nl/documents/p1651/sumstats_neuro_f2030_ctg_format.txt.gz -P Neuroticism-Items_Nagel_2018
wget https://ctg.cncr.nl/documents/p1651/sumstats_neuro_sum_ctg_format.txt.gz -P Neuroticism-Items_Nagel_2018

# Genome-wide association meta-analysis (N=269,867) identifies new genetic and functional links to intelligence.
# https://www.ncbi.nlm.nih.gov/pmc/articles/PMC6411041/
# PMID: 29942086 PMCID: PMC6411041 DOI: 10.1038/s41588-018-0152-6
mkdir -p Intelligence_Savage_2018
wget https://ctg.cncr.nl/documents/p1651/SavageJansen_IntMeta_sumstats.zip -P Intelligence_Savage_2018

# Meta-Analysis of Genome-wide Association Studies for Neuroticism in 449,484 Individuals Identifies Novel Genetic Loci and Pathways.
# https://www.ncbi.nlm.nih.gov/pubmed/29942085
mkdir -p Neuroticism-Subclusters_Nagel_2018
wget https://ctg.cncr.nl/documents/p1651/readme_ctg -P Neuroticism-Subclusters_Nagel_2018
wget https://ctg.cncr.nl/documents/p1651/checksums.txt -P Neuroticism-Subclusters_Nagel_2018
wget https://ctg.cncr.nl/documents/p1651/sumstats_depressed_affect_ctg_format.txt.gz -P Neuroticism-Subclusters_Nagel_2018
wget https://ctg.cncr.nl/documents/p1651/sumstats_depression_ctg_format.txt.gz -P Neuroticism-Subclusters_Nagel_2018
wget https://ctg.cncr.nl/documents/p1651/sumstats_neuroticism_ctg_format.txt.gz -P Neuroticism-Subclusters_Nagel_2018
wget https://ctg.cncr.nl/documents/p1651/sumstats_worry_ctg_format.txt.gz -P Neuroticism-Subclusters_Nagel_2018

# Genome-wide analysis of insomnia in 1,331,010 individuals identifies new risk loci and functional pathways
# https://www.ncbi.nlm.nih.gov/pubmed/30804565
mkdir -p Insomnia_Jansen_2019
wget https://ctg.cncr.nl/documents/p1651/Insomnia_sumstats_Jansenetal.readme.txt -P Insomnia_Jansen_2019
wget https://ctg.cncr.nl/documents/p1651/Insomnia_sumstats_Jansenetal.txt.gz -P Insomnia_Jansen_2019
wget https://ctg.cncr.nl/documents/p1651/Sleepdur_sumstats_Jansenetal.txt.gz -P Insomnia_Jansen_2019
wget https://ctg.cncr.nl/documents/p1651/Snoring_sumstats_Jansenetal.txt.gz -P Insomnia_Jansen_2019
wget https://ctg.cncr.nl/documents/p1651/Dozing_sumstats_Jansenetal.txt.gz -P Insomnia_Jansen_2019
wget https://ctg.cncr.nl/documents/p1651/Morningness_sumstats_Jansenetal.txt.gz -P Insomnia_Jansen_2019
wget https://ctg.cncr.nl/documents/p1651/Gettingup_sumstats_Jansenetal.txt.gz -P Insomnia_Jansen_2019
wget https://ctg.cncr.nl/documents/p1651/Napping_sumstats_Jansenetal.txt.gz -P Insomnia_Jansen_2019

# https://www.thessgac.org/data
# The Molecular Genetic Architecture of Self-Employment
# https://www.ncbi.nlm.nih.gov/pmc/articles/pmid/23593239/
mkdir Self-Employment_van-der-Loos_2013
wget https://www.dropbox.com/s/u1q6dwngxx94p7o/GWAS.SELF-EMPLOYMENT.vanderLoos2013.txt?dl=0 -P Self-Employment_van-der-Loos_2013
wget https://www.dropbox.com/s/5mml5r18ig32m47/README.GWAS.SELF-EMPLOYMENT.vanderLoos2013.txt?dl=0 -P Self-Employment_van-der-Loos_2013

# Multi-trait analysis of genome-wide association summary statistics using MTAG.
# https://www.ncbi.nlm.nih.gov/pubmed/29292387
mkdir Neuroticism_Turley_2018
wget https://www.dropbox.com/s/v79rfw9x14cj0fg/GWAS_NEUR_full.txt?dl=0 -P Neuroticism_Turley_2018
wget http://ssgac.org/documents/MTAG_README.txt -P Neuroticism_Turley_2018

# Genome-wide association study results for educational attainment aid in identifying genetic heterogeneity of schizophrenia.
# https://www.ncbi.nlm.nih.gov/pubmed/30082721
mkdir Educational-Attainment-Plus-Schizophrenia_Bansal_2018
wget https://www.dropbox.com/s/q6eci72lzf013ls/EA2_SZ_data_incl_23andMe.csv?dl=0 -P Educational-Attainment-Plus-Schizophrenia_Bansal_2018
wget http://ssgac.org/documents/README_BANSAL.txt -P Educational-Attainment-Plus-Schizophrenia_Bansal_2018

# Gene discovery and polygenic prediction from a 1.1-million-person GWAS of educational attainment.
# https://www.ncbi.nlm.nih.gov/pmc/articles/PMC6393768/
# PMID: 30038396 PMCID: PMC6393768 DOI: 10.1038/s41588-018-0147-3
mkdir Educational-Attainment_Lee_2018 
wget https://www.dropbox.com/s/ho58e9jmytmpaf8/GWAS_EA_excl23andMe.txt?dl=0 -P Educational-Attainment_Lee_2018
wget https://www.dropbox.com/s/ibjoh0g5e3sdd8t/GWAS_CP_all.txt?dl=0 -P Educational-Attainment_Lee_2018
wget http://ssgac.org/documents/README_EA3.txt -P Educational-Attainment_Lee_2018

# Genome-wide association analyses of risk tolerance and risky behaviors in over one million individuals identify hundreds of loci and shared genetic influences.
# https://www.ncbi.nlm.nih.gov/pubmed/30643258
mkdir Risky-Behavior_Karlson-Linner_2019
wget https://www.dropbox.com/s/il1d7vabk5283dm/RISK_GWAS_MA_UKB%2Breplication.txt?dl=0 -P Risky-Behavior_Karlson-Linner_2019
wget https://www.dropbox.com/s/dxfr1uq20wbdj1d/AUTOMOBILE_SPEEDING_PROPENSITY_GWAS.txt?dl=0 -P Risky-Behavior_Karlson-Linner_2019
wget https://www.dropbox.com/s/7hjxdhlxlwa482n/DRINKS_PER_WEEK_GWAS.txt?dl=0 -P Risky-Behavior_Karlson-Linner_2019
wget https://www.dropbox.com/s/o7wgwhnhjgt3eyn/EVER_SMOKER_GWAS_MA_UKB%2BTAG.txt?dl=0 -P Risky-Behavior_Karlson-Linner_2019
wget https://www.dropbox.com/s/erl8tn4sy81kseu/NUMBER_SEXUAL_PARTNERS_GWAS.txt?dl=0 -P Risky-Behavior_Karlson-Linner_2019
wget https://www.dropbox.com/s/9qw6vlt2l2hmewe/RISK_PC1_GWAS.txt?dl=0 -P Risky-Behavior_Karlson-Linner_2019
wget http://ssgac.org/documents/RISK_GWAS_MA_UKB+23andMe.txt -P Risky-Behavior_Karlson-Linner_2019
wget http://ssgac.org/documents/RISK_GWAS_MA_UKB+23andMe+replication.txt -P Risky-Behavior_Karlson-Linner_2019
wget http://ssgac.org/documents/ADVENTUROUSNESS_GWAS.txt -P Risky-Behavior_Karlson-Linner_2019
wget http://ssgac.org/documents/RISK_MTAG.txt -P Risky-Behavior_Karlson-Linner_2019
wget http://ssgac.org/documents/README_RISK.txt -P Risky-Behavior_Karlson-Linner_2019

# http://sleepdisordergenetics.org/informational/data
# Genetic studies of accelerometer-based sleep measures yield new insights into human sleep behaviour.
# https://www.ncbi.nlm.nih.gov/pmc/articles/pmid/30952852/ 
mkdir Sleep-Characteristics_Jones_2019
wget https://personal.broadinstitute.org/mvon/accel_GWAS_all_BOLT.output_HRC.only_plus.metrics_maf0.001_hwep1em12_info0.3.txt.zip -P Sleep-Characteristics_Jones_2019
wget https://s3.amazonaws.com/broad-portal-resources/sleep/Accelerometer_GWAS_README.txt -P Sleep-Characteristics_Jones_2019

# Genome-wide association study identifies genetic loci for self-reported habitual sleep duration supported by accelerometer-derived estimates.
# https://www.ncbi.nlm.nih.gov/pmc/articles/PMC6405943/
# PMID: 30846698 PMCID: PMC6405943 DOI: 10.1038/s41467-019-08917-4
mkdir Sleep-Duration_Dashti_2019
wget https://personal.broadinstitute.org/mvon/sleepdurationsumstats.txt.zip -P Sleep-Duration_Dashti_2019
wget https://personal.broadinstitute.org/mvon/longsumstats.txt.zip  -P Sleep-Duration_Dashti_2019
wget https://personal.broadinstitute.org/mvon/shortsumstats.txt.zip -P Sleep-Duration_Dashti_2019
wget https://s3.amazonaws.com/broad-portal-resources/sleep/Saxena_fullUKBB_Sleepduration_summary_stats_README -P Sleep-Duration_Dashti_2019
wget https://s3.amazonaws.com/broad-portal-resources/sleep/Saxena_fullUKBB_Longsleep_summary_stats_README -P Sleep-Duration_Dashti_2019
wget https://s3.amazonaws.com/broad-portal-resources/sleep/Saxena_fullUKBB_Shortsleep_summary_stats_README -P Sleep-Duration_Dashti_2019

# Genome-wide association analyses of chronotype in 697,828 individuals provides insights into circadian rhythms
# https://www.ncbi.nlm.nih.gov/pmc/articles/PMC6351539/
# PMID: 30696823 PMCID: PMC6351539 DOI: 10.1038/s41467-018-08259-7
mkdir Sleep-Chronotype_Jones_2019
wget https://personal.broadinstitute.org/mvon/chronotype_raw_BOLT.output_HRC.only_plus.metrics_maf0.001_hwep1em12_info0.3.txt.gz -P Sleep-Chronotype_Jones_2019
wget https://personal.broadinstitute.org/mvon/morning_person_BOLT.output_HRC.only_plus.metrics_maf0.001_hwep1em12_info0.3_logORs.txt.gz -P Sleep-Chronotype_Jones_2019
wget https://s3.amazonaws.com/broad-portal-resources/sleep/chronotype_raw_README.txt -P Sleep-Chronotype_Jones_2019
wget https://s3.amazonaws.com/broad-portal-resources/sleep/morning_person_README.txt -P Sleep-Chronotype_Jones_2019

# Associations of Variants In the Hexokinase 1 and Interleukin 18 Receptor Regions with Oxyhemoglobin Saturation During Sleep.
# https://www.ncbi.nlm.nih.gov/pmc/articles/PMC6467367/
# PMID: 30990817 PMCID: PMC6467367 DOI: 10.1371/journal.pgen.1007739
mkdir Sleep-Oxyhemoglobin-Saturation_Cade_2019
wget https://personal.broadinstitute.org/mvon/cade_et_al_2018_average_spo2_multiethnic_discovery_replication.txt.zip -P Sleep-Oxyhemoglobin-Saturation_Cade_2019
wget https://personal.broadinstitute.org/mvon/cade_et_al_2018_minimum_spo2_multiethnic_discovery_replication.txt.zip -P Sleep-Oxyhemoglobin-Saturation_Cade_2019
wget https://personal.broadinstitute.org/mvon/cade_et_al_2018_percent_sleep_under_90_percent_spo2_multiethnic_discovery_replication.txt.zip -P Sleep-Oxyhemoglobin-Saturation_Cade_2019
wget https://s3.amazonaws.com/broad-portal-resources/sleep/README_Cade_et_al.txt -P Sleep-Oxyhemoglobin-Saturation_Cade_2019

# Biological and clinical insights from genetics of insomnia symptoms.
# https://www.ncbi.nlm.nih.gov/pmc/articles/PMC6415688/
# PMID: 30804566 PMCID: PMC6415688 DOI: 10.1038/s41588-019-0361-7
mkdir Insomnia_Lane_2019
wget https://personal.broadinstitute.org/mvon/Saxena_fullUKBB_Insomnia_summary_stats.zip -P Insomnia_Lane_2019
wget https://s3.amazonaws.com/broad-portal-resources/sleep/Saxena_fullUKBB_Insomnia_summary_stats_README -P Insomnia_Lane_2019

# Genome-wide association study provides new insights into the genetic architecture and pathogenesis of heart failure
# https://www.biorxiv.org/content/10.1101/682013v1
mkdir Heart-Failure_Shah_2019
wget https://personal.broadinstitute.org/mvon/HERMES_Jan2019_HeartFailure_summary_data.txt.zip -P Heart-Failure_Shah_2019
wget https://broad-portal-resources.s3.amazonaws.com/CVDKP/HERMES_Jan2019_HeartFailure_summary_data.README.txt -P Heart-Failure_Shah_2019


# Genome-Wide Association Study of Diabetic Kidney Disease Highlights Biology Involved in Glomerular Basement Membrane Collagen.
# https://www.ncbi.nlm.nih.gov/pubmed/31537649
mkdir Diabetic-Kidney-Disease_Salem_2019 
wget https://personal.broadinstitute.org/mvon/JDRF_DNCRI_micro_min_meta_June2019_rsID.txt.zip -P Diabetic-Kidney-Disease_Salem_2019
wget https://s3.amazonaws.com/broad-portal-resources/README_JDRF_DNCRI_June2019_rsID.txt -P Diabetic-Kidney-Disease_Salem_2019
wget https://personal.broadinstitute.org/mvon/JDRF_DNCRI_micro_max_meta_June2019_rsID.txt.zip -P Diabetic-Kidney-Disease_Salem_2019
wget https://personal.broadinstitute.org/mvon/JDRF_DNCRI_macro_min_meta_June2019_rsID.txt.zip -P Diabetic-Kidney-Disease_Salem_2019
wget https://personal.broadinstitute.org/mvon/JDRF_DNCRI_macro_max_meta_June2019_rsID.txt.zip -P Diabetic-Kidney-Disease_Salem_2019
wget https://personal.broadinstitute.org/mvon/JDRF_DNCRI_esrd_min_meta_June2019_rsID.txt.zip -P Diabetic-Kidney-Disease_Salem_2019
wget https://personal.broadinstitute.org/mvon/JDRF_DNCRI_esrd_max_meta_June2019_rsID.txt.zip -P Diabetic-Kidney-Disease_Salem_2019
wget https://personal.broadinstitute.org/mvon/JDRF_DNCRI_esrdvall_min_meta_June2019_rsID.txt.zip -P Diabetic-Kidney-Disease_Salem_2019
wget https://personal.broadinstitute.org/mvon/JDRF_DNCRI_esrdvall_max_meta_June2019_rsID.txt.zip -P Diabetic-Kidney-Disease_Salem_2019
wget https://personal.broadinstitute.org/mvon/JDRF_DNCRI_esrdvmacro_min_meta_June2019_rsID.txt.zip -P Diabetic-Kidney-Disease_Salem_2019
wget https://personal.broadinstitute.org/mvon/JDRF_DNCRI_esrdvmacro_max_meta_June2019_rsID.txt.zip -P Diabetic-Kidney-Disease_Salem_2019
wget https://personal.broadinstitute.org/mvon/JDRF_DNCRI_ckd_min_meta_June2019_rsID.txt.zip -P Diabetic-Kidney-Disease_Salem_2019
wget https://personal.broadinstitute.org/mvon/JDRF_DNCRI_ckd_max_meta_June2019_rsID.txt.zip -P Diabetic-Kidney-Disease_Salem_2019
wget https://personal.broadinstitute.org/mvon/JDRF_DNCRI_ckdextreme_min_meta_June2019_rsID.txt.zip -P Diabetic-Kidney-Disease_Salem_2019
wget https://personal.broadinstitute.org/mvon/JDRF_DNCRI_ckddn_max_meta_June2019_rsID.txt.zip -P Diabetic-Kidney-Disease_Salem_2019
wget https://personal.broadinstitute.org/mvon/JDRF_DNCRI_DN_min_meta_June2019_rsID.txt.zip -P Diabetic-Kidney-Disease_Salem_2019
wget https://personal.broadinstitute.org/mvon/JDRF_DNCRI_DN_max_meta_June2019_rsID.txt.zip -P Diabetic-Kidney-Disease_Salem_2019
wget https://personal.broadinstitute.org/mvon/JDRF_DNCRI_allvcntrl_min_meta_June2019_rsID.txt.zip -P Diabetic-Kidney-Disease_Salem_2019
wget https://personal.broadinstitute.org/mvon/JDRF_DNCRI_allvcntrl_max_meta_June2019_rsID.txt.zip -P Diabetic-Kidney-Disease_Salem_2019
wget https://s3.amazonaws.com/broad-portal-resources/JDRF_DNCRI_phenotype_definitions.pdf -P Diabetic-Kidney-Disease_Salem_2019

# Trans-ethnic kidney function association study reveals putative causal genes and effects on kidney-specific disease aetiologies.
# https://www.ncbi.nlm.nih.gov/pmc/articles/PMC6318312/
# PMID: 30604766 PMCID: PMC6318312 DOI: 10.1038/s41467-018-07867-7
mkdir Chronic-Kidney-Disease_Morris_2019
wget https://pcwww.liv.ac.uk/~woodwajo/biostats/COGENT_Kidney_eGFR_trans_ethnic.txt.gz -P Chronic-Kidney-Disease_Morris_2019
wget https://pcwww.liv.ac.uk/~woodwajo/biostats/COGENT_Kidney_eGFR_README.docx -P Chronic-Kidney-Disease_Morris_2019

# A catalog of genetic loci associated with kidney function from analyses of a million individuals
# https://www.ncbi.nlm.nih.gov/pmc/articles/PMC6698888/
# PMID: 31152163 PMCID: PMC6698888 DOI: 10.1038/s41588-019-0407-x
mkdir Estimated-Glomerular-Filtration-Rate_Wuttke_2019
wget http://ckdgen.imbi.uni-freiburg.de/files/Wuttke2019/20171016_MW_eGFR_overall_ALL_nstud61.dbgap.txt.gz -P Estimated-Glomerular-Filtration-Rate_Wuttke_2019
wget http://ckdgen.imbi.uni-freiburg.de/files/Wuttke2019/20171017_MW_eGFR_overall_EA_nstud42.dbgap.txt.gz -P Estimated-Glomerular-Filtration-Rate_Wuttke_2019
wget http://ckdgen.imbi.uni-freiburg.de/files/Wuttke2019/BUN_overall_ALL_YL_20171017_METAL1_nstud_33.dbgap.txt.gz -P Estimated-Glomerular-Filtration-Rate_Wuttke_2019
wget http://ckdgen.imbi.uni-freiburg.de/files/Wuttke2019/BUN_overall_EA_YL_20171108_METAL1_nstud24.dbgap.txt.gz -P Estimated-Glomerular-Filtration-Rate_Wuttke_2019
wget http://ckdgen.imbi.uni-freiburg.de/files/Wuttke2019/CKD_overall_ALL_JW_20180223_nstud30.dbgap.txt.gz -P Estimated-Glomerular-Filtration-Rate_Wuttke_2019
wget http://ckdgen.imbi.uni-freiburg.de/files/Wuttke2019/CKD_overall_EA_JW_20180223_nstud23.dbgap.txt.gz -P Estimated-Glomerular-Filtration-Rate_Wuttke_2019

# Genome-wide association meta-analyses and fine-mapping elucidate pathways influencing albuminuria
# https://www.ncbi.nlm.nih.gov/pmc/articles/PMC6739370/
# PMID: 31511532 PMCID: PMC6739370 DOI: 10.1038/s41467-019-11576-0
mkdir Albuminuria_Teumer_2019
wget http://ckdgen.imbi.uni-freiburg.de/files/Teumer2019/formatted_20170711-UACR_overall-ALL-nstud_27-sumMac_400.tbl.rsid.gz -P Albuminuria_Teumer_2019
wget http://ckdgen.imbi.uni-freiburg.de/files/Teumer2019/formatted_20170711-UACR_overall-ALL-nstud_27-sumMac_400.tbl.rsid.gz -P Albuminuria_Teumer_2019
wget http://ckdgen.imbi.uni-freiburg.de/files/Teumer2019/formatted_20180517-UACR_overall-EA-nstud_18-SumMac_400.tbl.rsid.gz -P Albuminuria_Teumer_2019
wget http://ckdgen.imbi.uni-freiburg.de/files/Teumer2019/formatted_20180202-UACR_overall-AA-nstud_1-SumMac_400.rsid.tbl.gz -P Albuminuria_Teumer_2019
wget http://ckdgen.imbi.uni-freiburg.de/files/Teumer2019/formatted_20180205-MA_overall-ALL-nstud_18-SumMac_400.tbl.rsid.gz -P Albuminuria_Teumer_2019

# Target genes, variants, tissues and transcriptional pathways influencing human serum urate levels
# https://www.ncbi.nlm.nih.gov/pubmed/31578528
mkdir Serum-Urate_Tin_2019
wget http://ckdgen.imbi.uni-freiburg.de/files/Tin2019/gout_chr1_22_LQ_IQ06_mac10_all_201_rsid.txt.gz -P Serum-Urate_Tin_2019
wget http://ckdgen.imbi.uni-freiburg.de/files/Tin2019/urate_chr1_22_LQ_IQ06_mac10_all_741_rsid.txt.gz -P Serum-Urate_Tin_2019
wget http://ckdgen.imbi.uni-freiburg.de/files/Tin2019/urate_chr1_22_LQ_IQ06_mac10_EA_60_rsid.txt.gz -P Serum-Urate_Tin_2019
wget http://ckdgen.imbi.uni-freiburg.de/files/Tin2019/code_zero_pvals_mpfr.txt -P Serum-Urate_Tin_2019

# Genetic variation in PLEKHG1 is associated with white matter hyperintensities (n = 11,226)
# https://www.ncbi.nlm.nih.gov/pmc/articles/PMC6396967/
# PMID: 30659137 PMCID: PMC6396967 DOI: 10.1212/WNL.0000000000006952
mkdir White-Matter-Hyperintensity_Traylor_2018
wget https://personal.broadinstitute.org/mvon/Traylor.et.al.2018.WMH.txt.zip -P  White-Matter-Hyperintensity_Traylor_2018
wget https://s3.amazonaws.com/broad-portal-resources/stroke/README_Traylor_2019.pdf -P  White-Matter-Hyperintensity_Traylor_2018

# https://zenodo.org/communities/gwasarchive/search?page=1&size=20
# https://gwasarchive.org/

# Genome-wide association summary statistics for back pain
# https://zenodo.org/record/1319332#.Xgj-dEdKhnI
mkdir Back-Pain_Freidin_2018
wget https://zenodo.org/record/1319332/files/20170907_discovery_HRC_maf_0002_no_dupl.txt?download=1 -P Back-Pain_Freidin_2018
wget https://zenodo.org/record/1319332/files/20170921_crude_pain_450K_cleaned.txt?download=1 -P Back-Pain_Freidin_2018

# Genome-wide association summary statistics for human blood plasma glycome
# 
mkdir Blood-Plasma-Glycome_Sharapov_2018
wget https://zenodo.org/record/1298406/files/PGP1.tsv.gz?download=1 -P Blood-Plasma-Glycome_Sharapov_2018
wget https://zenodo.org/record/1298406/files/PGP2.tsv.gz?download=1 -P Blood-Plasma-Glycome_Sharapov_2018
wget https://zenodo.org/record/1298406/files/PGP3.tsv.gz?download=1 -P Blood-Plasma-Glycome_Sharapov_2018
wget https://zenodo.org/record/1298406/files/PGP4.tsv.gz?download=1 -P Blood-Plasma-Glycome_Sharapov_2018
wget https://zenodo.org/record/1298406/files/PGP5.tsv.gz?download=1 -P Blood-Plasma-Glycome_Sharapov_2018
wget https://zenodo.org/record/1298406/files/PGP6.tsv.gz?download=1 -P Blood-Plasma-Glycome_Sharapov_2018
wget https://zenodo.org/record/1298406/files/PGP7.tsv.gz?download=1 -P Blood-Plasma-Glycome_Sharapov_2018
wget https://zenodo.org/record/1298406/files/PGP8.tsv.gz?download=1 -P Blood-Plasma-Glycome_Sharapov_2018
wget https://zenodo.org/record/1298406/files/PGP9.tsv.gz?download=1 -P Blood-Plasma-Glycome_Sharapov_2018
wget https://zenodo.org/record/1298406/files/PGP10.tsv.gz?download=1 -P Blood-Plasma-Glycome_Sharapov_2018
wget https://zenodo.org/record/1298406/files/PGP11.tsv.gz?download=1 -P Blood-Plasma-Glycome_Sharapov_2018
wget https://zenodo.org/record/1298406/files/PGP12.tsv.gz?download=1 -P Blood-Plasma-Glycome_Sharapov_2018
wget https://zenodo.org/record/1298406/files/PGP13.tsv.gz?download=1 -P Blood-Plasma-Glycome_Sharapov_2018
wget https://zenodo.org/record/1298406/files/PGP14.tsv.gz?download=1 -P Blood-Plasma-Glycome_Sharapov_2018
wget https://zenodo.org/record/1298406/files/PGP15.tsv.gz?download=1 -P Blood-Plasma-Glycome_Sharapov_2018
wget https://zenodo.org/record/1298406/files/PGP16.tsv.gz?download=1 -P Blood-Plasma-Glycome_Sharapov_2018
wget https://zenodo.org/record/1298406/files/PGP17.tsv.gz?download=1 -P Blood-Plasma-Glycome_Sharapov_2018
wget https://zenodo.org/record/1298406/files/PGP18.tsv.gz?download=1 -P Blood-Plasma-Glycome_Sharapov_2018
wget https://zenodo.org/record/1298406/files/PGP19.tsv.gz?download=1 -P Blood-Plasma-Glycome_Sharapov_2018
wget https://zenodo.org/record/1298406/files/PGP20.tsv.gz?download=1 -P Blood-Plasma-Glycome_Sharapov_2018
wget https://zenodo.org/record/1298406/files/PGP21.tsv.gz?download=1 -P Blood-Plasma-Glycome_Sharapov_2018
wget https://zenodo.org/record/1298406/files/PGP22.tsv.gz?download=1 -P Blood-Plasma-Glycome_Sharapov_2018
wget https://zenodo.org/record/1298406/files/PGP23.tsv.gz?download=1 -P Blood-Plasma-Glycome_Sharapov_2018
wget https://zenodo.org/record/1298406/files/PGP24.tsv.gz?download=1 -P Blood-Plasma-Glycome_Sharapov_2018
wget https://zenodo.org/record/1298406/files/PGP25.tsv.gz?download=1 -P Blood-Plasma-Glycome_Sharapov_2018
wget https://zenodo.org/record/1298406/files/PGP26.tsv.gz?download=1 -P Blood-Plasma-Glycome_Sharapov_2018
wget https://zenodo.org/record/1298406/files/PGP27.tsv.gz?download=1 -P Blood-Plasma-Glycome_Sharapov_2018
wget https://zenodo.org/record/1298406/files/PGP28.tsv.gz?download=1 -P Blood-Plasma-Glycome_Sharapov_2018
wget https://zenodo.org/record/1298406/files/PGP29.tsv.gz?download=1 -P Blood-Plasma-Glycome_Sharapov_2018
wget https://zenodo.org/record/1298406/files/PGP30.tsv.gz?download=1 -P Blood-Plasma-Glycome_Sharapov_2018
wget https://zenodo.org/record/1298406/files/PGP31.tsv.gz?download=1 -P Blood-Plasma-Glycome_Sharapov_2018
wget https://zenodo.org/record/1298406/files/PGP32.tsv.gz?download=1 -P Blood-Plasma-Glycome_Sharapov_2018
wget https://zenodo.org/record/1298406/files/PGP33.tsv.gz?download=1 -P Blood-Plasma-Glycome_Sharapov_2018
wget https://zenodo.org/record/1298406/files/PGP34.tsv.gz?download=1 -P Blood-Plasma-Glycome_Sharapov_2018
wget https://zenodo.org/record/1298406/files/PGP35.tsv.gz?download=1 -P Blood-Plasma-Glycome_Sharapov_2018
wget https://zenodo.org/record/1298406/files/PGP36.tsv.gz?download=1 -P Blood-Plasma-Glycome_Sharapov_2018
wget https://zenodo.org/record/1298406/files/PGP37.tsv.gz?download=1 -P Blood-Plasma-Glycome_Sharapov_2018
wget https://zenodo.org/record/1298406/files/PGP38.tsv.gz?download=1 -P Blood-Plasma-Glycome_Sharapov_2018
wget https://zenodo.org/record/1298406/files/PGP39.tsv.gz?download=1 -P Blood-Plasma-Glycome_Sharapov_2018
wget https://zenodo.org/record/1298406/files/PGP40.tsv.gz?download=1 -P Blood-Plasma-Glycome_Sharapov_2018
wget https://zenodo.org/record/1298406/files/PGP41.tsv.gz?download=1 -P Blood-Plasma-Glycome_Sharapov_2018
wget https://zenodo.org/record/1298406/files/PGP42.tsv.gz?download=1 -P Blood-Plasma-Glycome_Sharapov_2018
wget https://zenodo.org/record/1298406/files/PGP43.tsv.gz?download=1 -P Blood-Plasma-Glycome_Sharapov_2018
wget https://zenodo.org/record/1298406/files/PGP44.tsv.gz?download=1 -P Blood-Plasma-Glycome_Sharapov_2018
wget https://zenodo.org/record/1298406/files/PGP45.tsv.gz?download=1 -P Blood-Plasma-Glycome_Sharapov_2018
wget https://zenodo.org/record/1298406/files/PGP46.tsv.gz?download=1 -P Blood-Plasma-Glycome_Sharapov_2018
wget https://zenodo.org/record/1298406/files/PGP47.tsv.gz?download=1 -P Blood-Plasma-Glycome_Sharapov_2018
wget https://zenodo.org/record/1298406/files/PGP48.tsv.gz?download=1 -P Blood-Plasma-Glycome_Sharapov_2018
wget https://zenodo.org/record/1298406/files/PGP49.tsv.gz?download=1 -P Blood-Plasma-Glycome_Sharapov_2018
wget https://zenodo.org/record/1298406/files/PGP50.tsv.gz?download=1 -P Blood-Plasma-Glycome_Sharapov_2018
wget https://zenodo.org/record/1298406/files/PGP51.tsv.gz?download=1 -P Blood-Plasma-Glycome_Sharapov_2018
wget https://zenodo.org/record/1298406/files/PGP52.tsv.gz?download=1 -P Blood-Plasma-Glycome_Sharapov_2018
wget https://zenodo.org/record/1298406/files/PGP53.tsv.gz?download=1 -P Blood-Plasma-Glycome_Sharapov_2018
wget https://zenodo.org/record/1298406/files/PGP54.tsv.gz?download=1 -P Blood-Plasma-Glycome_Sharapov_2018
wget https://zenodo.org/record/1298406/files/PGP55.tsv.gz?download=1 -P Blood-Plasma-Glycome_Sharapov_2018
wget https://zenodo.org/record/1298406/files/PGP56.tsv.gz?download=1 -P Blood-Plasma-Glycome_Sharapov_2018
wget https://zenodo.org/record/1298406/files/PGP57.tsv.gz?download=1 -P Blood-Plasma-Glycome_Sharapov_2018
wget https://zenodo.org/record/1298406/files/PGP58.tsv.gz?download=1 -P Blood-Plasma-Glycome_Sharapov_2018
wget https://zenodo.org/record/1298406/files/PGP59.tsv.gz?download=1 -P Blood-Plasma-Glycome_Sharapov_2018
wget https://zenodo.org/record/1298406/files/PGP60.tsv.gz?download=1 -P Blood-Plasma-Glycome_Sharapov_2018
wget https://zenodo.org/record/1298406/files/PGP61.tsv.gz?download=1 -P Blood-Plasma-Glycome_Sharapov_2018
wget https://zenodo.org/record/1298406/files/PGP62.tsv.gz?download=1 -P Blood-Plasma-Glycome_Sharapov_2018
wget https://zenodo.org/record/1298406/files/PGP63.tsv.gz?download=1 -P Blood-Plasma-Glycome_Sharapov_2018
wget https://zenodo.org/record/1298406/files/PGP64.tsv.gz?download=1 -P Blood-Plasma-Glycome_Sharapov_2018
wget https://zenodo.org/record/1298406/files/PGP65.tsv.gz?download=1 -P Blood-Plasma-Glycome_Sharapov_2018
wget https://zenodo.org/record/1298406/files/PGP66.tsv.gz?download=1 -P Blood-Plasma-Glycome_Sharapov_2018
wget https://zenodo.org/record/1298406/files/PGP67.tsv.gz?download=1 -P Blood-Plasma-Glycome_Sharapov_2018
wget https://zenodo.org/record/1298406/files/PGP68.tsv.gz?download=1 -P Blood-Plasma-Glycome_Sharapov_2018
wget https://zenodo.org/record/1298406/files/PGP69.tsv.gz?download=1 -P Blood-Plasma-Glycome_Sharapov_2018
wget https://zenodo.org/record/1298406/files/PGP70.tsv.gz?download=1 -P Blood-Plasma-Glycome_Sharapov_2018
wget https://zenodo.org/record/1298406/files/PGP71.tsv.gz?download=1 -P Blood-Plasma-Glycome_Sharapov_2018
wget https://zenodo.org/record/1298406/files/PGP72.tsv.gz?download=1 -P Blood-Plasma-Glycome_Sharapov_2018
wget https://zenodo.org/record/1298406/files/PGP73.tsv.gz?download=1 -P Blood-Plasma-Glycome_Sharapov_2018
wget https://zenodo.org/record/1298406/files/PGP74.tsv.gz?download=1 -P Blood-Plasma-Glycome_Sharapov_2018
wget https://zenodo.org/record/1298406/files/PGP75.tsv.gz?download=1 -P Blood-Plasma-Glycome_Sharapov_2018
wget https://zenodo.org/record/1298406/files/PGP76.tsv.gz?download=1 -P Blood-Plasma-Glycome_Sharapov_2018
wget https://zenodo.org/record/1298406/files/PGP77.tsv.gz?download=1 -P Blood-Plasma-Glycome_Sharapov_2018
wget https://zenodo.org/record/1298406/files/PGP78.tsv.gz?download=1 -P Blood-Plasma-Glycome_Sharapov_2018
wget https://zenodo.org/record/1298406/files/PGP79.tsv.gz?download=1 -P Blood-Plasma-Glycome_Sharapov_2018
wget https://zenodo.org/record/1298406/files/PGP80.tsv.gz?download=1 -P Blood-Plasma-Glycome_Sharapov_2018
wget https://zenodo.org/record/1298406/files/PGP81.tsv.gz?download=1 -P Blood-Plasma-Glycome_Sharapov_2018
wget https://zenodo.org/record/1298406/files/PGP82.tsv.gz?download=1 -P Blood-Plasma-Glycome_Sharapov_2018
wget https://zenodo.org/record/1298406/files/PGP83.tsv.gz?download=1 -P Blood-Plasma-Glycome_Sharapov_2018
wget https://zenodo.org/record/1298406/files/PGP84.tsv.gz?download=1 -P Blood-Plasma-Glycome_Sharapov_2018
wget https://zenodo.org/record/1298406/files/PGP85.tsv.gz?download=1 -P Blood-Plasma-Glycome_Sharapov_2018
wget https://zenodo.org/record/1298406/files/PGP86.tsv.gz?download=1 -P Blood-Plasma-Glycome_Sharapov_2018
wget https://zenodo.org/record/1298406/files/PGP87.tsv.gz?download=1 -P Blood-Plasma-Glycome_Sharapov_2018
wget https://zenodo.org/record/1298406/files/PGP88.tsv.gz?download=1 -P Blood-Plasma-Glycome_Sharapov_2018
wget https://zenodo.org/record/1298406/files/PGP89.tsv.gz?download=1 -P Blood-Plasma-Glycome_Sharapov_2018
wget https://zenodo.org/record/1298406/files/PGP90.tsv.gz?download=1 -P Blood-Plasma-Glycome_Sharapov_2018
wget https://zenodo.org/record/1298406/files/PGP91.tsv.gz?download=1 -P Blood-Plasma-Glycome_Sharapov_2018
wget https://zenodo.org/record/1298406/files/PGP92.tsv.gz?download=1 -P Blood-Plasma-Glycome_Sharapov_2018
wget https://zenodo.org/record/1298406/files/PGP93.tsv.gz?download=1 -P Blood-Plasma-Glycome_Sharapov_2018
wget https://zenodo.org/record/1298406/files/PGP94.tsv.gz?download=1 -P Blood-Plasma-Glycome_Sharapov_2018
wget https://zenodo.org/record/1298406/files/PGP95.tsv.gz?download=1 -P Blood-Plasma-Glycome_Sharapov_2018
wget https://zenodo.org/record/1298406/files/PGP96.tsv.gz?download=1 -P Blood-Plasma-Glycome_Sharapov_2018
wget https://zenodo.org/record/1298406/files/PGP97.tsv.gz?download=1 -P Blood-Plasma-Glycome_Sharapov_2018
wget https://zenodo.org/record/1298406/files/PGP98.tsv.gz?download=1 -P Blood-Plasma-Glycome_Sharapov_2018
wget https://zenodo.org/record/1298406/files/PGP99.tsv.gz?download=1 -P Blood-Plasma-Glycome_Sharapov_2018
wget https://zenodo.org/record/1298406/files/PGP100.tsv.gz?download=1 -P Blood-Plasma-Glycome_Sharapov_2018
wget https://zenodo.org/record/1298406/files/PGP101.tsv.gz?download=1 -P Blood-Plasma-Glycome_Sharapov_2018
wget https://zenodo.org/record/1298406/files/PGP102.tsv.gz?download=1 -P Blood-Plasma-Glycome_Sharapov_2018
wget https://zenodo.org/record/1298406/files/PGP103.tsv.gz?download=1 -P Blood-Plasma-Glycome_Sharapov_2018
wget https://zenodo.org/record/1298406/files/PGP104.tsv.gz?download=1 -P Blood-Plasma-Glycome_Sharapov_2018
wget https://zenodo.org/record/1298406/files/PGP105.tsv.gz?download=1 -P Blood-Plasma-Glycome_Sharapov_2018
wget https://zenodo.org/record/1298406/files/PGP106.tsv.gz?download=1 -P Blood-Plasma-Glycome_Sharapov_2018
wget https://zenodo.org/record/1298406/files/PGP107.tsv.gz?download=1 -P Blood-Plasma-Glycome_Sharapov_2018
wget https://zenodo.org/record/1298406/files/PGP108.tsv.gz?download=1 -P Blood-Plasma-Glycome_Sharapov_2018
wget https://zenodo.org/record/1298406/files/PGP109.tsv.gz?download=1 -P Blood-Plasma-Glycome_Sharapov_2018
wget https://zenodo.org/record/1298406/files/PGP110.tsv.gz?download=1 -P Blood-Plasma-Glycome_Sharapov_2018
wget https://zenodo.org/record/1298406/files/PGP111.tsv.gz?download=1 -P Blood-Plasma-Glycome_Sharapov_2018
wget https://zenodo.org/record/1298406/files/PGP112.tsv.gz?download=1 -P Blood-Plasma-Glycome_Sharapov_2018
wget https://zenodo.org/record/1298406/files/PGP113.tsv.gz?download=1 -P Blood-Plasma-Glycome_Sharapov_2018

# Genome-wide association summary statistics for human healthspan
# https://zenodo.org/record/1302861#.Xgj-eUdKhnI
mkdir Healthspan_Zenin_2018
wget -P https://zenodo.org/record/1302861/files/healthspan_summary.csv.gz?download=1 Healthspan_Zenin_2018 

# Maternal and fetal genetic effects on birth weight and their relevance to cardio-metabolic risk factors.
# https://www.ncbi.nlm.nih.gov/pmc/articles/PMC6522365/
# PMID: 31043758 PMCID: PMC6522365 DOI: 10.1038/s41588-019-0403-1
mkdir Birth-Weight_Warrington_2019
wget http://mccarthy.well.ox.ac.uk/publications/2019/EggBirthWeight_NatureGenetics/Fetal_BW_European_meta.NG2019.txt.gz -P Birth-Weight_Warrington_2019
wget http://mccarthy.well.ox.ac.uk/publications/2019/EggBirthWeight_NatureGenetics/Fetal_BW_transethnic_meta.NG2019.txt.gz -P Birth-Weight_Warrington_2019
wget http://mccarthy.well.ox.ac.uk/publications/2019/EggBirthWeight_NatureGenetics/Maternal_BW_European_meta.NG2019.txt.gz -P Birth-Weight_Warrington_2019
wget http://mccarthy.well.ox.ac.uk/publications/2019/EggBirthWeight_NatureGenetics/Maternal_BW_transethnic_meta.NG2019.txt.gz -P Birth-Weight_Warrington_2019
wget http://mccarthy.well.ox.ac.uk/publications/2019/EggBirthWeight_NatureGenetics/Fetal_Effect_European_meta_NG2019.txt.gz -P Birth-Weight_Warrington_2019
wget http://mccarthy.well.ox.ac.uk/publications/2019/EggBirthWeight_NatureGenetics/Maternal_Effect_European_meta_NG2019.txt.gz -P Birth-Weight_Warrington_2019

# https://www.ncbi.nlm.nih.gov/pmc/articles/pmid/31477735/
# Variants in the fetal genome near pro-inflammatory cytokine genes on 2q13 associate with gestational duration.
# PMID: 31477735 PMCID: PMC6718389 DOI: 10.1038/s41467-019-11881-8
mkdir Gestational-Duration_Liu_2019
wget http://mccarthy.well.ox.ac.uk/publications/2019/EggGestationalDuration_NatureCommunications/Fetal_gest_duration_NComms2019.txt.gz -P Gestational-Duration_Liu_2019
wget http://mccarthy.well.ox.ac.uk/publications/2019/EggGestationalDuration_NatureCommunications/Fetal_early_preterm_birth_NComms2019.txt.gz -P Gestational-Duration_Liu_2019
wget http://mccarthy.well.ox.ac.uk/publications/2019/EggGestationalDuration_NatureCommunications/Fetal_preterm_birth_NComms2019.txt.gz -P Gestational-Duration_Liu_2019
wget http://mccarthy.well.ox.ac.uk/publications/2019/EggGestationalDuration_NatureCommunications/Fetal_postterm_birth_NComms2019.txt.gz  -P Gestational-Duration_Liu_2019

# https://www.ncbi.nlm.nih.gov/pubmed/31504550
# A Trans-ancestral Meta-Analysis of Genome-Wide Association Studies Reveals Loci Associated with Childhood Obesity.
mkdir Childhood-Obesity_Bradfield_2019
wget http://mccarthy.well.ox.ac.uk/publications/2019/EggChildhoodObesity_HumanMolecularGenetics/Childhood_Obesity-File_Header_Explanation.txt -P Childhood-Obesity_Bradfield_2019
wget http://mccarthy.well.ox.ac.uk/publications/2019/EggChildhoodObesity_HumanMolecularGenetics/CHILDHOOD_OBESITY.TRANS_ANCESTRAL.RESULTS.txt.gz -P Childhood-Obesity_Bradfield_2019

# https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3510312/
# Identification of fifteen new psoriasis susceptibility loci highlights the role of innate immunity
# PMID: 23143594 PMCID: PMC3510312 DOI: 10.1038/ng.2467
mkdir Psoriasis_Tsoi_2012
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/TsoiLC_23143594_GCST005527/harmonised/23143594-GCST005527-EFO_0000676-Build37.f.tsv.gz -P Psoriasis_Tsoi_2012
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/TsoiLC_23143594_GCST005527/harmonised/23143594-GCST005527-EFO_0000676.h.tsv.gz -P Psoriasis_Tsoi_2012

# https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3366044/
# Genome-wide association analyses identify 13 new susceptibility loci for generalized vitiligo
# PMID: 22561518 PMCID: PMC3366044 DOI: 10.1038/ng.2272
mkdir Vitilogo_Jin_2012
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/JinY_22561518_GCST001509 -P Vitilogo_Jin_2012

# https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3242065/
# Dense genotyping identifies and localizes multiple common and rare variant association signals in celiac disease
# PMID: 22057235 PMCID: PMC3242065 DOI: 10.1038/ng.998
mkdir Celiac-Disease_Trynka_2011
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/TrynkaG_22057235_GCST005523/harmonised/22057235-GCST005523-EFO_0001060-Build37.f.tsv.gz -P Celiac-Disease_Trynka_2011
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/TrynkaG_22057235_GCST005523/harmonised/22057235-GCST005523-EFO_0001060.h.tsv.gz -P Celiac-Disease_Trynka_2011

# https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3183083/
# A Genome-Wide Meta-Analysis of Six Type 1 Diabetes Cohorts Identifies Multiple Associated Loci
# PMID: 21980299 PMCID: PMC3183083 DOI: 10.1371/journal.pgen.1002293
mkdir Type-1-Diabetes_Bradfield_2011
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/BradfieldJP_21980299_GCST001255/harmonised/21980299-GCST001255-EFO_0001359-Build37.f.tsv.gz -P Type-1-Diabetes_Bradfield_2011
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/BradfieldJP_21980299_GCST001255/harmonised/21980299-GCST001255-EFO_0001359.h.tsv.gz -P Type-1-Diabetes_Bradfield_2011

# https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3832895/
# Analysis of immune-related loci identifies 48 new susceptibility variants for multiple sclerosis
# PMID: 24076602 PMCID: PMC3832895 DOI: 10.1038/ng.2770
mkdir Multiple-Sclerosis_Beechman_2013
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/BeechamAH_24076602_GCST005531/harmonised/24076602-GCST005531-EFO_0003885-Build37.f.tsv.gz -P Multiple-Sclerosis_Beechman_2013
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/BeechamAH_24076602_GCST005531/harmonised/24076602-GCST005531-EFO_0003885.h.tsv.gz -P Multiple-Sclerosis_Beechman_2013

# https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4668589/
# Genetic association analyses implicate aberrant regulation of innate and adaptive immunity genes in the pathogenesis of systemic lupus erythematosus.
# PMID: 26502338 PMCID: PMC4668589 DOI: 10.1038/ng.3434
mkdir Lupus_Bentham_2015
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/BenthamJ_26502338_GCST003156/harmonised/26502338-GCST003156-EFO_0002690-build37.f.tsv.gz -P Lupus_Bentham_2015
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/BenthamJ_26502338_GCST003156/harmonised/26502338-GCST003156-EFO_0002690.h.tsv.gz -P Lupus_Bentham_2015

# https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5798660/
# Genetic variation in CFH predicts phenytoin-induced maculopapular exanthema in European-descent patients
# PMID: 29288229 PMCID: PMC5798660 DOI: 10.1212/WNL.0000000000004853
mkdir Maculopapular-Exanthema_McCormack_2018
wget http://www.epigad.org/gwas_ilae2018_rash/ALL_MPE_EU_HK_meta.results.gz -P Maculopapular-Exanthema_McCormack_2018
wget http://www.epigad.org/gwas_ilae2018_rash/CBZ_MPE_EU_HK_meta.results.gz -P Maculopapular-Exanthema_McCormack_2018
wget http://www.epigad.org/gwas_ilae2018_rash/EU_ALL_MPE.results.gz -P Maculopapular-Exanthema_McCormack_2018
wget http://www.epigad.org/gwas_ilae2018_rash/EU_CBZ_MPE.results.gz -P Maculopapular-Exanthema_McCormack_2018
wget http://www.epigad.org/gwas_ilae2018_rash/EU_LTG_MPE.results.gz -P Maculopapular-Exanthema_McCormack_2018
wget http://www.epigad.org/gwas_ilae2018_rash/EU_PHT_MPE.results.gz -P Maculopapular-Exanthema_McCormack_2018
wget http://www.epigad.org/gwas_ilae2018_rash/HK_ALL_MPE.results.gz -P Maculopapular-Exanthema_McCormack_2018
wget http://www.epigad.org/gwas_ilae2018_rash/HK_CBZ_MPE.results.gz -P Maculopapular-Exanthema_McCormack_2018
wget http://www.epigad.org/gwas_ilae2018_rash/HK_LTG_MPE.results.gz -P Maculopapular-Exanthema_McCormack_2018
wget http://www.epigad.org/gwas_ilae2018_rash/HK_PHT_MPE.results.gz -P Maculopapular-Exanthema_McCormack_2018
wget http://www.epigad.org/gwas_ilae2018_rash/LTG_MPE_EU_HK_meta.results.gz -P Maculopapular-Exanthema_McCormack_2018
wget http://www.epigad.org/gwas_ilae2018_rash/LTG_MPE_EU_HK_meta.results.gz -P Maculopapular-Exanthema_McCormack_2018

# https://www.ncbi.nlm.nih.gov/pmc/articles/PMC6288131/
# Genome-wide mega-analysis identifies 16 loci and highlights diverse biological mechanisms in the common epilepsies
# PMID: 30531953 PMCID: PMC6288131 DOI: 10.1038/s41467-018-07524-z
mkdir Epilepsy_ILAE_2018
wget http://www.epigad.org/gwas_ilae2018_16loci/all_epilepsy_METAL.gz -P Epilepsy_ILAE_2018
wget http://www.epigad.org/gwas_ilae2018_16loci/CAE_BOLT-LMM_final.gz -P Epilepsy_ILAE_2018
wget http://www.epigad.org/gwas_ilae2018_16loci/focal_epilepsy_METAL.gz -P Epilepsy_ILAE_2018
wget http://www.epigad.org/gwas_ilae2018_16loci/focal_HS_BOLT-LMM_final.gz -P Epilepsy_ILAE_2018
wget http://www.epigad.org/gwas_ilae2018_16loci/focal_lesion_negative_BOLT-LMM_final.gz -P Epilepsy_ILAE_2018
wget http://www.epigad.org/gwas_ilae2018_16loci/focal_other_lesion_BOLT-LMM_final.gz -P Epilepsy_ILAE_2018
wget http://www.epigad.org/gwas_ilae2018_16loci/generalised_epilepsy_METAL.gz -P Epilepsy_ILAE_2018
wget http://www.epigad.org/gwas_ilae2018_16loci/GTCS_BOLT-LMM_final.gz -P Epilepsy_ILAE_2018
wget http://www.epigad.org/gwas_ilae2018_16loci/JAE_BOLT-LMM_final.gz -P Epilepsy_ILAE_2018
wget http://www.epigad.org/gwas_ilae2018_16loci/JME_BOLT-LMM_final.gz -P Epilepsy_ILAE_2018
wget http://www.epigad.org/gwas_ilae2018_16loci/README.txt -P Epilepsy_ILAE_2018

# https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5153392/
# A genome-wide analysis in cluster headache points to neprilysin and PACAP receptor gene variants
# PMID: 27957625 PMCID: PMC5153392 DOI: 10.1186/s10194-016-0705-y
mkdir Cluster-Headache_Bacchelli_2016
wget https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5153392/bin/10194_2016_705_MOESM1_ESM.zip -P Cluster-Headache_Bacchelli_2016

# http://ncbi.nlm.nih.gov/pmc/articles/PMC6078592/
# Genome-wide association study identifies WNT7B as a novel locus for central corneal thickness in Latinos
# PMID: 28171582 PMCID: PMC6078592 DOI: 10.1093/hmg/ddw319
mkdir Central-Corneal-Thickness_Gao_2016
wget https://www.ncbi.nlm.nih.gov/pmc/articles/PMC6078592/bin/ddw319_supp.zip -P Central-Corneal-Thickness_Gao_2016

# https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5493516/
# Variants in WFS1 and other Mendelian deafness genes are associated with cisplatin-associated ototoxicity
# PMID: 28039263 PMCID: PMC5493516 DOI: 10.1158/1078-0432.CCR-16-2809
mkdir Cisplatin-Associated-Ototoxicity_Wheeler_2017
wget https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5493516/bin/NIHMS839776-supplement-6.xlsx -P Cisplatin-Associated-Ototoxicity_Wheeler_2017

# https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5086090/
# Common variants at PVT1, ATG13–AMBRA1, AHI1 and CLEC16A are associated with selective IgA deficiency
# PMID: 27723758 PMCID: PMC5086090 DOI: 10.1038/ng.3675
mkdir Selective-IgA-Deficiency_Bronson_2016
wget http://research-pub.gene.com/bronson_et_al_2016/BronsonEtAl_NatGenet_2016.zip -P Selective-IgA-Deficiency_Bronson_2016

# https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5033492/
# A Genome-Wide Association Study of Attention Function in a Population-Based Sample of Children
# PMID: 27656889 PMCID: PMC5033492 DOI: 10.1371/journal.pone.0163048
mkdir Attention-Function_Alemany_2016
wget https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5033492/bin/pone.0163048.s002.gz -P Attention-Function_Alemany_2016
wget https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5033492/bin/pone.0163048.s003.gz -P Attention-Function_Alemany_2016
wget https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5033492/bin/pone.0163048.s004.gz -P Attention-Function_Alemany_2016
wget https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5033492/bin/pone.0163048.s005.gz -P Attention-Function_Alemany_2016
wget https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5033492/bin/pone.0163048.s006.gz -P Attention-Function_Alemany_2016


#############################################
# Requiring manual download
#############################################

# Type 2 Diabetes
# Bonàs-Guarch S, et al.
# http://cg.bsc.es/70kfort2d/

# Type 2 Diabetes
# Mahajan et al.
# http://diagram-consortium.org/downloads.html

# All PGC phenotypes
# https://www.med.unc.edu/pgc/results-and-downloads

# All iPSYCH phenotypes
# https://ipsych.au.dk/downloads/

# https://www.nature.com/articles/s41467-017-02662-2
# https://drive.google.com/drive/folders/0BzYDtCo_doHJRFRKR0ltZHZWZjQ
# Genome-wide association study in 79,366 European-ancestry individuals informs the genetic architecture of 25-hydroxyvitamin D levels

# Parkinsons disease and other cognitive phenotypes 
# https://pdgenetics.shinyapps.io/pdprogmetagwasbrowser/

# Well-being
# https://www.nature.com/articles/s41588-018-0320-8
# https://surfdrive.surf.nl/files/index.php/s/Ow1qCDpFT421ZOO
# mkdir -p Well-Being_Baselmans_2019

# The Genetic Architecture of Gene Expression in Peripheral Blood
# http://cnsgenomics.com/data.html
# http://cnsgenomics.com/shiny/CAGE/

# Common genetic variants influence human subcortical brain structures.
# http://enigma.ini.usc.edu/research/download-enigma-gwas-results/
# https://www.ncbi.nlm.nih.gov/pubmed/?term=25607358

# What about other public eQTLs...

# And all new UKBB stats...

#############################################
# Looked promising, but couldn't obtain...
#############################################

# NOTE: In general, if it looks like it could be obtainable but takes more
# than 5 minutes of searching for the right file, then I'll probably skip it.

# https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5787851/
# Rapid evaluation of phenotype, SNP and summary results through the dbGaP Charge Summary site
#
# Nah forget it, even through dbGAP we can only get top hits, not full association statistics

# Blood pressure
# Same, can't seem to find full stats
# https://www.nature.com/articles/s41588-018-0303-9#data-availability

# Ulcers 
# Requires appplication and permission
# https://data.bris.ac.uk/data/dataset/459eyiulzf9y25yh6nsf550y4
# http://www.bristol.ac.uk/alspac/researchers/our-data/

#############################################
# Possible future downloads -- currently 
# too big to tackle
#############################################

# Newer version of UKBB GWAS
# Possible higher quality than UKBB traits? Can download all...
# They supply a download.sh script on here somewhere so you can download in bulk
# Maybe better, because they're corrected for family relations
#
# http://geneatlas.roslin.ed.ac.uk/traits-table/
# http://geneatlas.roslin.ed.ac.uk/frequently-asked-questions/
# https://www.nature.com/articles/s41588-018-0248-z

# More UKBB traits
# Includes sumstats from Watanabe et al. mega-analysis
# https://ctg.cncr.nl/documents/p1651/ukb2_sumstats.tar.gz
# https://ctg.cncr.nl/software/summary_statistics

# Check out the use of an API to download latest results from
# http://www.kp4cd.org/apis/t2d

##################################################################################################

# GWAS requiring manual download

# https://www.ncbi.nlm.nih.gov/pubmed/29403010
# Genetic analysis of quantitative traits in the Japanese population links cell types to complex human diseases
# Kanai et al. 2018
mkdir QTLs-Japanese_Kanai_2018
# http://jenger.riken.jp/result

# https://www.nature.com/articles/ng.3874
# Fifteen new risk loci for coronary artery disease highlight arterial-wall-specific mechanisms
# Howson et al. 2017
# PMID: 28530674 PMCID: PMC5555387 DOI: 10.1038/ng.3874
mkdir Coronary-Artery-Disease_Howson_2017
# http://www.phenoscanner.medschl.cam.ac.uk/docs/Howson-JMM_CHD_Mixed_2017.txt

# https://www.biorxiv.org/content/early/2017/06/03/145581
# Discovery Of The First Genome-Wide Significant Risk Loci For ADHD
# Demontis et al. 2017
mkdir Attention-Deficit-Hyperactivity-Disorder_Demontis_2017
# https://www.med.unc.edu/pgc/results-and-downloads/
# We used the June 2017 release

# https://www.ncbi.nlm.nih.gov/pubmed/24162737
# Meta-analysis of 74,046 individuals identifies 11 new susceptibility loci for Alzheimer's disease.
# Lambert et al. 2013
mkdir Alzheimers_Lambert_2013
# Must be downloaded manually from http://web.pasteur-lille.fr/en/recherche/u744/igap/igap_download.php

# https://www.ncbi.nlm.nih.gov/pubmed/26754954
# Meta-analysis of genome-wide association studies of anxiety disorders.
# Otowa et al. 2016
mkdir Anxiety_Otowa_2016
# Must be downloaded from PGC site at http://www.med.unc.edu/pgc/results-and-downloads

# https://www.ncbi.nlm.nih.gov/pubmed/21926972
# Large-scale genome-wide association analysis of bipolar disorder identifies a new susceptibility locus near ODZ4.
# PGC 2012
mkdir Bipolar-Disorder_Psychiatric-Genomics-Consortium_2012
# Must download directly from PGC website at http://www.med.unc.edu/pgc/results-and-downloads

# https://molecularautism.biomedcentral.com/articles/10.1186/s13229-017-0137-9
# Meta-analysis of GWAS of over 16,000 individuals with autism spectrum disorder highlights a novel locus at 10q24.32 and a significant overlap with schizophrenia
# PGC 2017
# PMID: 28540026 PMCID: PMC5441062 DOI: 10.1186/s13229-017-0137-9
mkdir Autism_Psychiatric-Genomics-Consortium_2017
# Must download directly from PGC website at http://www.med.unc.edu/pgc/results-and-downloads

# https://www.ncbi.nlm.nih.gov/pubmed/28761083
# Revealing the complex genetic architecture of obsessive compulsive disorder using meta-analysis.
# Arnold et al. 2017
mkdir Obsessive-Compulsive-Disorder_Arnold_2017
# Must be downloaded directly from PGC website

# https://www.ncbi.nlm.nih.gov/pubmed/28439101
# Largest GWAS of PTSD (N =20 070) yields genetic overlap with schizophrenia and sex differences in heritability
# Duncan et al. 2017
mkdir Post-Traumatic-Stress-Disorder_Duncan_2017
# Must be downloaded directly from PGC website

# https://www.ncbi.nlm.nih.gov/pubmed/26176920
# Sparse whole-genome sequencing identifies two loci for major depressive disorder.
# Cai et al. 2015
# CONVERGE
mkdir Major-Depressive-Disorder_Cai_2015
# Must be downloaded directly from PGC website

# https://www.ncbi.nlm.nih.gov/pubmed/?term=27629369
# Genome-Wide Association Study of Loneliness Demonstrates a Role for Common Variation.
# Gao et al. 2017
mkdir Loneliness_Gao_2017
wget http://www.med.unc.edu/pgc/files/resultfiles/loneliness.readme.pdf --directory Loneliness_Gao_2017
# Must be downloaded directly from PGC website

# https://www.ncbi.nlm.nih.gov/pubmed/20418890
# Genome-wide meta-analyses identify multiple loci associated with smoking behavior.
# Furberg et al. 2010
mkdir Smoking_Furberg_2010
wget http://www.med.unc.edu/pgc/files/resultfiles/readme.tag.txt --directory Smoking_Furberg_2010 
# Must be downloaded directly from PGC website

# https://www.ncbi.nlm.nih.gov/pubmed/25187353
# Clozapine-induced agranulocytosis is associated with rare HLA-DQB1 and HLA-B alleles.
# Goldstein et al. 2014
mkdir Clozapine-Induced-Agranulocytosis_Goldstein_2014
# Need to download this one directly from PGC website

# https://www.ncbi.nlm.nih.gov/pubmed/23453885
# Identification of risk loci with shared effects on five major psychiatric disorders: a genome-wide analysis.
# PGC 2013
mkdir Cross-Disorder-Brain_PGC_2013
# Need to download this one directly from PGC website

# https://www.ncbi.nlm.nih.gov/pubmed/22472876
# A mega-analysis of genome-wide association studies for major depressive disorder.
# PGC 2013
mkdir Major-Depressive-Disorder_PGC_2013
# Need to download this one directly from PGC website

# https://www.biorxiv.org/content/early/2017/07/24/167577
# Genome-wide association analyses identify 44 risk variants and refine the genetic architecture of major depression
# PGC 2018
mkdir Major-Depressive-Disorder_PGC_2018
# Need to download this one directly from PGC website
wget http://www.med.unc.edu/pgc/files/resultfiles/pgc-mdd-2018-readme-v.3 --directory Major-Depressive-Disorder_PGC_2018

# https://www.ncbi.nlm.nih.gov/pubmed/28494655
# Significant Locus and Metabolic Genetic Correlations Revealed in Genome-Wide Association Study of Anorexia Nervosa.
# Duncan et al. 2017
mkdir Anorexia-Nervosa_Duncan_2017
# Must be downloaded from PGC website

# http://diabetes.diabetesjournals.org/content/early/2017/05/25/db16-1253 
# An Expanded Genome-Wide Association Study of Type 2 Diabetes in Europeans
# Scott et al. 2017
# PMID: 28566273 PMCID: PMC5652602 DOI: 10.2337/db16-1253
mkdir Type-2-Diabetes_Scott_2017
# Must be downloaded manually from the DIAGRAM consortium website: http://www.diagram-consortium.org/downloads.html

# https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5034897/
# The genetic architecture of type 2 diabetes
# Fuchsberger et al. 2016
# PMID: 27398621 PMCID: PMC5034897 DOI: 10.1038/nature18642
mkdir Type-2-Diabetes_Fuchsberger_2016
# Must be downloaded manually from the DIAGRAM consortium website: http://www.diagram-consortium.org/downloads.html

# https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4666734/
# Genetic fine-mapping and genomic annotation defines causal mechanisms at type 2 diabetes susceptibility loci
# Gaulton et al. 2015
# PMID: 26551672 PMCID: PMC4666734 DOI: 10.1038/ng.3437
mkdir Type-2-Diabetes_Gaulton_2015
# Must be downloaded manually from the DIAGRAM consortium website: http://www.diagram-consortium.org/downloads.html

# https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3969612/
# Genome-wide trans-ancestry meta-analysis provides insight into the genetic architecture of type 2 diabetes susceptibility
# Mahajan et al. 2014
# PMID: 24509480 PMCID: PMC3969612 DOI: 10.1038/ng.2897
mkdir Type-2-Diabetes_Mahajan_2014
# Must be downloaded manually from the DIAGRAM consortium website: http://www.diagram-consortium.org/downloads.html

# https://www.ncbi.nlm.nih.gov/pubmed/22885922
# Large-scale association analysis provides insights into the genetic architecture and pathophysiology of type 2 diabetes.
# Morris et al. 2012
mkdir Type-2-Diabetes_Morris_2012
# Must be downloaded manually from the DIAGRAM consortium website: http://www.diagram-consortium.org/downloads.html

# https://www.ncbi.nlm.nih.gov/pubmed/27005778
# Genome-wide study for circulating metabolites identifies 62 loci and reveals novel systemic effects of LPA
# Kettunen et al. 2016
# MAGNETIC
mkdir Circulating-Metabolites_Kettunen_2016
# Must be downloaded manually from http://computationalmedicine.fi/data

# https://www.ncbi.nlm.nih.gov/pubmed?cmd=Retrieve&dopt=AbstractPlus&list_uids=27989323
# Genome-wide Association Study Identifies 27 Loci Influencing Concentrations of Circulating Cytokines and Growth Factors.
# Ahola-Olli et al. 2017
# PMID: 27989323 PMCID: PMC5223028 DOI: 10.1016/j.ajhg.2016.11.007
mkdir Cytokines-And-Growth-Factors_Ahola-Olli_2017
# Must be downloaded manually from http://computationalmedicine.fi/data#Cytokine_GWAS

# https://www.nature.com/articles/ng.3985
# Shared genetic origin of asthma, hay fever and eczema elucidates allergic disease biology
# Ferreira et al. 2017
# PMID: 29083406 PMCID: PMC5989923 DOI: 10.1038/ng.3985
mkdir Allergies_Ferreira_2017
# wget https://genepi.qimr.edu.au/staff/manuelf/gwas_results/SHARE-without23andMe.LDSCORE-GC.SE-META.v0.gz --directory Allergies_Ferreira_2017
# NOTE: Required a manual download and transfer

# https://www.ncbi.nlm.nih.gov/pubmed/29058716
# Identification of ten variants associated with risk of estrogen-receptor-negative breast cancer.
# Milne et al. 2017
mkdir BreastCancer_Milne_2017
# NOTE: Required a manual download and transfer

# https://www.nature.com/articles/ng.3875
# Genetic association study of exfoliation syndrome identifies a protective rare variant at LOXL1 and five new susceptibility loci
# Aung et al. 2017
# PMID: 28553957 PMCID: PMC6685441 DOI: 10.1038/ng.3875
mkdir ExfoliationSyndrome_Aung_2017
# https://media.nature.com/original/nature-assets/ng/journal/v49/n7/extref/ng.3875-S6.zip

# https://www.ncbi.nlm.nih.gov/pubmed/27663945
# A Genome-Wide Association Meta-Analysis of Attention-Deficit/Hyperactivity Disorder Symptoms in Population-Based Paediatric Cohorts
# Middeldorp et al. 2016
mkdir Attention-Deficit-Hyperactivity-Disorder_Middeldorp_2016
# Requires manual download from http://www.tweelingenregister.org/EAGLE/

# https://www.ncbi.nlm.nih.gov/pubmed/19853236
# Sequence variants in three loci influence monocyte counts and erythrocyte volume.
# Ferreira et al. 2009
#mkdir Blood-Cells_Ferreira_2009
#wget https://genepi.qimr.edu.au/staff/manuelf/gwas_results/RBC.assoc.gz --directory Blood-Cells_Ferreira_2009
#wget https://genepi.qimr.edu.au/staff/manuelf/gwas_results/HB.assoc.gz --directory Blood-Cells_Ferreira_2009
#wget https://genepi.qimr.edu.au/staff/manuelf/gwas_results/HT.assoc.gz --directory Blood-Cells_Ferreira_2009
#wget https://genepi.qimr.edu.au/staff/manuelf/gwas_results/MCV.assoc.gz --directory Blood-Cells_Ferreira_2009
#wget https://genepi.qimr.edu.au/staff/manuelf/gwas_results/MCH.assoc.gz --directory Blood-Cells_Ferreira_2009
#wget https://genepi.qimr.edu.au/staff/manuelf/gwas_results/MCHC.assoc.gz --directory Blood-Cells_Ferreira_2009
#wget https://genepi.qimr.edu.au/staff/manuelf/gwas_results/PLT.assoc.gz --directory Blood-Cells_Ferreira_2009
#wget https://genepi.qimr.edu.au/staff/manuelf/gwas_results/WBC.assoc.gz --directory Blood-Cells_Ferreira_2009
#wget https://genepi.qimr.edu.au/staff/manuelf/gwas_results/NEUT.assoc.gz --directory Blood-Cells_Ferreira_2009
#wget https://genepi.qimr.edu.au/staff/manuelf/gwas_results/LYMPH.assoc.gz --directory Blood-Cells_Ferreira_2009
#wget https://genepi.qimr.edu.au/staff/manuelf/gwas_results/MONO.assoc.gz --directory Blood-Cells_Ferreira_2009
#wget https://genepi.qimr.edu.au/staff/manuelf/gwas_results/EOS.assoc.gz --directory Blood-Cells_Ferreira_2009
#wget https://genepi.qimr.edu.au/staff/manuelf/gwas_results/BASO.assoc.gz --directory Blood-Cells_Ferreira_2009
# Requires manual download from web browser

# https://www.ncbi.nlm.nih.gov/pubmed/20045101
# Quantitative trait loci for CD4:CD8 lymphocyte ratio are associated with risk of type 1 diabetes and HIV-1 immune control.
# Ferreira et al. 2010
mkdir Lymphocyte-Subsets_Ferreira_2010
# Requires manual download from the links below
#wget https://genepi.qimr.edu.au/staff/manuelf/gwas_results/CD3.assoc.gz --directory Lymphocyte-Subsets_Ferreira_2010
#wget https://genepi.qimr.edu.au/staff/manuelf/gwas_results/CD4.assoc.gz --directory Lymphocyte-Subsets_Ferreira_2010
#wget https://genepi.qimr.edu.au/staff/manuelf/gwas_results/CD8.assoc.gz --directory Lymphocyte-Subsets_Ferreira_2010
#wget https://genepi.qimr.edu.au/staff/manuelf/gwas_results/CD4_8.assoc.gz --directory Lymphocyte-Subsets_Ferreira_2010
#wget https://genepi.qimr.edu.au/staff/manuelf/gwas_results/CD19.assoc.gz --directory Lymphocyte-Subsets_Ferreira_2010
#wget https://genepi.qimr.edu.au/staff/manuelf/gwas_results/CD56.assoc.gz --directory Lymphocyte-Subsets_Ferreira_2010

######################################################
# Unzip all zipped GWAS files
######################################################
python utils/unzip.py


# TODO:
# Other stuff that needs to be added

wget https://zenodo.org/record/1251813/files/bmi.giant-ukbb.meta-analysis.combined.23May2018.txt.gz -P /users/mgloud/projects/insulin_resistance/eriks_bonus/data/Pulit-et-al-2018
wget https://zenodo.org/record/1251813/files/bmi.giant-ukbb.meta-analysis.females.23May2018.txt.gz -P /users/mgloud/projects/insulin_resistance/eriks_bonus/data/Pulit-et-al-2018
wget https://zenodo.org/record/1251813/files/bmi.giant-ukbb.meta-analysis.males.23May2018.txt.gz -P /users/mgloud/projects/insulin_resistance/eriks_bonus/data/Pulit-et-al-2018
wget https://zenodo.org/record/1251813/files/whr.giant-ukbb.meta-analysis.combined.23May2018.txt.gz -P /users/mgloud/projects/insulin_resistance/eriks_bonus/data/Pulit-et-al-2018
wget https://zenodo.org/record/1251813/files/whr.giant-ukbb.meta-analysis.females.23May2018.txt.gz -P /users/mgloud/projects/insulin_resistance/eriks_bonus/data/Pulit-et-al-2018
wget https://zenodo.org/record/1251813/files/whr.giant-ukbb.meta-analysis.males.23May2018.txt.gz -P /users/mgloud/projects/insulin_resistance/eriks_bonus/data/Pulit-et-al-2018
wget https://zenodo.org/record/1251813/files/whradjbmi.giant-ukbb.meta-analysis.combined.23May2018.txt.gz -P /users/mgloud/projects/insulin_resistance/eriks_bonus/data/Pulit-et-al-2018
wget https://zenodo.org/record/1251813/files/whradjbmi.giant-ukbb.meta-analysis.females.23May2018.txt.gz -P /users/mgloud/projects/insulin_resistance/eriks_bonus/data/Pulit-et-al-2018
wget https://zenodo.org/record/1251813/files/whradjbmi.giant-ukbb.meta-analysis.males.23May2018.txt.gz -P /users/mgloud/projects/insulin_resistance/eriks_bonus/data/Pulit-et-al-2018
