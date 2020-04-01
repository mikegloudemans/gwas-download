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

# https://www.ncbi.nlm.nih.gov/pubmed/24390342
# Genetics of rheumatoid arthritis contributes to biology and drug discovery.
# Okada et al. 2014
# NOTE: Additional sumstats files can be obtained manually from http://jenger.riken.jp/result, which is what I did
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
wget https://personal.broadinstitute.org/mvon/26674333.Traylor.2016.txt.gz --directory Cerebral-White-Matter-Hyperintensity_Traylor_2016

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
mkdir BMI-and-Height_Yengo_2018
wget https://portals.broadinstitute.org/collaboration/giant/images/0/0f/Meta-analysis_Locke_et_al%2BUKBiobank_2018.txt.gz --directory BMI-and-Height_Yengo_2018
wget https://portals.broadinstitute.org/collaboration/giant/images/6/63/Meta-analysis_Wood_et_al%2BUKBiobank_2018.txt.gz --directory BMI-and-Height_Yengo_2018

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
wget http://faculty.washington.edu/rozenl/files/CHARGE_160.txt --directory Fatty-Acids-De-Novo-Lipogenesis_Wu_2013
wget http://faculty.washington.edu/rozenl/files/CHARGE_180.txt --directory Fatty-Acids-De-Novo-Lipogenesis_Wu_2013
wget http://faculty.washington.edu/rozenl/files/CHARGE_161n7.txt --directory Fatty-Acids-De-Novo-Lipogenesis_Wu_2013
wget http://faculty.washington.edu/rozenl/files/CHARGE_181n9.txt --directory Fatty-Acids-De-Novo-Lipogenesis_Wu_2013

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
mkdir BMI-and-Height_Hemani_2013
wget http://cnsgenomics.com/data/hemani_et_al_2013_ajhg/hemani_pihat.txt --directory BMI-and-Height_Hemani_2013

# Estimation of genetic variance from imputed sequence variants reveals negligible missing heritability for human height and body mass index
# https://www.ncbi.nlm.nih.gov/pubmed/26323059
mkdir BMI-and-Height_Yang_2015
wget http://cnsgenomics.com/data/yang_et_al_2015_ng/LDSCORE_release_July2015.tar.gz --directory BMI-and-Height_Yang_2015
wget http://cnsgenomics.com/data/yang_et_al_2015_ng/GWAS_summary_release_July2015.tar.gz  --directory BMI-and-Height_Yang_2015

# Population genetic differentiation of height and body mass index across Europe
# https://www.nature.com/articles/ng.3401
# PMID: 26366552 PMCID: PMC4984852 DOI: 10.1038/ng.3401
mkdir BMI-and-Height_Robinson_2015
wget http://cnsgenomics.com/data/robinson_et_al_2015_ng/Within-family_GWAS_of_height_based_on_sib_regression_using_data_from_Robinson_et_al_2015_LYMRR.txt.gz --directory BMI-and-Height_Robinson_2015
wget http://cnsgenomics.com/data/robinson_et_al_2015_ng/Within-family_GWAS_of_bmi_based_on_sib_regression_using_data_from_Robinson_et_al_2015_LYMRR.txt.gz --directory BMI-and-Height_Robinson_2015

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

# https://blog.nus.edu.sg/agen/summary-statistics/adiponectin/
# https://www.ncbi.nlm.nih.gov/pubmed/24105470
# A meta-analysis of genome-wide association studies for adiponectin levels in East Asians identifies a novel locus near WDR11-FGFR2.
# PMID: 24105470 PMCID: PMC3900106 DOI: 10.1093/hmg/ddt488 
mkdir Adiponectin_Wu_2014
wget https://sphfiles.nus.edu.sg/PHG/other/human/AGEN/adiponectin_2014/AGEN_adiponectin_hapmap.txt.gz -P Adiponectin_Wu_2014

# https://www.ncbi.nlm.nih.gov/pmc/articles/PMC6451732/
# Genetic Architectures of Childhood- and Adult-Onset Asthma Are Partly Distinct
# PMID: 30929738 PMCID: PMC6451732 DOI: 10.1016/j.ajhg.2019.02.022 
mkdir Asthma_Ferreira_2019
wget https://genepi.qimr.edu.au/staff/manuelF/gwas_results/CHILD_ONSET_ASTHMA.20180501.allchr.assoc.GC.gz -P Asthma_Ferreira_2019
wget https://genepi.qimr.edu.au/staff/manuelF/gwas_results/ADULT1_ADULT2_ONSET_ASTHMA.20180716.allchr.assoc.GC.gz -P Asthma_Ferreira_2019

# https://www.ncbi.nlm.nih.gov/pubmed/29483656
# Common schizophrenia alleles are enriched in mutation-intolerant genes and in regions under strong background selection.
# PMID: 29483656 PMCID: PMC5918692 DOI: 10.1038/s41588-018-0059-2 
mkdir Schizophrenia_Pardinas_2018
wget https://walters.psycm.cf.ac.uk/clozuk_pgc2.meta.sumstats.txt.gz -P Schizophrenia_Pardinas_2018
wget https://walters.psycm.cf.ac.uk/clozuk_pgc2.meta.sumstats.info9.snplist.txt.gz -P Schizophrenia_Pardinas_2018

# https://www.ncbi.nlm.nih.gov/pubmed/30647433
# A genome-wide association study in individuals of African ancestry reveals the importance of the Duffy-null genotype in the assessment of clozapine-related neutropenia.
# PMID: 30647433 DOI: 10.1038/s41380-018-0335-7 
mkdir Clozapine-Related-Neutropenia_Legge_2019
wget https://walters.psycm.cf.ac.uk/clozuk2-afr_lowest_anc.sumstats.mlma.txt.gz -P Clozapine-Related-Neutropenia_Legge_2019

# https://www.ncbi.nlm.nih.gov/pubmed/30922102
# Pharmacogenomic Variants and Drug Interactions Identified Through the Genetic Analysis of Clozapine Metabolism.
# PMID: 30922102 DOI: 10.1176/appi.ajp.2019.18050589 
mkdir Clozapine-Metabolism_Pardinas_2019 
wget https://walters.psycm.cf.ac.uk/clozuk2-eur_clozapine_levels.sumstats.mlma.txt.gz -P Clozapine-Metabolism_Pardinas_2019
wget https://walters.psycm.cf.ac.uk/clozuk2-eur_norclozapine_levels.sumstats.mlma.txt.gz -P Clozapine-Metabolism_Pardinas_2019
wget https://walters.psycm.cf.ac.uk/clozuk2-eur_cloz_norcloz_ratio.sumstats.mlma.txt.gz -P Clozapine-Metabolism_Pardinas_2019

# https://www.ncbi.nlm.nih.gov/pubmed/31553412
# Association of Genetic Liability to Psychotic Experiences With Neuropsychotic Disorders and Traits.
# PMID: 31553412 PMCID: PMC6764002 DOI: 10.1001/jamapsychiatry.2019.2508 
mkdir Psychotic-Experiences_Legge_2019
wget https://walters.psycm.cf.ac.uk/ukbiobank-any_psychotic_experience.sumstats.txt.gz -P Psychotic-Experiences_Legge_2019
wget https://walters.psycm.cf.ac.uk/ukbiobank-multiple_psychotic_experience.sumstats.txt.gz -P Psychotic-Experiences_Legge_2019
wget https://walters.psycm.cf.ac.uk/ukbiobank-distressing_psychotic_experience.sumstats.txt.gz -P Psychotic-Experiences_Legge_2019

# https://www.ncbi.nlm.nih.gov/pubmed/31619474
# Shared Genetics of Asthma and Mental Health Disorders: A Large-Scale Genome-Wide Cross-Trait Analysis.
# PMID: 31619474 DOI: 10.1183/13993003.01507-2019 
mkdir Asthma_Zhu_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/ZhuZ_31619474_GCST008918/ukb.adultasthma.upload.final.assoc.gz -P Asthma_Zhu_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/ZhuZ_31619474_GCST008917/ukb.childasthma.upload.final.assoc.gz -P Asthma_Zhu_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/ZhuZ_31619474_GCST008916/ukb.allasthma.upload.final.assoc.gz -P Asthma_Zhu_2019

# https://www.ncbi.nlm.nih.gov/pubmed/30940143
# Genetic overlap of chronic obstructive pulmonary disease and cardiovascular disease-related traits: a large-scale genome-wide cross-trait analysis.
# PMID: 30940143 PMCID: PMC6444755 DOI: 10.1186/s12931-019-1036-8 
mkdir Hypertension_Zhu_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/ZhuZ_30940143_GCST007610/ZhuZ_30940143_ukbb.bolt_460K_selfRepWhite.doctor_highbloodpressure.assoc.gz -P Hypertension_Zhu_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/ZhuZ_30940143_GCST007609/ZhuZ_30940143_ukbb.bolt_460K_selfRepWhite.rhrmean.assoc.gz -P 
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/ZhuZ_30940143_GCST007609/readme.txt -P Hypertension_Zhu_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/ZhuZ_30940143_GCST007610/readme.txt -P Hypertension_Zhu_2019

# https://www.ncbi.nlm.nih.gov/pmc/articles/PMC6119127/
# Efficiently controlling for case-control imbalance and sample relatedness in large-scale genetic association studies.
# PMID: 30104761 PMCID: PMC6119127 DOI: 10.1038/s41588-018-0184-y 
mkdir Cross-Trait_Zhou_2018
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/ZhouW_30104761_GCST008372/PheCode_153_SAIGE_MACge20.txt.vcf.gz -P Cross-Trait_Zhou_2018
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/ZhouW_30104761_GCST008371/PheCode_193_SAIGE_MACge20.txt.vcf.gz -P Cross-Trait_Zhou_2018
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/ZhouW_30104761_GCST008373/PheCode_365_SAIGE_MACge20.txt.vcf.gz -P Cross-Trait_Zhou_2018
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/ZhouW_30104761_GCST008370 -P Cross-Trait_Zhou_2018

# https://www.ncbi.nlm.nih.gov/pubmed/30910378
# Identification of 22 novel loci associated with urinary biomarkers of albumin, sodium, and potassium excretion.
# PMID: 30910378 PMCID: PMC6535090 [Available on 2020-05-01] DOI: 10.1016/j.kint.2018.12.017 
mkdir Urinary-Metabolites_Zanetti_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/ZanettiD_30910378_GCST007778/README_ZanettiEtAl.txt -P Urinary-Metabolites_Zanetti_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/ZanettiD_30910378_GCST007778/UNaUCr_UKB.txt.zip -P Urinary-Metabolites_Zanetti_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/ZanettiD_30910378_GCST007721/README_ZanettiEtAl.txt -P Urinary-Metabolites_Zanetti_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/ZanettiD_30910378_GCST007721/UKUCr_UKB.txt.zip -P Urinary-Metabolites_Zanetti_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/ZanettiD_30910378_GCST007718/README_ZanettiEtAl.txt -P Urinary-Metabolites_Zanetti_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/ZanettiD_30910378_GCST007718/UACR_UKB.txt.zip -P Urinary-Metabolites_Zanetti_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/ZanettiD_30910378_GCST007717/README_ZanettiEtAl.txt -P Urinary-Metabolites_Zanetti_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/ZanettiD_30910378_GCST007717/UNaUK_UKB.txt.zip -P Urinary-Metabolites_Zanetti_2019

# https://www.ncbi.nlm.nih.gov/pubmed/29346644
# Genome-wide Analysis of Disease Progression in Age-related Macular Degeneration.
# PMID: 29346644 PMCID: PMC6059197 DOI: 10.1093/hmg/ddy002 
mkdir Age-Related-Macular-Degeneration_Yan_2018
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/YanQ_29346644_GCST009144/README -P Age-Related-Macular-Degeneration_Yan_2018
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/YanQ_29346644_GCST009144/YanQ_29346644_allele_freq.txt.gz -P Age-Related-Macular-Degeneration_Yan_2018
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/YanQ_29346644_GCST009144/YanQ_29346644_anyAMDprogression_w_base_severity.txt.gz -P Age-Related-Macular-Degeneration_Yan_2018
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/YanQ_29346644_GCST005360/YanQ_29346644_GAprogression_wo_base_severity.txt.gz -P Age-Related-Macular-Degeneration_Yan_2018
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/YanQ_29346644_GCST005359/YanQ_29346644_anyAMDprogression_wo_base_severity.txt.gz -P Age-Related-Macular-Degeneration_Yan_2018
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/YanQ_29346644_GCST005358/YanQ_29346644_CNVprogression_wo_base_severity.txt.zip -P Age-Related-Macular-Degeneration_Yan_2018

# https://www.ncbi.nlm.nih.gov/pubmed/31763980
# Novel genetic loci affecting facial shape variation in humans.
# PMID: 31763980 PMCID: PMC6905649 DOI: 10.7554/eLife.49898 
mkdir Facial-Shape_Xiong_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/XiongZ_31763980_GCST009464/XiongZ_31763980.txt.gz -P Facial-Shape_Xiong_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/XiongZ_31763980_GCST009464/XiongZ_31763980_readme.txt -P Facial-Shape_Xiong_2019

# https://www.ncbi.nlm.nih.gov/pubmed/29700475
# Genome-wide association analyses identify 44 risk variants and refine the genetic architecture of major depression.
# PMID: 29700475 PMCID: PMC5934326 DOI: 10.1038/s41588-018-0090-3 
mkdir Depression_Wray_2018
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/WrayNR_29700475_GCST005839/MDD2018_ex23andMe.gz -P Depression_Wray_2018
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/WrayNR_29700475_GCST005839/PGC_MDD2018_10kSNPs_2  -P Depression_Wray_2018
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/WrayNR_29700475_GCST005839/PGC_MDD_2018_README_third_180316.pdf -P Depression_Wray_2018

# https://www.ncbi.nlm.nih.gov/pubmed/23696881
# Imputation of variants from the 1000 Genomes Project modestly improves known associations and can identify low-frequency variant-phenotype associations undetected by HapMap based imputation.
# PMID: 23696881 PMCID: PMC3655956 DOI: 10.1371/journal.pone.0064343 
mkdir Metabolite-Levels_Wood_2013
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/WoodAR_23696881_GCST009171/Wood_et_al_2013_PMID_23696881_1000G_circulating_molecules.README.txt -P Metabolite-Levels_Wood_2013
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/WoodAR_23696881_GCST009171/Wood_et_al_2013_PMID_23696881_1000G_circulating_molecules.txt.gz -P Metabolite-Levels_Wood_2013
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/WoodAR_23696881_GCST009171/Wood_et_al_2013_PMID_23696881_HapMap_circulating_molecules.README.txt -P Metabolite-Levels_Wood_2013
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/WoodAR_23696881_GCST009171/Wood_et_al_2013_PMID_23696881_HapMap_circulating_molecules.txt.gz -P Metabolite-Levels_Wood_2013

# https://www.ncbi.nlm.nih.gov/pubmed/31453325
# Genotype-by-environment interactions inferred from genetic effects on phenotypic variability in the UK Biobank.
# PMID: 31453325 PMCID: PMC6693916 DOI: 10.1126/sciadv.aaw3538 
mkdir Anthropomorphic-Traits_Wang_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/WangH_31453325_GCST009127/WHR.ma -P Anthropomorphic-Traits_Wang_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/WangH_31453325_GCST009115/BMD.ma -P Anthropomorphic-Traits_Wang_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/WangH_31453325_GCST009114/FFR.ma -P Anthropomorphic-Traits_Wang_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/WangH_31453325_GCST009113/FEV1.ma -P Anthropomorphic-Traits_Wang_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/WangH_31453325_GCST009112/FVC.ma -P Anthropomorphic-Traits_Wang_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/WangH_31453325_GCST009111/HT.ma -P Anthropomorphic-Traits_Wang_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/WangH_31453325_GCST009110/WHRadjBMI.ma -P Anthropomorphic-Traits_Wang_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/WangH_31453325_GCST009109/HC.ma -P Anthropomorphic-Traits_Wang_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/WangH_31453325_GCST009108/WC.ma -P Anthropomorphic-Traits_Wang_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/WangH_31453325_GCST009107/BMI.ma -P Anthropomorphic-Traits_Wang_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/WangH_31453325_GCST009106/BMR.ma -P Anthropomorphic-Traits_Wang_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/WangH_31453325_GCST009105/BFP.ma -P Anthropomorphic-Traits_Wang_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/WangH_31453325_GCST009116/BW.ma -P Anthropomorphic-Traits_Wang_2019

# https://www.ncbi.nlm.nih.gov/pubmed/30595539
# Genetic influence on scar height and pliability after burn injury in individuals of European ancestry: A prospective cohort study.
# PMID: 30595539 DOI: 10.1016/j.burns.2018.10.027 
mkdir Burn-Scarring_Wallace_2018
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/WallaceHJ_30595539_GCST007251/1-s2.0-S0305417918305291-mmc2.xlsx -P Burn-Scarring_Wallace_2018
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/WallaceHJ_30595539_GCST007252/1-s2.0-S0305417918305291-mmc3.xlsx -P Burn-Scarring_Wallace_2018

# https://www.ncbi.nlm.nih.gov/pubmed/30279459
# Brain scans from 21,297 individuals reveal the genetic architecture of hippocampal subfield volumes.
# PMID: 30279459 PMCID: PMC6445783 DOI: 10.1038/s41380-018-0262-7
mkdir Hippocampal-Volumes_van-der-Meer_2018
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/vanderMeerD_30279459_GCST006895/vanderMeerD_30279459_GCST006895 -P Hippocampal-Volumes_van-der-Meer_2018
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/vanderMeerD_30279459_GCST006894/vanderMeerD_30279459_GCST006894 -P Hippocampal-Volumes_van-der-Meer_2018
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/vanderMeerD_30279459_GCST006888/vanderMeerD_30279459_GCST006888 -P Hippocampal-Volumes_van-der-Meer_2018
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/vanderMeerD_30279459_GCST006889/vanderMeerD_30279459_GCST006889 -P Hippocampal-Volumes_van-der-Meer_2018
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/vanderMeerD_30279459_GCST006890/vanderMeerD_30279459_GCST006890 -P Hippocampal-Volumes_van-der-Meer_2018
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/vanderMeerD_30279459_GCST006891/vanderMeerD_30279459_GCST006891 -P Hippocampal-Volumes_van-der-Meer_2018
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/vanderMeerD_30279459_GCST006892/vanderMeerD_30279459_GCST006892 -P Hippocampal-Volumes_van-der-Meer_2018
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/vanderMeerD_30279459_GCST006893/vanderMeerD_30279459_GCST006893 -P Hippocampal-Volumes_van-der-Meer_2018
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/vanderMeerD_30279459_GCST006870/Meta_Hippocampal_tail_IncWhole.zip -P Hippocampal-Volumes_van-der-Meer_2018
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/vanderMeerD_30279459_GCST006871/Meta_Whole_hippocampus.zip -P Hippocampal-Volumes_van-der-Meer_2018
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/vanderMeerD_30279459_GCST006872/Meta_presubiculumFormatted.zip -P Hippocampal-Volumes_van-der-Meer_2018
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/vanderMeerD_30279459_GCST006873/Meta_subiculumFormatted.zip -P Hippocampal-Volumes_van-der-Meer_2018
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/vanderMeerD_30279459_GCST006874/Meta_CA1Formatted.zip -P Hippocampal-Volumes_van-der-Meer_2018
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/vanderMeerD_30279459_GCST006875/Meta_CA3Formatted.zip -P Hippocampal-Volumes_van-der-Meer_2018
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/vanderMeerD_30279459_GCST006876/Meta_CA4Formatted.zip -P Hippocampal-Volumes_van-der-Meer_2018
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/vanderMeerD_30279459_GCST006877/Meta_GC.ML.DGFormatted.zip -P Hippocampal-Volumes_van-der-Meer_2018
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/vanderMeerD_30279459_GCST006878/Meta_molecular_layer_HPFormatted.zip -P Hippocampal-Volumes_van-der-Meer_2018
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/vanderMeerD_30279459_GCST006880/Meta_hippocampal.fissureFormatted.zip -P Hippocampal-Volumes_van-der-Meer_2018
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/vanderMeerD_30279459_GCST006882/Meta_fimbriaFormatted.zip -P Hippocampal-Volumes_van-der-Meer_2018
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/vanderMeerD_30279459_GCST006883/Meta_HATAFormatted.zip -P Hippocampal-Volumes_van-der-Meer_2018
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/vanderMeerD_30279459_GCST006884/vanderMeerD_30279459_GCST006884 -P Hippocampal-Volumes_van-der-Meer_2018
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/vanderMeerD_30279459_GCST006885/vanderMeerD_30279459_GCST006885 -P Hippocampal-Volumes_van-der-Meer_2018
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/vanderMeerD_30279459_GCST006886/vanderMeerD_30279459_GCST006886 -P Hippocampal-Volumes_van-der-Meer_2018
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/vanderMeerD_30279459_GCST006887/vanderMeerD_30279459_GCST006887 -P Hippocampal-Volumes_van-der-Meer_2018

# https://www.ncbi.nlm.nih.gov/pubmed/31396565
# A genome-wide association study identifies genetic loci associated with specific lobar brain volumes.
# PMID: 31396565 PMCID: PMC6677735 DOI: 10.1038/s42003-019-0537-9 
mkdir Lobar-Brain-Volumes_van-der-Lee_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/vanderLeeSJ_31396565_GCST008703/vanderLeeSJ_prePMID_OLV_EAonly.txt.gz -P Lobar-Brain-Volumes_van-der-Lee_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/vanderLeeSJ_31396565_GCST008704/vanderLeeSJ_prePMID_PLV_EAonly.txt.gz -P Lobar-Brain-Volumes_van-der-Lee_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/vanderLeeSJ_31396565_GCST008705/vanderLeeSJ_prePMID_TLV_EAonly.txt.gz -P Lobar-Brain-Volumes_van-der-Lee_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/vanderLeeSJ_31396565_GCST008707/vanderLeeSJ_prePMID_OLV.txt.gz -P Lobar-Brain-Volumes_van-der-Lee_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/vanderLeeSJ_31396565_GCST008710/vanderLeeSJ_prePMID_PLV.txt.gz -P Lobar-Brain-Volumes_van-der-Lee_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/vanderLeeSJ_31396565_GCST008711/vanderLeeSJ_prePMID_TLV.txt.gz -P Lobar-Brain-Volumes_van-der-Lee_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/vanderLeeSJ_31396565_GCST008715/vanderLeeSJ_prePMID_FLV_EAonly.txt.gz -P Lobar-Brain-Volumes_van-der-Lee_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/vanderLeeSJ_31396565_GCST008717/vanderLeeSJ_prePMID_FLV.txt.gz -P Lobar-Brain-Volumes_van-der-Lee_2019

# https://www.ncbi.nlm.nih.gov/pubmed/30995994
# Multivariate genome-wide association study of rapid automatised naming and rapid alternating stimulus in Hispanic American and African-American youth.
# PMID: 30995994 PMCID: PMC6678051 DOI: 10.1136/jmedgenet-2018-105874
mkdir Reading-And-Spelling-Ability_Truong_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/TruongDT_30995994_GCST007859/TruongDT_prePMID_RANRASMultivariateGWAS_SummaryStats.txt -P Reading-And-Spelling-Ability_Truong_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/TruongDT_30995994_GCST007861/TruongDT_prePMID_GRaDHA_LatentNamingSpeedGWAS_SummaryStats.txt -P Reading-And-Spelling-Ability_Truong_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/TruongDT_30995994_GCST007861/TruongDT_prePMID_GRaDHA_LatentNamingSpeedGWAS_SummaryStats.txt -P Reading-And-Spelling-Ability_Truong_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/TruongDT_30995994_GCST007862/TruongDT_prePMID_GRaDAA_LatentNamingSpeedGWAS_SummaryStats.txt -P Reading-And-Spelling-Ability_Truong_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/TruongDT_30995994_GCST007863/TruongDT_prePMID_RanLettNum_SummaryStats.txt -P Reading-And-Spelling-Ability_Truong_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/TruongDT_30995994_GCST007864/TruongDT_prePMID_RanLetters_SummaryStats.txt -P Reading-And-Spelling-Ability_Truong_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/TruongDT_30995994_GCST007865/TruongDT_prePMID_RanObj_SummaryStats.txt -P Reading-And-Spelling-Ability_Truong_2019

# https://www.ncbi.nlm.nih.gov/pubmed/31596875
# Genetic associations with radiological damage in rheumatoid arthritis: Meta-analysis of seven genome-wide association studies of 2,775 cases.
# PMID: 31596875 PMCID: PMC6785117 DOI: 10.1371/journal.pone.0223246 
mkdir Rheumatoid-Arthritis-Joint-Damage_Traylor_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/TraylorM_31596875_GCST008993/RA_XRayDamage_European.txt -P Rheumatoid-Arthritis-Joint-Damage_Traylor_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/TraylorM_31596875_GCST008992/RA_XRayDamage_Transethnic.txt -P Rheumatoid-Arthritis-Joint-Damage_Traylor_2019

# https://www.ncbi.nlm.nih.gov/pubmed/30134952
# Cross-genetic determination of maternal and neonatal immune mediators during pregnancy.
# PMID: 30134952 PMCID: PMC6106874 DOI: 10.1186/s13073-018-0576-8 
mkdir Maternal-And-Neonatal-Immunity_Traglia_2018
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/TragliaM_30134952_GCST006621/Table1.csv.gz -P Maternal-And-Neonatal-Immunity_Traglia_2018
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/TragliaM_30134952_GCST006621/Traglia_readme.txt -P Maternal-And-Neonatal-Immunity_Traglia_2018
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/TragliaM_30134952_GCST006622/Table2.csv.gz -P Maternal-And-Neonatal-Immunity_Traglia_2018
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/TragliaM_30134952_GCST006623/Table4.csv.gz -P Maternal-And-Neonatal-Immunity_Traglia_2018
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/TragliaM_30134952_GCST006625/Table3.csv.gz -P Maternal-And-Neonatal-Immunity_Traglia_2018

# https://www.ncbi.nlm.nih.gov/pubmed/30808845
# Genome-Wide Association Scan of Serum Urea in European Populations Identifies Two Novel Loci.
# PMID: 30808845 DOI: 10.1159/000496930 
mkdir Serum-Urea_Thio_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/ThioCHL_30808845_GCST007536/GWAS_serumurea_m1.txt.gz -P Serum-Urea_Thio_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/ThioCHL_30808845_GCST007536/GWAS_serumurea_m2.txt.gz -P Serum-Urea_Thio_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/ThioCHL_30808845_GCST007536/GWAS_serumurea_m3.txt.gz -P Serum-Urea_Thio_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/ThioCHL_30808845_GCST007536/GWAS_serumurea_m4.txt.gz -P Serum-Urea_Thio_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/ThioCHL_30808845_GCST007536/GWAS_serumurea_m5.txt.gz -P Serum-Urea_Thio_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/ThioCHL_30808845_GCST007536/GWAS_serumurea_m6.txt.gz -P Serum-Urea_Thio_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/ThioCHL_30808845_GCST007536/GWAS_serumurea_m7.txt.gz -P Serum-Urea_Thio_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/ThioCHL_30808845_GCST007536/GWAS_serumurea_m8.txt.gz -P Serum-Urea_Thio_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/ThioCHL_30808845_GCST007536/readme.txt -P Serum-Urea_Thio_2019

# https://www.ncbi.nlm.nih.gov/pubmed/29471430
# GWAS Identifies Two Novel Colorectal Cancer Loci at 16q24.1 and 20q13.12.
# PMID: 29471430 DOI: 10.1093/carcin/bgy026
mkdir Colorectal-Cancer_Tanikawa_2018 
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/TanikawaC_29471430_GCST005591/Colorectal_Cancer_All_by_1000genomes_Imputation.tar.gz -P Colorectal-Cancer_Tanikawa_2018
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/TanikawaC_29471430_GCST005591/Tanikawa_Colo_README.txt -P Colorectal-Cancer_Tanikawa_2018

# https://www.ncbi.nlm.nih.gov/pubmed/30664745
# Identification of new therapeutic targets for osteoarthritis through genome-wide analyses of UK Biobank data.
# PMID: 30664745 PMCID: PMC6400267 DOI: 10.1038/s41588-018-0327-1 
mkdir Osteoarthritis_Tachmazidou_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/TachmazidouI_30664745_GCST007090/Tachmazidou_30664745_KNEEOA.txt.gz -P Osteoarthritis_Tachmazidou_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/TachmazidouI_30664745_GCST007090/Tachmazidou_30664745_readme.txt -P Osteoarthritis_Tachmazidou_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/TachmazidouI_30664745_GCST007091/Tachmazidou_30664745_HIPOA.txt.gz -P Osteoarthritis_Tachmazidou_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/TachmazidouI_30664745_GCST007092/Tachmazidou_30664745_HIPKNEEOA.txt.gz -P Osteoarthritis_Tachmazidou_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/TachmazidouI_30664745_GCST007093/Tachmazidou_30664745_ALLOA.txt.gz -P Osteoarthritis_Tachmazidou_2019

# https://www.ncbi.nlm.nih.gov/pubmed/30718926
# Identification of 28 new susceptibility loci for type 2 diabetes in the Japanese population.
# PMID: 30718926 DOI: 10.1038/s41588-018-0332-4 
mkdir Type-2-Diabetes_Suzuki_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/SuzukiK_30718926_GCST007847/BBJ_BetaBased1.MAF_001.AtLeast2studies.AllChr.txt.gz -P Type-2-Diabetes_Suzuki_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/SuzukiK_30718926_GCST007847/Suzuki_T2D_README.txt -P Type-2-Diabetes_Suzuki_2019

# https://www.ncbi.nlm.nih.gov/pubmed/22466613
# Multiple apical plasma membrane constituents are associated with susceptibility to meconium ileus in individuals with cystic fibrosis.
# PMID: 22466613 PMCID: PMC3371103 DOI: 10.1038/ng.2221 
mkdir Cystic-Fibrosis-Associated-Meconium-Ileum_Sun_2012
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/SunL_22466613_GCST001468/SunL_22466613.README.txt -P Cystic-Fibrosis-Associated-Meconium-Ileum_Sun_2012
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/SunL_22466613_GCST001468/SunL_22466613.txt.gz -P Cystic-Fibrosis-Associated-Meconium-Ileum_Sun_2012
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/SunL_22466613_GCST001468/SunL_22466613.txt.gz.tbi -P Cystic-Fibrosis-Associated-Meconium-Ileum_Sun_2012

# https://www.ncbi.nlm.nih.gov/pubmed/29875488
# Genomic atlas of the human plasma proteome.
# PMID: 29875488 PMCID: PMC6697541 DOI: 10.1038/s41586-018-0175-2 
mkdir Blood-Protein-Levels_Sun_2018
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/SunBB_29875488_GCST005806/meta_filtered_final.tar.gz -P Blood-Protein-Levels_Sun_2018

# https://www.ncbi.nlm.nih.gov/pubmed/28240269
# Connecting genetic risk to disease end points through the human blood plasma proteome.
# PMID: 28240269 PMCID: PMC5333359 DOI: 10.1038/ncomms14357 
mkdir Blood-Protein-Levels_Suhre_2017
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/SuhreK_28240269_GCST004365/suhre_28240269_full.tgz -P Blood-Protein-Levels_Suhre_2017
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/SuhreK_28240269_GCST004365/Readme_SuhreK_28240269_19269178.txt -P Blood-Protein-Levels_Suhre_2017

# https://www.ncbi.nlm.nih.gov/pubmed/28334899
# Association analyses of East Asian individuals and trans-ancestry analyses with European individuals reveal new loci associated with cholesterol and triglyceride levels.
# PMID: 28334899 PMCID: PMC6075203 DOI: 10.1093/hmg/ddx062 
mkdir Lipid-Levels_Spracklen_2017
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/SpracklenCN_28334899_GCST004232/AGEN_lipids_hapmap_hdl_m2.txt.gz -P Lipid-Levels_Spracklen_2017
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/SpracklenCN_28334899_GCST004232/readme_spracklen28334899.txt -P Lipid-Levels_Spracklen_2017
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/SpracklenCN_28334899_GCST004233/AGEN_lipids_hapmap_ldl_m2.txt.gz -P Lipid-Levels_Spracklen_2017
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/SpracklenCN_28334899_GCST004235/AGEN_lipids_hapmap_tc_m2.txt.gz -P Lipid-Levels_Spracklen_2017
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/SpracklenCN_28334899_GCST004237/AGEN_lipids_hapmap_tg_m2.txt.gz -P Lipid-Levels_Spracklen_2017

# https://www.ncbi.nlm.nih.gov/pubmed/28548082
# Whole genome sequencing and imputation in isolated populations identify genetic associations with medically-relevant complex traits.
# PMID: 28548082 PMCID: PMC5458552 DOI: 10.1038/ncomms15606 
mkdir C-Reactive-Protein-Levels_Southam_2017
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/SouthamL_28548082_GCST004530/Southam_28548082_HELICMANOLIS.gz -P C-Reactive-Protein-Levels_Southam_2017
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/SouthamL_28548082_GCST004530/Southam_28548082_HELICPomak.gz -P C-Reactive-Protein-Levels_Southam_2017
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/SouthamL_28548082_GCST004530/Southam_28548082_README.txt.gz -P C-Reactive-Protein-Levels_Southam_2017

# https://www.ncbi.nlm.nih.gov/pubmed/30552067
# Moderate-to-severe asthma in individuals of European ancestry: a genome-wide association study.
# PMID: 30552067 PMCID: PMC6314966 DOI: 10.1016/S2213-2600(18)30389-8 
mkdir Asthma_Shrine_2018
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/ShrineN_30552067_GCST006911/README.txt -P Asthma_Shrine_2018
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/ShrineN_30552067_GCST006911/Shrine_30552067_moderate-severe_asthma.txt.gz -P Asthma_Shrine_2018

# https://www.ncbi.nlm.nih.gov/pubmed/29452408
# Genome-wide association study identifies seven novel susceptibility loci for primary open-angle glaucoma. 
# PMID: 29452408 PMCID: PMC6251544 DOI: 10.1093/hmg/ddy053
# NOTE: X-chromosome data available too at http://jenger.riken.jp/result
mkdir Glaucoma_Shiga_2018
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/ShigaY_29452408_GCST005388/2018_POAG_BBJ_autosome.txt.gz -P Glaucoma_Shiga_2018

# https://www.ncbi.nlm.nih.gov/pubmed/30998689
# Varicose veins of lower extremities: Insights from the first large-scale genetic study.
# PMID: 30998689 PMCID: PMC6490943 DOI: 10.1371/journal.pgen.1008110 
mkdir Varicose-Veins_Shadrina_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/ShadrinaAS_30998689_GCST008057/README_Shadrina_30998689.rtf -P Varicose-Veins_Shadrina_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/ShadrinaAS_30998689_GCST008057/disocvery_varicose_adj_bmi_dvt.zip -P Varicose-Veins_Shadrina_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/ShadrinaAS_30998689_GCST008057/replication_varicose.zip -P Varicose-Veins_Shadrina_2019

# https://www.ncbi.nlm.nih.gov/pubmed/26993346
# Genetic risk factors for the posterior cortical atrophy variant of Alzheimer's disease.
# PMID: 26993346 PMCID: PMC4982482 DOI: 10.1016/j.jalz.2016.01.010 
mkdir Alzheimers-Posterior-Cortical-Atrophy_Schott_2016
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/SchottJM_26993346_GCST003452/Autsms_PCA_MEGA_Solid_PCA_freq1_scr_Summary_Stats.txt -P Alzheimers-Posterior-Cortical-Atrophy_Schott_2016
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/SchottJM_26993346_GCST003452/Autsms_PCA_MEGA_Solid_PCA_freq1_scr_Summary_Stats.zip -P Alzheimers-Posterior-Cortical-Atrophy_Schott_2016

# https://www.ncbi.nlm.nih.gov/pubmed/31959995
# Genetic studies of urinary metabolites illuminate mechanisms of detoxification and excretion in humans.
# PMID: 31959995 DOI: 10.1038/s41588-019-0567-8 
mkdir Chronic-Kidney-Disease-Urinary-Metabolite-Levels_Schlosser_2020
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/SchlosserP_31959995_GCST009733 -P Chronic-Kidney-Disease-Urinary-Metabolite-Levels_Schlosser_2020

# https://www.ncbi.nlm.nih.gov/pubmed/30661054
# Genome-wide association analysis of diverticular disease points towards neuromuscular, connective tissue and epithelial pathomechanisms.
# PMID: 30661054 DOI: 10.1136/gutjnl-2018-317619 
mkdir Diverticular-Disease_Schafmeyer_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/SchafmayerC_30661054_GCST008105/GWAS_summary_1-23.dosages.maf_0.01.info_0.4.txt.gz -P Diverticular-Disease_Schafmeyer_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/SchafmayerC_30661054_GCST008105/README -P Diverticular-Disease_Schafmeyer_2019

# https://www.ncbi.nlm.nih.gov/pubmed/29860282
# Genetic study of multimodal imaging Alzheimer's disease progression score implicates novel loci.
# PMID: 29860282 PMCID: PMC6022660 DOI: 10.1093/brain/awy141 
mkdir Alzheimers-Disease-Biomarkers_Scelsi_2018 
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/ScelsiMA_29860282_GCST006136/ADNI_DPS_GWAS_AmyHippoEduCovar_NewUnrelated.assoc.linear -P Alzheimers-Disease-Biomarkers_Scelsi_2018
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/ScelsiMA_29860282_GCST006136/ADNI_FullSample_chrX_newPC.DPSupdate.amyhippoEDUcovar.xstrat.linear -P Alzheimers-Disease-Biomarkers_Scelsi_2018
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/ScelsiMA_29860282_GCST006136/readme.txt -P Alzheimers-Disease-Biomarkers_Scelsi_2018
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/ScelsiMA_29860282_GCST006135/ADNI_FullSample_chrX_newPC.amyloid.EDUcovar.xstrat.linear -P Alzheimers-Disease-Biomarkers_Scelsi_2018
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/ScelsiMA_29860282_GCST006135/ADNI_amyloid_GWAS_EduCovar_NewUnrelated.assoc.linear -P Alzheimers-Disease-Biomarkers_Scelsi_2018
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/ScelsiMA_29860282_GCST006134/ADNI_FullSample_chrX_newPC.hippo.EDUcovar.xstrat.linear -P Alzheimers-Disease-Biomarkers_Scelsi_2018
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/ScelsiMA_29860282_GCST006134/ADNI_hippo_GWAS_EduCovar_NewUnrelated.assoc.linear -P Alzheimers-Disease-Biomarkers_Scelsi_2018

# https://www.ncbi.nlm.nih.gov/pubmed/30718321
# Genome-wide association studies of impulsive personality traits (BIS-11 and UPPSP) and drug experimentation in up to 22,861 adult research participants identify loci in the CACNA1I and CADM2 genes.
# PMID: 30718321 PMCID: PMC6435820 DOI: 10.1523/JNEUROSCI.2662-18.2019 
mkdir Impulsivity_Sanchez-Roige_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/Sanchez-RoigeS_30718321_GCST007621/F1.43.UPPSP_SS.xlsx -P Impulsivity_Sanchez-Roige_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/Sanchez-RoigeS_30718321_GCST007621/README -P Impulsivity_Sanchez-Roige_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/Sanchez-RoigeS_30718321_GCST007622/F1.47.BIS_Total.xlsx -P Impulsivity_Sanchez-Roige_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/Sanchez-RoigeS_30718321_GCST007623/F1.44.UPPSP_Prem.xlsx -P Impulsivity_Sanchez-Roige_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/Sanchez-RoigeS_30718321_GCST007624/F1.45.UPPSP_PU.xlsx -P Impulsivity_Sanchez-Roige_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/Sanchez-RoigeS_30718321_GCST007625/F2.5.UPPSP_NU.xlsx -P Impulsivity_Sanchez-Roige_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/Sanchez-RoigeS_30718321_GCST007626/F1.46.UPPSP_Persv.xlsx -P Impulsivity_Sanchez-Roige_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/Sanchez-RoigeS_30718321_GCST007627/F1.48.BIS_Att.xlsx -P Impulsivity_Sanchez-Roige_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/Sanchez-RoigeS_30718321_GCST007628/F1.49.BIS_Mot.xlsx -P Impulsivity_Sanchez-Roige_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/Sanchez-RoigeS_30718321_GCST007629/F1.50.BIS_NonP.xlsx -P Impulsivity_Sanchez-Roige_2019

# https://www.ncbi.nlm.nih.gov/pubmed/30649302
# Genome-wide association study of anti-Müllerian hormone levels in pre-menopausal women of late reproductive age and relationship with genetic determinants of reproductive lifespan.
# PMID: 30649302 PMCID: PMC6452199 [Available on 2020-04-15] DOI: 10.1093/hmg/ddz015 
mkdir Anti-Mullerian-Hormone_Ruth_2019 
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/RuthKS_30649302_GCST007363/Ruth_30649302_AMH.txt.gz -P  Anti-Mullerian-Hormone_Ruth_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/RuthKS_30649302_GCST007363/Ruth_30649302_AMH_readme.txt -P  Anti-Mullerian-Hormone_Ruth_2019

# https://www.ncbi.nlm.nih.gov/pubmed/30677029
# Genetic architecture of human thinness compared to severe obesity.
# PMID: 30677029 PMCID: PMC6345421 DOI: 10.1371/journal.pgen.1007603 
mkdir BMI_Riveros-McKay_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/Riveros-McKayF_30677029_GCST007242/README -P BMI_Riveros-McKay_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/Riveros-McKayF_30677029_GCST007242/STILTS_UKHLS_ldcorrected -P BMI_Riveros-McKay_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/Riveros-McKayF_30677029_GCST007241/SCOOP_UKHLS_ldcorrected.gz -P BMI_Riveros-McKay_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/Riveros-McKayF_30677029_GCST007240/SCOOP_STILTS_ldcorrected.gz -P BMI_Riveros-McKay_2019

# https://www.ncbi.nlm.nih.gov/pubmed/31194788
# GWAS and PheWAS of red blood cell components in a Northern Nevadan cohort.
# PMID: 31194788 PMCID: PMC6564422 DOI: 10.1371/journal.pone.0218078 
mkdir Platelet-Traits_Read_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/ReadRW_31194788_GCST008166/RR_MCV_Top10000_Oct12018.txt -P Platelet-Traits_Read_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/ReadRW_31194788_GCST008166/ReadRW_31194788_readme.txt -P Platelet-Traits_Read_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/ReadRW_31194788_GCST008167/RR_MPV_Top10000_Oct12018.txt -P Platelet-Traits_Read_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/ReadRW_31194788_GCST008168/RR_PC_Top10000_Oct12018.txt -P Platelet-Traits_Read_2019

# https://www.ncbi.nlm.nih.gov/pubmed/26352407
# Genome-Wide Association Study with Targeted and Non-targeted NMR Metabolomics Identifies 15 Novel Loci of Urinary Human Metabolic Individuality. 
# PMID: 26352407 PMCID: PMC4564198 DOI: 10.1371/journal.pgen.1005487 
mkdir Urinary-Metabolites_Raffler_2015
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/RafflerJ_26352407_GCST003119/mGWAS_urine_SHIP-0_associations.zip -P Urinary-Metabolites_Raffler_2015

# https://www.ncbi.nlm.nih.gov/pubmed/30239722
# Meta-analysis of genome-wide association studies for body fat distribution in 694,649 individuals of European ancestry.
# PMID: 30239722 PMCID: PMC6298238 DOI: 10.1093/hmg/ddy327 
mkdir BMI_Pulit_2018
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/PulitSL_30239722_GCST008994/fat-distn.giant.ukbb.meta-analysis.whradjbmi.females.tbl.gz -P BMI_Pulit_2018
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/PulitSL_30239722_GCST008994/readme.txt -P BMI_Pulit_2018
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/PulitSL_30239722_GCST008995/fat-distn.giant.ukbb.meta-analysis.whradjbmi.males.tbl.gz -P BMI_Pulit_2018
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/PulitSL_30239722_GCST008996/fat-distn.giant.ukbb.meta-analysis.whr.combined.tbl.gz -P BMI_Pulit_2018
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/PulitSL_30239722_GCST008997/fat-distn.giant.ukbb.meta-analysis.whr.females.tbl.gz -P BMI_Pulit_2018
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/PulitSL_30239722_GCST008998/fat-distn.giant.ukbb.meta-analysis.whr.males.tbl.gz -P BMI_Pulit_2018
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/PulitSL_30239722_GCST008999/fat-distn.giant.ukbb.meta-analysis.whradjbmi.combined.tbl.gz -P BMI_Pulit_2018
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/PulitSL_30239722_GCST009001/fat-distn.giant.ukbb.meta-analysis.bmi.males.tbl.gz -P BMI_Pulit_2018
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/PulitSL_30239722_GCST009003/fat-distn.giant.ukbb.meta-analysis.bmi.females.tbl.gz -P BMI_Pulit_2018
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/PulitSL_30239722_GCST009004/fat-distn.giant.ukbb.meta-analysis.bmi.combined.tbl.gz -P BMI_Pulit_2018

# https://www.ncbi.nlm.nih.gov/pubmed/28887542
# Genome-wide analysis of health-related biomarkers in the UK Household Longitudinal Study reveals novel associations. 
# PMID: 28887542 PMCID: PMC5591265 DOI: 10.1038/s41598-017-10812-1 
mkdir Biomarker-Levels_Prins_2017
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/PrinsBP_28887542_GCST004939/Prins_28887542_hba1c.gz -P Biomarker-Levels_Prins_2017
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/PrinsBP_28887542_GCST004939/Prins_28887542_readme.rtf -P Biomarker-Levels_Prins_2017
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/PrinsBP_28887542_GCST004940/Prins_28887542_alt.gz -P Biomarker-Levels_Prins_2017
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/PrinsBP_28887542_GCST004941/Prins_28887542_dheas.gz -P Biomarker-Levels_Prins_2017
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/PrinsBP_28887542_GCST005058/Prins_28887542_hdl.gz -P Biomarker-Levels_Prins_2017
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/PrinsBP_28887542_GCST005059/Prins_28887542_alb.gz -P Biomarker-Levels_Prins_2017
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/PrinsBP_28887542_GCST005060/Prins_28887542_hgb.gz -P Biomarker-Levels_Prins_2017
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/PrinsBP_28887542_GCST005061/Prins_28887542_alkp.gz -P Biomarker-Levels_Prins_2017
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/PrinsBP_28887542_GCST005062/Prins_28887542_cfib.gz -P Biomarker-Levels_Prins_2017
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/PrinsBP_28887542_GCST005063/Prins_28887542_egfr.gz -P Biomarker-Levels_Prins_2017
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/PrinsBP_28887542_GCST005064/Prins_28887542_ast.gz -P Biomarker-Levels_Prins_2017
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/PrinsBP_28887542_GCST005065/Prins_28887542_chol.gz -P Biomarker-Levels_Prins_2017
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/PrinsBP_28887542_GCST005066/Prins_28887542_ecre.gz -P Biomarker-Levels_Prins_2017
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/PrinsBP_28887542_GCST005067/Prins_28887542_hscrp.gz -P Biomarker-Levels_Prins_2017
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/PrinsBP_28887542_GCST005068/Prins_28887542_ldl.gz -P Biomarker-Levels_Prins_2017
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/PrinsBP_28887542_GCST005069/Prins_28887542_ggt.gz -P Biomarker-Levels_Prins_2017
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/PrinsBP_28887542_GCST005070/Prins_28887542_ure.gz -P Biomarker-Levels_Prins_2017
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/PrinsBP_28887542_GCST005071/Prins_28887542_igfi.gz -P Biomarker-Levels_Prins_2017
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/PrinsBP_28887542_GCST005072/Prins_28887542_rtin.gz -P Biomarker-Levels_Prins_2017
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/PrinsBP_28887542_GCST005073/Prins_28887542_trig.gz -P Biomarker-Levels_Prins_2017
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/PrinsBP_28887542_GCST005074/Prins_28887542_testo_m.gz -P Biomarker-Levels_Prins_2017

# https://www.ncbi.nlm.nih.gov/pubmed/31409800
# GWAS for urinary sodium and potassium excretion highlights pathways shared with cardiovascular traits.
# PMID: 31409800 PMCID: PMC6692500 DOI: 10.1038/s41467-019-11451-y 
mkdir Urinary-Metabolites_Pazoki_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/PazokiR_31409800_GCST008647/PazokiR_prePMID_Sodium.GWAS.csv -P Urinary-Metabolites_Pazoki_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/PazokiR_31409800_GCST008647/README.txt -P Urinary-Metabolites_Pazoki_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/PazokiR_31409800_GCST008648/PazokiR_prePMID_Potassium.GWAS.csv -P Urinary-Metabolites_Pazoki_2019

# https://www.ncbi.nlm.nih.gov/pubmed/26482879
# Multi-ancestry genome-wide association study of 21,000 cases and 95,000 controls identifies new risk loci for atopic dermatitis.
# PMID: 26482879 PMCID: PMC4753676 DOI: 10.1038/ng.3424 
mkdir Atopic-Dermatitis_Paternoster_2015
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/PaternosterL_26482879_GCST003184/AD_GWAS_README.txt -P Atopic-Dermatitis_Paternoster_2015
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/PaternosterL_26482879_GCST003184/EAGLE_AD_no23andme_results_29072015.txt -P Atopic-Dermatitis_Paternoster_2015

# https://www.ncbi.nlm.nih.gov/pubmed/31910446
# Genome-wide association study of metabolic syndrome in Korean populations.
# PMID: 31910446 PMCID: PMC6946588 DOI: 10.1371/journal.pone.0227357 
mkdir Metabolic-Syndrome_Oh_2020
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/OhSW_31910446_GCST009654/REPORT_high_BP_replication.xlsx -P Metabolic-Syndrome_Oh_2020
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/OhSW_31910446_GCST009655/REPORT_high_FBG_replication.xlsx -P Metabolic-Syndrome_Oh_2020
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/OhSW_31910446_GCST009656/REPORT_low_HDL_replication.xlsx -P Metabolic-Syndrome_Oh_2020
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/OhSW_31910446_GCST009657/REPORT_high_TG_replication.xlsx -P Metabolic-Syndrome_Oh_2020
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/OhSW_31910446_GCST009658/REPORT_MetS_replication.xlsx -P Metabolic-Syndrome_Oh_2020
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/OhSW_31910446_GCST009659/REPORT_high_BP_discovery.xlsx -P Metabolic-Syndrome_Oh_2020
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/OhSW_31910446_GCST009660/REPORT_high_FBG_discovery.xlsx -P Metabolic-Syndrome_Oh_2020
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/OhSW_31910446_GCST009661/REPORT_low_HDL_discovery.xlsx -P Metabolic-Syndrome_Oh_2020
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/OhSW_31910446_GCST009662/REPORT_high_TG_discovery.xlsx -P Metabolic-Syndrome_Oh_2020
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/OhSW_31910446_GCST009663/REPORT_MetS_discovery.xlsx -P Metabolic-Syndrome_Oh_2020

# https://www.ncbi.nlm.nih.gov/pubmed/31679650
# Multivariate Genome-Wide Association Analysis of a Cytokine Network Reveals Variants with Widespread Immune, Haematological, and Cardiometabolic Pleiotropy.
# PMID: 31679650 PMCID: PMC6904835 [Available on 2020-06-05] DOI: 10.1016/j.ajhg.2019.10.001 
mkdir Cytokine-Network-Levels_Nath_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/NathAP_31679650_GCST009244/GWAS_Catalog_Submission.zip -P Cytokine-Network-Levels_Nath_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/NathAP_31679650_GCST009244/MultivariateGWAS_CytokineNetwork_SummaryStatistics_GWASCatalogReadMe.rtf -P Cytokine-Network-Levels_Nath_2019

# https://www.ncbi.nlm.nih.gov/pubmed/31311600
# GWAS and enrichment analyses of non-alcoholic fatty liver disease identify new trait-associated genes and pathways across eMERGE Network.
# PMID: 31311600 PMCID: PMC6636057 DOI: 10.1186/s12916-019-1364-z 
mkdir Fatty-Liver-Disease-Non-Alcoholic_Namjou_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/NamjouB_31311600_GCST008468/NamjouB_31311600_NAFLD.txt -P Fatty-Liver-Disease-Non-Alcoholic_Namjou_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/NamjouB_31311600_GCST008468/readme.txt -P Fatty-Liver-Disease-Non-Alcoholic_Namjou_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/NamjouB_31311600_GCST008469/NamjouB_31311600_fibrosis_score.txt -P Fatty-Liver-Disease-Non-Alcoholic_Namjou_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/NamjouB_31311600_GCST008471/NamjouB_31311600_NAS_score.txt -P Fatty-Liver-Disease-Non-Alcoholic_Namjou_2019

# https://www.ncbi.nlm.nih.gov/pubmed/31473137
# Genome-wide association analysis of dementia and its clinical endophenotypes reveal novel loci associated with Alzheimer's disease and three causality networks: The GR@ACE project.
# PMID: 31473137 DOI: 10.1016/j.jalz.2019.06.4950
mkdir Alzheimers-Dementia_Moreno-Grau_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/Moreno-GrauS_31473137_GCST009020/GRACE_StageI.txt -P Alzheimers-Dementia_Moreno-Grau_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/Moreno-GrauS_31473137_GCST009019/GRACEStageI_dbGAP.txt -P Alzheimers-Dementia_Moreno-Grau_2019

# https://www.ncbi.nlm.nih.gov/pubmed/31482140
# Genome-wide association study of knee pain identifies associations with GDF5 and COL27A1 in UK Biobank.
# PMID: 31482140 PMCID: PMC6713725 DOI: 10.1038/s42003-019-0568-2 
mkdir Knee-Pain_Meng_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/MengW_31482140_GCST008672/kneepain2_f6159_v3_1812.bgenie.txt.gz -P Knee-Pain_Meng_2019

# https://www.ncbi.nlm.nih.gov/pubmed/31089300
# GWAS of smoking behaviour in 165,436 Japanese people reveals seven new loci and shared genetic architecture.
# PMID: 31089300 DOI: 10.1038/s41562-019-0557-y 
mkdir Smoking_Matoba_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/MatobaN_31089300_GCST009398/Female_2018_FORMER_BBJ_Xchromosome_Pcorrected.txt.gz -P Smoking_Matoba_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/MatobaN_31089300_GCST009398/Female_2018_FORMER_BBJ_autosome_Pcorrected.txt.gz -P Smoking_Matoba_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/MatobaN_31089300_GCST009399/Male_2018_EVERSMK_BBJ_Xchromosome_Pcorrected.txt.gz -P Smoking_Matoba_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/MatobaN_31089300_GCST009399/Male_2018_EVERSMK_BBJ_autosome_Pcorrected.txt.gz -P Smoking_Matoba_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/MatobaN_31089300_GCST009400/All_2018_FORMER_BBJ_autosome_Pcorrected.txt.gz -P Smoking_Matoba_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/MatobaN_31089300_GCST009401/Male_2018_FORMER_BBJ_Xchromosome_Pcorrected.txt.gz -P Smoking_Matoba_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/MatobaN_31089300_GCST009401/Male_2018_FORMER_BBJ_autosome_Pcorrected.txt.gz -P Smoking_Matoba_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/MatobaN_31089300_GCST009402/Female_2018_EVERSMK_BBJ_Xchromosome_Pcorrected.txt.gz -P Smoking_Matoba_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/MatobaN_31089300_GCST009402/Female_2018_EVERSMK_BBJ_autosome_Pcorrected.txt.gz -P Smoking_Matoba_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/MatobaN_31089300_GCST009403/All_2018_EVERSMK_BBJ_autosome_Pcorrected.txt.gz -P Smoking_Matoba_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/MatobaN_31089300_GCST009405/All_2018_CPD_BBJ_autosome_Pcorrected.txt.gz -P Smoking_Matoba_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/MatobaN_31089300_GCST009406/Female_2018_CPD_BBJ_Xchromosome_Pcorrected.txt.gz -P Smoking_Matoba_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/MatobaN_31089300_GCST009406/Female_2018_CPD_BBJ_autosome_Pcorrected.txt.gz -P Smoking_Matoba_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/MatobaN_31089300_GCST009407/Male_2018_CPD_BBJ_Xchromosome_Pcorrected.txt.gz -P Smoking_Matoba_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/MatobaN_31089300_GCST009407/Male_2018_CPD_BBJ_autosome_Pcorrected.txt.gz -P Smoking_Matoba_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/MatobaN_31089300_GCST009408/All_2018_AI_BBJ_autosome_Pcorrected.txt.gz -P Smoking_Matoba_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/MatobaN_31089300_GCST009409/Female_2018_AI_BBJ_Xchromosome_Pcorrected.txt.gz -P Smoking_Matoba_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/MatobaN_31089300_GCST009409/Female_2018_AI_BBJ_autosome_Pcorrected.txt.gz -P Smoking_Matoba_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/MatobaN_31089300_GCST009410/Male_2018_AI_BBJ_Xchromosome_Pcorrected.txt.gz -P Smoking_Matoba_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/MatobaN_31089300_GCST009410/Male_2018_AI_BBJ_autosome_Pcorrected.txt.gz -P Smoking_Matoba_2019

# https://www.ncbi.nlm.nih.gov/pubmed/31346403
# Integrated genetic and methylomic analyses identify shared biology between autism and autistic traits.
# PMID: 31346403 PMCID: PMC6637466 DOI: 10.1186/s13229-019-0279-z 
mkdir Autism_Massrali_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/MassraliA_31346403_GCST008484/scdclogGWAS.RData -P Autism_Massrali_2019

# https://www.ncbi.nlm.nih.gov/pubmed/30092369
# Variants in Immune-related Genes and Genital HPV 16 Persistence in Men.
# PMID: 30092369 PMCID: PMC6290760 DOI: 10.1016/j.pvr.2018.08.001 
mkdir Chronic-HPV-Infection_Mainali_2018
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/MainaliB_30092369_GCST008308/mmc1.txt -P Chronic-HPV-Infection_Mainali_2018

# https://www.ncbi.nlm.nih.gov/pubmed/30177863
# Genome-wide association analyses identify 39 new susceptibility loci for diverticular disease.
# PMID: 30177863 PMCID: PMC6168378 DOI: 10.1038/s41588-018-0203-z 
mkdir Diverticular-Disease_Maguire_2018
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/MaguireLH_30177863_GCST006479/clinical_c_K57.zip -P Diverticular-Disease_Maguire_2018

# https://www.ncbi.nlm.nih.gov/pubmed/31719529
# Genome-wide association study of eosinophilic granulomatosis with polyangiitis reveals genomic loci stratified by ANCA status.
# PMID: 31719529 PMCID: PMC6851141 DOI: 10.1038/s41467-019-12515-9 
mkdir Churg-Strauss-Syndrome_Lyons_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/LyonsPA_31719529_GCST009248/mpo.anca.positive.egpa.vs.controls.txt -P Churg-Strauss-Syndrome_Lyons_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/LyonsPA_31719529_GCST009249/anca.negative.egpa.vs.controls.txt -P Churg-Strauss-Syndrome_Lyons_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/LyonsPA_31719529_GCST009250/all.egpa.vs.controls.txt -P Churg-Strauss-Syndrome_Lyons_2019

# https://www.ncbi.nlm.nih.gov/pubmed/31434886
# Early progression to active tuberculosis is a highly heritable trait driven by 3q23 in Peruvians.
# PMID: 31434886 PMCID: PMC6704092 DOI: 10.1038/s41467-019-11664-1 
mkdir Tuberculosis-Early-Progression_Luo_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/LuoY_31434886_GCST008488/Luo_TBprogression.txt.gz -P Tuberculosis-Early-Progression_Luo_2019

# https://www.ncbi.nlm.nih.gov/pubmed/31672989
# GWAS for systemic sclerosis identifies multiple risk loci and highlights fibrotic and vasculopathy pathways.
# PMID: 31672989 PMCID: PMC6823490 DOI: 10.1038/s41467-019-12760-y 
mkdir Systemic-Sclerosis_Lopez-Isac_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/Lopez-IsacE_31672989_GCST009131/Lopez-Isac_Readme.txt -P Systemic-Sclerosis_Lopez-Isac_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/Lopez-IsacE_31672989_GCST009131/Lopez-Isac_prePMID_META_GWAS_SSc.meta.txt -P Systemic-Sclerosis_Lopez-Isac_2019

# https://www.ncbi.nlm.nih.gov/pubmed/28263315
# Whole-genome sequencing identifies common-to-rare variants associated with human blood metabolites.
# PMID: 28263315 DOI: 10.1038/ng.3809 
mkdir Blood-Metabolites_Long_2017
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/LongT_28263315_GCST009610/41588_2017_BFng3809_MOESM85_ESM.xlsx -P Blood-Metabolites_Long_2017

# https://www.ncbi.nlm.nih.gov/pubmed/31367044
# Exome sequencing of Finnish isolates enhances rare-variant association power.
# PMID: 31367044 PMCID: PMC6697530 DOI: 10.1038/s41586-019-1457-z 
mkdir Exome-Cardiometabolic-Traits_Locke_2019
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/LockeAE_31367044_GCST008673 -P Exome-Cardiometabolic-Traits_Locke_2019

# https://www.ncbi.nlm.nih.gov/pubmed/30946743
# Genome-wide association study in Turkish and Iranian populations identify rare familial Mediterranean fever gene (MEFV) polymorphisms associated with ankylosing spondylitis.
# PMID: 30946743 PMCID: PMC6467421 DOI: 10.1371/journal.pgen.1008038 
mkdir Ankylosing-Spondylitis_Li_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/LiZ_30946743_GCST007844/Iranian_cohort.txt -P Ankylosing-Spondylitis_Li_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/LiZ_30946743_GCST007844/Turkish_cohort.txt -P Ankylosing-Spondylitis_Li_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/LiZ_30946743_GCST007844/meta.txt -P Ankylosing-Spondylitis_Li_2019

# https://www.ncbi.nlm.nih.gov/pubmed/30643251
# Association studies of up to 1.2 million individuals yield new insights into the genetic etiology of tobacco and alcohol use.
# PMID: 30643251 PMCID: PMC6358542 DOI: 10.1038/s41588-018-0307-5 
mkdir Smoking_Liu_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/LiuM_30643251_GCST007474/README -P Smoking_Liu_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/LiuM_30643251_GCST007474/SmokingInitiation.txt.gz -P Smoking_Liu_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/LiuM_30643251_GCST007458/AgeOfInitiation.txt.gz -P Smoking_Liu_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/LiuM_30643251_GCST007459/CigarettesPerDay.txt.gz -P Smoking_Liu_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/LiuM_30643251_GCST007460/SmokingCessation.txt.gz -P Smoking_Liu_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/LiuM_30643251_GCST007461/DrinksPerWeek.txt.gz -P Smoking_Liu_2019

# https://www.ncbi.nlm.nih.gov/pubmed/31708768
# Genome-Wide Association Studies for Cerebrospinal Fluid Soluble TREM2 in Alzheimer's Disease.
# PMID: 31708768 PMCID: PMC6823606 DOI: 10.3389/fnagi.2019.00297 
mkdir Alzheimers-Cerebrospinal-Fluid-sTREM2_Liu_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/LiuC_31708768_GCST009246/Table_2.xlsx -P Alzheimers-Cerebrospinal-Fluid-sTREM2_Liu_2019

# https://www.ncbi.nlm.nih.gov/pubmed/31589552
# Genome-Wide Association Study of the Metabolic Syndrome in UK Biobank.
# PMID: 31589552 DOI: 10.1089/met.2019.0070 
mkdir Metabolic-Syndrome_Lind_2019 
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/LindL_31589552_GCST009602/UKBB_MetS_alla_Stefan.txt -P Metabolic-Syndrome_Lind_2019

# https://www.ncbi.nlm.nih.gov/pubmed/27764105
# Genome-Wide Meta-Analysis of Sciatica in Finnish Population.
# PMID: 27764105 PMCID: PMC5072673 DOI: 10.1371/journal.pone.0163877 
mkdir Sciatica_Lemmela_2016
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/LemmelaS_27764105_GCST003869/Meta_GWAS_sciatica_results -P Sciatica_Lemmela_2016

# https://www.ncbi.nlm.nih.gov/pubmed/30323354
# BRCA1/2-negative, high-risk breast cancers (BRCAX) for Asian women: genetic susceptibility loci and their potential impacts
# PMID: 30323354 PMCID: PMC6189145 DOI: 10.1038/s41598-018-31859-8 
mkdir Breast-Cancer-BRACX_Lee_2018
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/LeeJY_30323354_GCST006719/download.txt -P Breast-Cancer-BRACX_Lee_2018

# https://www.ncbi.nlm.nih.gov/pubmed/30898391
# Genome-wide association studies identify susceptibility loci for epithelial ovarian cancer in east Asian women.
# PMID: 30898391 PMCID: PMC6754211 DOI: 10.1016/j.ygyno.2019.02.023 
mkdir Ovarian-Cancer_Lawrenson_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/LawrensonK_30898391_GCST007728/AsianResultsChr1_8.zip -P Ovarian-Cancer_Lawrenson_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/LawrensonK_30898391_GCST007728/AsianResultsChr9_X.zip -P Ovarian-Cancer_Lawrenson_2019

# https://www.ncbi.nlm.nih.gov/pubmed/31231134
# Sex specific associations in genome wide association analysis of renal cell carcinoma.
# PMID: 31231134 PMCID: PMC6777615 [Available on 2020-10-01] DOI: 10.1038/s41431-019-0455-9 
mkdir Renal-Cell-Carcinoma_Laskar_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/LaskarRS_31231134_GCST008225/Laskar_31231134_Females.gz -P Renal-Cell-Carcinoma_Laskar_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/LaskarRS_31231134_GCST008225/read-me_Laskar_31231134.txt -P Renal-Cell-Carcinoma_Laskar_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/LaskarRS_31231134_GCST008226/Laskar_31231134_Males.gz -P Renal-Cell-Carcinoma_Laskar_2019

# https://www.ncbi.nlm.nih.gov/pubmed/28714469
# Transancestral mapping and genetic load in systemic lupus erythematosus.
# PMID: 28714469 PMCID: PMC5520018 DOI: 10.1038/ncomms16021 
mkdir Lupus_Langefeld_2017
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/LangefeldCD_28714469_GCST007400/Biallelic_info.zip -P Lupus_Langefeld_2017
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/LangefeldCD_28714469_GCST007400/IMPUTE_info_files.zip -P Lupus_Langefeld_2017
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/LangefeldCD_28714469_GCST007400/Notes_for_data_shared_on_immunobase_updated.docx -P Lupus_Langefeld_2017
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/LangefeldCD_28714469_GCST007400/sle_immunochip1-8.zip -P Lupus_Langefeld_2017
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/LangefeldCD_28714469_GCST007400/sle_immunochip9-22.zip -P Lupus_Langefeld_2017

# https://www.ncbi.nlm.nih.gov/pubmed/30202859
# Large scale meta-analysis highlights the hypothalamic-pituitary-gonadal (HPG) axis in the genetic regulation of menstrual cycle length.
# PMID: 30202859 PMCID: PMC6276838 DOI: 10.1093/hmg/ddy317 
mkdir Menstrual-Cycle-Length_Laisk_2018
wget -P ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/LaiskT_30202859_GCST006958/Cycle_length_Laisk_et_al_2018.gz Menstrual-Cycle-Length_Laisk_2018

# https://www.ncbi.nlm.nih.gov/pubmed/31417091
# Genome-wide association study identifies 14 previously unreported susceptibility loci for adolescent idiopathic scoliosis in Japanese.
# PMID: 31417091 PMCID: PMC6695451 DOI: 10.1038/s41467-019-11596-w 
mkdir Scoliosis-Adolescent-Idiopathic_Kou_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/KouI_31417091_GCST008788/AIS_ImputationMETA.Female.RSQR03_MAF005.txt.gz -P Scoliosis-Adolescent-Idiopathic_Kou_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/KouI_31417091_GCST008789/AIS_ImputationMETA.RSQR03_MAF005.txt.gz -P Scoliosis-Adolescent-Idiopathic_Kou_2019

# https://www.ncbi.nlm.nih.gov/pubmed/29899525
# Genome-wide association study of habitual physical activity in over 377,000 UK Biobank participants identifies multiple variants including CADM2 and APOE.
# PMID: 29899525 PMCID: PMC6195860 DOI: 10.1038/s41366-018-0120-3 
mkdir Physical-Activity-Habits_Klimentidis_2018
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/KlimentidisYC_29899525_GCST006079/Klimentidis_29899525_README.txt -P Physical-Activity-Habits_Klimentidis_2018
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/KlimentidisYC_29899525_GCST006079/Klimentidis_29899525_Acc425_Model1_BOLTLMM_500K.txt.gz -P Physical-Activity-Habits_Klimentidis_2018
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/KlimentidisYC_29899525_GCST006097/Klimentidis_29899525_MVPA_Model1_BOLTLMM_500K.txt.gz -P Physical-Activity-Habits_Klimentidis_2018
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/KlimentidisYC_29899525_GCST006098/Klimentidis_29899525_VPA_Model1_BOLTLMM_500K.txt.gz -P Physical-Activity-Habits_Klimentidis_2018
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/KlimentidisYC_29899525_GCST006099/Klimentidis_29899525_AccAve_Model1_BOLTLMM_500K.txt.gz -P Physical-Activity-Habits_Klimentidis_2018
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/KlimentidisYC_29899525_GCST006100/Klimentidis_29899525_SSOE_Model1_BOLTLMM_500K.txt.gz -P Physical-Activity-Habits_Klimentidis_2018

# https://www.ncbi.nlm.nih.gov/pubmed/30048462
# Identification of 613 new loci associated with heel bone mineral density and a polygenic risk score for bone mineral density, osteoporosis and fracture.
# PMID: 30048462 PMCID: PMC6062019 DOI: 10.1371/journal.pone.0200785 
mkdir Heel-Bone-Mineral-Density_Kim_2018
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/KimSK_30048462_GCST006433/KimSK_summary_stats_README.txt -P Heel-Bone-Mineral-Density_Kim_2018
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/KimSK_30048462_GCST006433/BMD_v3_SumStats.txt%20(1).zip -P Heel-Bone-Mineral-Density_Kim_2018

# https://www.ncbi.nlm.nih.gov/pubmed/31501611
# Contribution of genetics to visceral adiposity and its relation to cardiovascular and metabolic disease.
# PMID: 31501611 DOI: 10.1038/s41591-019-0563-7 
mkdir Visceral-Adipose-Tissue_Karlsson_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/KarlssonT_31501611_GCST008742/VAT_females_UKB.txt.gz -P Visceral-Adipose-Tissue_Karlsson_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/KarlssonT_31501611_GCST008743/VAT_MALES_UKB.txt.gz -P Visceral-Adipose-Tissue_Karlsson_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/KarlssonT_31501611_GCST008744/VAT_SEX-COMBINED_UKB.txt.gz -P Visceral-Adipose-Tissue_Karlsson_2019

# https://www.ncbi.nlm.nih.gov/pubmed/30643258
# Genome-wide association analyses of risk tolerance and risky behaviors in over 1 million individuals identify hundreds of loci and shared genetic influences.
# PMID: 30643258 PMCID: PMC6713272 DOI: 10.1038/s41588-018-0309-3 
mkdir Risky-Behavior_Karlsson-Linner_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/KarlssonLinnerR_30643258_GCST007322/README_KarlssonLinne%CC%81rR.txt -P Risky-Behavior_Karlsson-Linner_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/KarlssonLinnerR_30643258_GCST007322/RISK_GWAS_MA_UKB+replication.txt -P Risky-Behavior_Karlsson-Linner_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/KarlssonLinnerR_30643258_GCST007323/RISK_PC1_GWAS.txt -P Risky-Behavior_Karlsson-Linner_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/KarlssonLinnerR_30643258_GCST007326/NUMBER_SEXUAL_PARTNERS_GWAS.txt -P Risky-Behavior_Karlsson-Linner_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/KarlssonLinnerR_30643258_GCST007327/EVER_SMOKER_GWAS_MA_UKB+TAG.txt -P Risky-Behavior_Karlsson-Linner_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/KarlssonLinnerR_30643258_GCST007328/DRINKS_PER_WEEK_GWAS.txt -P Risky-Behavior_Karlsson-Linner_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/KarlssonLinnerR_30643258_GCST007329/AUTOMOBILE_SPEEDING_PROPENSITY_GWAS.txt -P Risky-Behavior_Karlsson-Linner_2019

# https://www.ncbi.nlm.nih.gov/pubmed/30778226
# Protein-coding variants implicate novel genes related to lipid homeostasis contributing to body-fat distribution.
# PMID: 30778226 PMCID: PMC6560635 DOI: 10.1038/s41588-018-0334-2 
mkdir Waist-Hip-Ratio-BMI-Adjusted_Justice_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/JusticeAE_30778226_GCST007483/PublicRelease.WHRadjBMI.C.All.Add.txt.gz -P Waist-Hip-Ratio-BMI-Adjusted_Justice_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/JusticeAE_30778226_GCST007484/PublicRelease.WHRadjBMI.C.All.Rec.txt.gz -P Waist-Hip-Ratio-BMI-Adjusted_Justice_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/JusticeAE_30778226_GCST007487/PublicRelease.WHRadjBMI.C.Eur.Add.txt.gz -P Waist-Hip-Ratio-BMI-Adjusted_Justice_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/JusticeAE_30778226_GCST007491/PublicRelease.WHRadjBMI.C.Eur.Rec.txt.gz -P Waist-Hip-Ratio-BMI-Adjusted_Justice_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/JusticeAE_30778226_GCST007492/PublicRelease.WHRadjBMI.M.All.Add.txt.gz -P Waist-Hip-Ratio-BMI-Adjusted_Justice_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/JusticeAE_30778226_GCST007493/PublicRelease.WHRadjBMI.M.All.Rec.txt.gz -P Waist-Hip-Ratio-BMI-Adjusted_Justice_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/JusticeAE_30778226_GCST007494/PublicRelease.WHRadjBMI.M.Eur.Add.txt.gz -P Waist-Hip-Ratio-BMI-Adjusted_Justice_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/JusticeAE_30778226_GCST007496/PublicRelease.WHRadjBMI.M.Eur.Rec.txt.gz -P Waist-Hip-Ratio-BMI-Adjusted_Justice_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/JusticeAE_30778226_GCST007500/PublicRelease.WHRadjBMI.W.All.Add.txt.gz -P Waist-Hip-Ratio-BMI-Adjusted_Justice_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/JusticeAE_30778226_GCST007501/PublicRelease.WHRadjBMI.W.All.Rec.txt.gz -P Waist-Hip-Ratio-BMI-Adjusted_Justice_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/JusticeAE_30778226_GCST007502/PublicRelease.WHRadjBMI.W.Eur.Add.txt.gz -P Waist-Hip-Ratio-BMI-Adjusted_Justice_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/JusticeAE_30778226_GCST007503/PublicRelease.WHRadjBMI.W.Eur.Rec.txt.gz -P Waist-Hip-Ratio-BMI-Adjusted_Justice_2019

# https://www.ncbi.nlm.nih.gov/pubmed/31194737
# Genome-wide association study of multisite chronic pain in UK Biobank.
# PMID: 31194737 PMCID: PMC6592570 DOI: 10.1371/journal.pgen.1008164 
mkdir Chronic-Pain_Johnston_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/JohnstonKJA_31194737_GCST008512/README -P Chronic-Pain_Johnston_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/JohnstonKJA_31194737_GCST008512/chronic_pain-bgen.stats.gz -P Chronic-Pain_Johnston_2019

# https://www.ncbi.nlm.nih.gov/pubmed/27723757
# Genome-wide association studies of autoimmune vitiligo identify 23 new risk loci and highlight key pathways and regulatory variants.
# PMID: 27723757 PMCID: PMC5120758 DOI: 10.1038/ng.3680 
mkdir Vitilogo_Jin_2016
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/JinY_27723757_GCST004785 -P Vitilogo_Jin_2016

# https://www.ncbi.nlm.nih.gov/pubmed/30674883
# Early-onset autoimmune vitiligo associated with an enhancer variant haplotype that upregulates class II HLA expression.
# PMID: 30674883 PMCID: PMC6344500 DOI: 10.1038/s41467-019-08337-4 
mkdir Vitilogo_Jin_2019
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/JinY_30674883_GCST007112 -P  Vitilogo_Jin_2019
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/JinY_30674883_GCST007111 -P Vitilogo_Jin_2019

# https://www.ncbi.nlm.nih.gov/pubmed/31070104
# Genetic Determinants of Circulating Glycine Levels and Risk of Coronary Artery Disease.
# PMID: 31070104 PMCID: PMC6585317 DOI:	    10.1161/JAHA.119.011922 
mkdir Glycine-Levels_Jia_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/JiaQ_31070104_GCST007838/README.txt -P Glycine-Levels_Jia_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/JiaQ_31070104_GCST007838/JiaQ_31070104_glycine_MALE.txt -P Glycine-Levels_Jia_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/JiaQ_31070104_GCST007837/JiaQ_31070104_glycine_FEMALE.txt -P Glycine-Levels_Jia_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/JiaQ_31070104_GCST007836/JiaQ_31070104_glycine_ALL.txt -P Glycine-Levels_Jia_2019

# https://www.ncbi.nlm.nih.gov/pubmed/30188897
# Detecting past and ongoing natural selection among ethnically Tibetan women at high altitude in Nepal.
# PMID:    30188897    PMCID:        PMC6143271	DOI:	    10.1371/journal.pgen.1007650 
mkdir Multiple-Traits_Jeong_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/JeongC_30188897_GCST006720/README -P Multiple-Traits_Jeong_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/JeongC_30188897_GCST006720/TIBETN_Hb_all_noSat_160509.assoc.txt.gz -P Multiple-Traits_Jeong_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/JeongC_30188897_GCST006721/TIBETN_ICD_160509.assoc.txt.gz -P Multiple-Traits_Jeong_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/JeongC_30188897_GCST006722/TIBETN_ICD_FM_160509.assoc.txt.gz -P Multiple-Traits_Jeong_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/JeongC_30188897_GCST006723/TIBETN_ICDprop_160509.assoc.txt.gz -P Multiple-Traits_Jeong_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/JeongC_30188897_GCST006724/TIBETN_ICDprop_FM_160509.assoc.txt.gz -P Multiple-Traits_Jeong_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/JeongC_30188897_GCST006725/TIBETN_ICJD_160509.assoc.txt.gz -P Multiple-Traits_Jeong_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/JeongC_30188897_GCST006726/TIBETN_ICJD_FM_160509.assoc.txt.gz -P Multiple-Traits_Jeong_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/JeongC_30188897_GCST006727/TIBETN_ICJDprop_160509.assoc.txt.gz -P Multiple-Traits_Jeong_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/JeongC_30188897_GCST006728/TIBETN_ID_160509.assoc.txt.gz -P Multiple-Traits_Jeong_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/JeongC_30188897_GCST006729/TIBETN_ID_FM_160509.assoc.txt.gz -P Multiple-Traits_Jeong_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/JeongC_30188897_GCST006730/TIBETN_ICJDprop_FM_160509.assoc.txt.gz -P Multiple-Traits_Jeong_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/JeongC_30188897_GCST006731/TIBETN_IDprop_FM_160509.assoc.txt.gz -P Multiple-Traits_Jeong_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/JeongC_30188897_GCST006733/TIBETN_IS_160509.assoc.txt.gz -P Multiple-Traits_Jeong_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/JeongC_30188897_GCST006734/TIBETN_IS_FM_160509.assoc.txt.gz -P Multiple-Traits_Jeong_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/JeongC_30188897_GCST006735/TIBETN_ISprop_160509.assoc.txt.gz -P Multiple-Traits_Jeong_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/JeongC_30188897_GCST006736/TIBETN_ISprop_FM_160509.assoc.txt.gz -P Multiple-Traits_Jeong_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/JeongC_30188897_GCST006737/TIBETN_MC_160509.assoc.txt.gz -P Multiple-Traits_Jeong_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/JeongC_30188897_GCST006738/TIBETN_MC_FM_160509.assoc.txt.gz -P Multiple-Traits_Jeong_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/JeongC_30188897_GCST006739/TIBETN_MCprop_160509.assoc.txt.gz -P Multiple-Traits_Jeong_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/JeongC_30188897_GCST006740/TIBETN_MCprop_FM_160509.assoc.txt.gz -P Multiple-Traits_Jeong_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/JeongC_30188897_GCST006741/TIBETN_SB_160509.assoc.txt.gz -P Multiple-Traits_Jeong_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/JeongC_30188897_GCST006742/TIBETN_SB_FM_160509.assoc.txt.gz -P Multiple-Traits_Jeong_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/JeongC_30188897_GCST006743/TIBETN_SBprop_160509.assoc.txt.gz -P Multiple-Traits_Jeong_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/JeongC_30188897_GCST006744/TIBETN_SBprop_FM_160509.assoc.txt.gz -P Multiple-Traits_Jeong_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/JeongC_30188897_GCST006745/TIBETN_Sat_all_noHb_160509.assoc.txt.gz -P Multiple-Traits_Jeong_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/JeongC_30188897_GCST006746/TIBETN_Pulse_all_noHb_160509.assoc.txt.gz -P Multiple-Traits_Jeong_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/JeongC_30188897_GCST006747/TIBETN_OxHb_all_160509.assoc.txt.gz -P Multiple-Traits_Jeong_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/JeongC_30188897_GCST006748/TIBETN_dHb_all_160509.assoc.txt.gz -P Multiple-Traits_Jeong_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/JeongC_30188897_GCST006749/TIBETN_CD_160509.assoc.txt.gz -P Multiple-Traits_Jeong_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/JeongC_30188897_GCST006750/TIBETN_CD_FM_160509.assoc.txt.gz -P Multiple-Traits_Jeong_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/JeongC_30188897_GCST006751/TIBETN_CS_160509.assoc.txt.gz -P Multiple-Traits_Jeong_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/JeongC_30188897_GCST006752/TIBETN_CS_FM_160509.assoc.txt.gz -P Multiple-Traits_Jeong_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/JeongC_30188897_GCST006753/TIBETN_CDprop_160509.assoc.txt.gz -P Multiple-Traits_Jeong_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/JeongC_30188897_GCST006754/TIBETN_CDprop_FM_160509.assoc.txt.gz -P Multiple-Traits_Jeong_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/JeongC_30188897_GCST006755/TIBETN_CSprop_160509.assoc.txt.gz -P Multiple-Traits_Jeong_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/JeongC_30188897_GCST006756/TIBETN_CSprop_FM_160509.assoc.txt.gz -P Multiple-Traits_Jeong_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/JeongC_30188897_GCST006757/TIBETN_JD_160509.assoc.txt.gz -P Multiple-Traits_Jeong_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/JeongC_30188897_GCST006758/TIBETN_JD_FM_160509.assoc.txt.gz -P Multiple-Traits_Jeong_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/JeongC_30188897_GCST006759/TIBETN_JDprop_160509.assoc.txt.gz -P Multiple-Traits_Jeong_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/JeongC_30188897_GCST006760/TIBETN_JDprop_FM_160509.assoc.txt.gz -P Multiple-Traits_Jeong_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/JeongC_30188897_GCST006761/TIBETN_JS_160509.assoc.txt.gz -P Multiple-Traits_Jeong_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/JeongC_30188897_GCST006762/TIBETN_JS_FM_160509.assoc.txt.gz -P Multiple-Traits_Jeong_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/JeongC_30188897_GCST006763/TIBETN_JSprop_160509.assoc.txt.gz -P Multiple-Traits_Jeong_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/JeongC_30188897_GCST006764/TIBETN_JSprop_FM_160509.assoc.txt.gz -P Multiple-Traits_Jeong_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/JeongC_30188897_GCST006765/TIBETN_LB_160509.assoc.txt.gz -P Multiple-Traits_Jeong_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/JeongC_30188897_GCST006766/TIBETN_LB_FM_160509.assoc.txt.gz -P Multiple-Traits_Jeong_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/JeongC_30188897_GCST006767/TIBETN_LBprop_160509.assoc.txt.gz -P Multiple-Traits_Jeong_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/JeongC_30188897_GCST006768/TIBETN_LBprop_FM_160509.assoc.txt.gz -P Multiple-Traits_Jeong_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/JeongC_30188897_GCST006769/TIBETN_b1age_160509.assoc.txt.gz -P Multiple-Traits_Jeong_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/JeongC_30188897_GCST006770/TIBETN_b1age_FM_160509.assoc.txt.gz -P Multiple-Traits_Jeong_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/JeongC_30188897_GCST006771/TIBETN_npreg_160509.assoc.txt.gz -P Multiple-Traits_Jeong_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/JeongC_30188897_GCST006772/TIBETN_npreg_FM_160509.assoc.txt.gz -P Multiple-Traits_Jeong_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/JeongC_30188897_GCST006773/TIBETN_twins_160509.assoc.txt.gz -P Multiple-Traits_Jeong_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/JeongC_30188897_GCST006774/TIBETN_twins_FM_160509.assoc.txt.gz -P Multiple-Traits_Jeong_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/JeongC_30188897_GCST006775/TIBETN_lastpreg_160509.assoc.txt.gz -P Multiple-Traits_Jeong_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/JeongC_30188897_GCST006776/TIBETN_lastpreg_FM_160509.assoc.txt.gz -P Multiple-Traits_Jeong_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/JeongC_30188897_GCST006859/TIBETN_IDprop_160509.assoc.txt.gz -P Multiple-Traits_Jeong_2019

# https://www.ncbi.nlm.nih.gov/pubmed/30593698
# Genomics of body fat percentage may contribute to sex bias in anorexia nervosa.
# PMID:    30593698    PMCID:        PMC6751355	DOI:	    10.1002/ajmg.b.32709 
mkdir Body-Mass_Hubel_2018
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/HubelC_30593698_GCST007063/FFM_c_maf0.01_meta_pos.txt -P Body-Mass_Hubel_2018
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/HubelC_30593698_GCST007064/BFPC_h_maf0.01_meta_pos.txt -P Body-Mass_Hubel_2018

# https://www.ncbi.nlm.nih.gov/pubmed/30946739
# Genome-wide association study reveals sex-specific genetic architecture of facial attractiveness.
# PMID:    30946739    PMCID:        PMC6448826	DOI:	    10.1371/journal.pgen.1007973 
mkdir Facial-Attractiveness_Hu_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/HuB_30946739_GCST007818/README -P Facial-Attractiveness_Hu_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/HuB_30946739_GCST007818/Attractiveness_FC_AS_2018Dec.txt.gz -P Facial-Attractiveness_Hu_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/HuB_30946739_GCST007817/Attractiveness_MC_AS_2018Dec.txt.gz -P Facial-Attractiveness_Hu_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/HuB_30946739_GCST007820/Attractiveness_FC_FS_2018Dec.txt.gz -P Facial-Attractiveness_Hu_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/HuB_30946739_GCST007821/Attractiveness_FC_MS_2018Dec.txt.gz -P Facial-Attractiveness_Hu_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/HuB_30946739_GCST007822/Attractiveness_MC_FS_2018Dec.txt.gz -P Facial-Attractiveness_Hu_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/HuB_30946739_GCST007823/Attractiveness_MC_MS_2018Dec.txt.gz -P Facial-Attractiveness_Hu_2019

# https://www.ncbi.nlm.nih.gov/pubmed/31872073
# Genome-wide association analyses identify two susceptibility loci for pachychoroid disease central serous chorioretinopathy.
# PMID:    31872073    PMCID:        PMC6908630	DOI:	    10.1038/s42003-019-0712-z 
mkdir Central-Serous-Retinopathy_Hosoda_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/HosodaY_31872073_GCST009653/CSC_control_PC3.assoc.logistic -P Central-Serous-Retinopathy_Hosoda_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/HosodaY_31872073_GCST009653/Readme.txt -P Central-Serous-Retinopathy_Hosoda_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/HosodaY_31872073_GCST009653/Readme.txt.save -P Central-Serous-Retinopathy_Hosoda_2019

# https://www.ncbi.nlm.nih.gov/pubmed/31727947
# Improved power and precision with whole genome sequencing data in genome-wide association studies of inflammatory biomarkers.
# PMID:    31727947    PMCID:        PMC6856527	DOI:	    10.1038/s41598-019-53111-7 
mkdir Inflammatory-Biomarkers_Hoglund_2019
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/HoglundJ_31727947_GCST009522/ -P Inflammatory-Biomarkers_Hoglund_2019

# https://www.ncbi.nlm.nih.gov/pubmed/30108127
# A Large Multi-ethnic Genome-Wide Association Study of Adult Body Mass Index Identifies Novel Loci.
# PMID:    30108127    PMCID:        PMC6216593	DOI:	    10.1534/genetics.118.301479 
mkdir BMI_Hoffmann_2018
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/HoffmannTJ_30108127_GCST006368/BMI-GERA+GIANT-2018.tsv.gz -P BMI_Hoffmann_2018 
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/HoffmannTJ_29507422_GCST007143/GERA-TC.tsv.gz -P BMI_Hoffmann_2018 
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/HoffmannTJ_29507422_GCST007142/GERA-logTG.tsv.gz -P BMI_Hoffmann_2018 
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/HoffmannTJ_29507422_GCST007141/GERA-LDL.tsv.gz -P BMI_Hoffmann_2018 
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/HoffmannTJ_29507422_GCST007140/GERA-sqrtHDL.tsv.gz -P BMI_Hoffmann_2018 

# https://www.ncbi.nlm.nih.gov/pubmed/27841878
# Genome-wide association analyses using electronic health records identify new loci influencing blood pressure variation.
# PMID:    27841878    PMCID:        PMC5370207	DOI:	    10.1038/ng.3715 
mkdir Blood-Pressure_Hoffmann_2016
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/HoffmannTJ_27841878_GCST007098/gera-dbp.tsv.gz -P Blood-Pressure_Hoffmann_2016
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/HoffmannTJ_27841878_GCST007097/gera-pp.tsv.gz -P Blood-Pressure_Hoffmann_2016
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/HoffmannTJ_27841878_GCST007095/gera-sbp.tsv.gz -P Blood-Pressure_Hoffmann_2016
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/HoffmannTJ_27764096_GCST003763/GERA-EUR-ARHI.csv.gz -P Blood-Pressure_Hoffmann_2016

# https://www.ncbi.nlm.nih.gov/pubmed/31844048
# Genome-wide analysis identifies molecular systems and 149 genetic loci associated with income.
# PMID:    31844048    PMCID:        PMC6915786	DOI:	    10.1038/s41467-019-13585-5 
mkdir Socioeconomic-Stats_Hill_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/HillWD_31844048_GCST009524/HillWD_31844048_MTAG_household_Income.txt.gz -P Socioeconomic-Stats_Hill_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/HillWD_31844048_GCST009524/Read_Me.txt -P Socioeconomic-Stats_Hill_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/HillWD_31844048_GCST009523/HillWD_31844048_household_Income.txt.gz -P Socioeconomic-Stats_Hill_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/HillWD_30867560_GCST007710/HillWD_30867560_Anxiety_Tension_Special_Factor.txt.gz -P Socioeconomic-Stats_Hill_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/HillWD_30867560_GCST007709/HillWD_30867560_General_factor_of_Neuroticism.txt.gz -P Socioeconomic-Stats_Hill_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/HillWD_30867560_GCST007708/HillWD_30867560_Worry_Vulnerability_Special_Factor.txt.gz -P Socioeconomic-Stats_Hill_2019

# https://www.ncbi.nlm.nih.gov/pubmed/31320639
# Genome and epigenome wide studies of neurological protein biomarkers in the Lothian Birth Cohort 1936.
# PMID:    31320639    PMCID:        PMC6639385	DOI:	    10.1038/s41467-019-11177-x 
mkdir Blood-Protein-Biomarkers_Hillary_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/HillaryRF_31320639_GCST008478/DS_10283_3408.zip -P Blood-Protein-Biomarkers_Hillary_2019

# https://www.ncbi.nlm.nih.gov/pubmed/31575865
# Genome-wide association study reveals dynamic role of genetic variation in infant and early childhood growth. 
# PMID:    31575865    PMCID:        PMC6773698	DOI:	    10.1038/s41467-019-12308-0 
mkdir BMI-Childhood_Helgeland_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/HelgelandO_31575865_GCST009300/childhood_bmi_nat_comm_2019_8years.gz -P BMI-Childhood_Helgeland_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/HelgelandO_31575865_GCST009300/readme.txt -P BMI-Childhood_Helgeland_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/HelgelandO_31575865_GCST009299/childhood_bmi_nat_comm_2019_7years.gz -P BMI-Childhood_Helgeland_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/HelgelandO_31575865_GCST009298/childhood_bmi_nat_comm_2019_5years.gz -P BMI-Childhood_Helgeland_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/HelgelandO_31575865_GCST009297/childhood_bmi_nat_comm_2019_3years.gz -P BMI-Childhood_Helgeland_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/HelgelandO_31575865_GCST009296/childhood_bmi_nat_comm_2019_2years.gz -P BMI-Childhood_Helgeland_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/HelgelandO_31575865_GCST009295/childhood_bmi_nat_comm_2019_1.5years.gz -P BMI-Childhood_Helgeland_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/HelgelandO_31575865_GCST009294/childhood_bmi_nat_comm_2019_1year.gz -P BMI-Childhood_Helgeland_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/HelgelandO_31575865_GCST009293/childhood_bmi_nat_comm_2019_8months.gz -P BMI-Childhood_Helgeland_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/HelgelandO_31575865_GCST009291/childhood_bmi_nat_comm_2019_6months.gz -P BMI-Childhood_Helgeland_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/HelgelandO_31575865_GCST009290/childhood_bmi_nat_comm_2019_3months.gz -P BMI-Childhood_Helgeland_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/HelgelandO_31575865_GCST009288/childhood_bmi_nat_comm_2019_6weeks.gz -P BMI-Childhood_Helgeland_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/HelgelandO_31575865_GCST009282/childhood_bmi_nat_comm_2019_birth.gz -P BMI-Childhood_Helgeland_2019

# https://www.ncbi.nlm.nih.gov/pubmed/29513936
# An amino acid motif in HLA-DRβ1 distinguishes patients with uveitis in juvenile idiopathic arthritis.
# PMID:    29513936    DOI:        10.1002/art.40484 
mkdir Juvenile-Idiopathic-Arthritis_Haasnoot_2018
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/HaasnootAJW_29513936_GCST006126/jia.uveitis.hg18.merged.QC.mhc.IMPUTED.phase_indicator.AA_DRB1_11_32660115_D.assoc.dosage.gz -P Juvenile-Idiopathic-Arthritis_Haasnoot_2018
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/HaasnootAJW_29513936_GCST006126/jia.uveitis.hg18.merged.QC.mhc.IMPUTED.phase_indicator.AA_DRB1_11_32660115_S.assoc.dosage.gz -P Juvenile-Idiopathic-Arthritis_Haasnoot_2018
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/HaasnootAJW_29513936_GCST006126/jia.uveitis.hg18.merged.QC.mhc.IMPUTED.phase_indicator.assoc.dosage.gz -P Juvenile-Idiopathic-Arthritis_Haasnoot_2018
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/HaasnootAJW_29513936_GCST006126/jia.uveitis.hg18.merged.QC.mhc.IMPUTED.phase_indicator.females.assoc.dosage.gz -P Juvenile-Idiopathic-Arthritis_Haasnoot_2018
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/HaasnootAJW_29513936_GCST006126/jia.uveitis.hg18.merged.QC.mhc.IMPUTED.phase_indicator.males.assoc.dosage.gz -P Juvenile-Idiopathic-Arthritis_Haasnoot_2018
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/HaasnootAJW_29513936_GCST006126/jia.uviitis.hg19.phase1.QC.gwas.results.imputed.jia.uviitis.filtered.v2.txt.gz -P Juvenile-Idiopathic-Arthritis_Haasnoot_2018
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/HaasnootAJW_29513936_GCST006126/jia.uviitis.hg19.phase2.QC.gwas.results.imputed.jia.uviitis.filtered.v2.txt.gz -P Juvenile-Idiopathic-Arthritis_Haasnoot_2018
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/HaasnootAJW_29513936_GCST006126/readme.docx -P Juvenile-Idiopathic-Arthritis_Haasnoot_2018

# https://www.ncbi.nlm.nih.gov/pubmed/31675503
# Uganda Genome Resource Enables Insights into Population History and Genomic Discovery in Africa.
# PMID:    31675503    DOI:        10.1016/j.cell.2019.10.004 
mkdir Multiple-Traits_Gurdasani_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/GurdasaniD_31675503_GCST009041/eos_countannotated.txt.gz -P Multiple-Traits_Gurdasani_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/GurdasaniD_31675503_GCST009042/cholesterolannotated.txt.gz -P Multiple-Traits_Gurdasani_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/GurdasaniD_31675503_GCST009043/lowdlipoannotated.txt.gz -P Multiple-Traits_Gurdasani_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/GurdasaniD_31675503_GCST009044/highdlipoannotated.txt.gz -P Multiple-Traits_Gurdasani_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/GurdasaniD_31675503_GCST009045/triglyceridesannotated.txt.gz -P Multiple-Traits_Gurdasani_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/GurdasaniD_31675503_GCST009046/aspartateannotated.txt.gz -P Multiple-Traits_Gurdasani_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/GurdasaniD_31675503_GCST009047/alanineannotated.txt.gz -P Multiple-Traits_Gurdasani_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/GurdasaniD_31675503_GCST009048/albuminannotated.txt.gz -P Multiple-Traits_Gurdasani_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/GurdasaniD_31675503_GCST009049/alkalineannotated.txt.gz -P Multiple-Traits_Gurdasani_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/GurdasaniD_31675503_GCST009050/gammaannotated.txt.gz -P Multiple-Traits_Gurdasani_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/GurdasaniD_31675503_GCST009051/bilirubinannotated.txt.gz -P Multiple-Traits_Gurdasani_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/GurdasaniD_31675503_GCST009052/DBPannotated.txt.gz -P Multiple-Traits_Gurdasani_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/GurdasaniD_31675503_GCST009053/SBPannotated.txt.gz -P Multiple-Traits_Gurdasani_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/GurdasaniD_31675503_GCST009054/hba1c2annotated.txt.gz -P Multiple-Traits_Gurdasani_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/GurdasaniD_31675503_GCST009055/heightannotated.txt.gz -P Multiple-Traits_Gurdasani_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/GurdasaniD_31675503_GCST009056/weightannotated.txt.gz -P Multiple-Traits_Gurdasani_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/GurdasaniD_31675503_GCST009057/bmiannotated.txt.gz -P Multiple-Traits_Gurdasani_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/GurdasaniD_31675503_GCST009058/waist_circumannotated.txt.gz -P Multiple-Traits_Gurdasani_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/GurdasaniD_31675503_GCST009059/hip_circumannotated.txt.gz -P Multiple-Traits_Gurdasani_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/GurdasaniD_31675503_GCST009060/waist_hip_ratioannotated.txt.gz -P Multiple-Traits_Gurdasani_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/GurdasaniD_31675503_GCST009061/wbcannotated.txt.gz -P Multiple-Traits_Gurdasani_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/GurdasaniD_31675503_GCST009062/rbcannotated.txt.gz -P Multiple-Traits_Gurdasani_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/GurdasaniD_31675503_GCST009065/mcvannotated.txt.gz -P Multiple-Traits_Gurdasani_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/GurdasaniD_31675503_GCST009063/mchannotated.txt.gz -P Multiple-Traits_Gurdasani_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/GurdasaniD_31675503_GCST009064/mchcannotated.txt.gz -P Multiple-Traits_Gurdasani_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/GurdasaniD_31675503_GCST009032/rbc_dstr_widthannotated.txt.gz -P Multiple-Traits_Gurdasani_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/GurdasaniD_31675503_GCST009033/hctannotated.txt.gz -P Multiple-Traits_Gurdasani_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/GurdasaniD_31675503_GCST009034/hgbannotated.txt -P Multiple-Traits_Gurdasani_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/GurdasaniD_31675503_GCST009036/pltannotated.txt.gz -P Multiple-Traits_Gurdasani_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/GurdasaniD_31675503_GCST009037/lymp_countannotated.txt.gz -P Multiple-Traits_Gurdasani_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/GurdasaniD_31675503_GCST009038/mono_countannotated.txt.gz -P Multiple-Traits_Gurdasani_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/GurdasaniD_31675503_GCST009040/neut_countannotated.txt.gz -P Multiple-Traits_Gurdasani_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/GurdasaniD_31675503_GCST009039/baso_countannotated.txt.gz -P Multiple-Traits_Gurdasani_2019

# https://www.ncbi.nlm.nih.gov/pubmed/31015462
# Sex-specific and pleiotropic effects underlying kidney function identified from GWAS meta-analysis.
# PMID:    31015462    PMCID:        PMC6478837	DOI:	    10.1038/s41467-019-09861-z 
mkdir Glomerular-Filtration-Rate_Graham_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/GrahamSE_31015462_GCST007876/2018_Graham_et_al_eGFR_meta.tbl -P Glomerular-Filtration-Rate_Graham_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/GrahamSE_31015462_GCST007876/README -P Glomerular-Filtration-Rate_Graham_2019

# https://www.ncbi.nlm.nih.gov/pubmed/30807572
# Genetic association and transcriptome integration identify contributing genes and tissues at cystic fibrosis modifier loci.
# PMID:    30807572    PMCID:        PMC6407791	DOI:	    10.1371/journal.pgen.1008007 
mkdir Cystic-Fibrosis-Associated-Meconium-Ileum_Gong_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/GongJ_30807572_GCST007367/GongJ_prePMID_Meconium_Ileus.tsv.gz -P Cystic-Fibrosis-Associated-Meconium-Ileum_Gong_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/GongJ_30807572_GCST007367/GongJ_prePMID_Meconium_Ileus.tsv.gz.tbi -P Cystic-Fibrosis-Associated-Meconium-Ileum_Gong_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/GongJ_30807572_GCST007367/README.txt -P Cystic-Fibrosis-Associated-Meconium-Ileum_Gong_2019

# https://www.ncbi.nlm.nih.gov/pubmed/28749367
# Genome-wide Association Study of Susceptibility to Particulate Matter-Associated QT Prolongation.
# PMID:    28749367    PMCID:        PMC5714283	DOI:	    10.1289/EHP347 
mkdir QT-Interval-By-Particulate-Matter_Gondalia_2017
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/GondaliaR_28749367_GCST004642/Fixed_Effects_METAL_Results_Part1.zip -P QT-Interval-By-Particulate-Matter_Gondalia_2017
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/GondaliaR_28749367_GCST004642/Fixed_Effects_METAL_Results_Part2.zip -P QT-Interval-By-Particulate-Matter_Gondalia_2017
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/GondaliaR_28749367_GCST004642/Fixed_Effects_METAL_Results_Part3.zip -P QT-Interval-By-Particulate-Matter_Gondalia_2017
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/GondaliaR_28749367_GCST004642/Fixed_Effects_METAL_Results_Part4.zip -P QT-Interval-By-Particulate-Matter_Gondalia_2017
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/GondaliaR_28749367_GCST004642/Fixed_Effects_METAL_Results_Part5.zip -P QT-Interval-By-Particulate-Matter_Gondalia_2017

# https://www.ncbi.nlm.nih.gov/pubmed/31670792
# Association Between Polygenic Risk Score and Risk of Myopia.
# PMID:    31670792    PMCID:        PMC6824229	DOI:	    10.1001/jamaophthalmol.2019.4421 
mkdir Refractive-Error_Ghorbani_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/GhorbaniMojarradN_31670792_GCST009521/GhorbaniMojarradN_31670792_AutorefractionMeasuredRefractiveError.txt.gz -P Refractive-Error_Ghorbani_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/GhorbaniMojarradN_31670792_GCST009521/GhorbaniMojarradN_31670792_AutorefractionMeasuredRefractiveError_readme.txt -P Refractive-Error_Ghorbani_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/GhorbaniMojarradN_31670792_GCST009520/GhorbaniMojarradN_31670792_AOSWInferredRefractiveError.txt.gz -P Refractive-Error_Ghorbani_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/GhorbaniMojarradN_31670792_GCST009520/GhorbaniMojarradN_31670792_AOSWInferredRefractiveError_readme.txt -P Refractive-Error_Ghorbani_2019

# https://www.ncbi.nlm.nih.gov/pubmed/31688885
# Association of Genetic Variants With Primary Open-Angle Glaucoma Among Individuals With African Ancestry.
# PMID:    31688885    PMCID:        PMC6865235	    [Available on 2020-05-05]	    DOI:	        10.1001/jama.2019.16161 
mkdir Glaucoma_GGLAD_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/GeneticsofGlaucomainPeopleofAfricanDescent(GGLAD)Consortium_31688885_GCST009245/poag_africa_4_collection_logistic.meta.sorted_N4.tsv.zip -P Glaucoma_GGLAD_2019

# https://www.ncbi.nlm.nih.gov/pubmed/23377640
# Common genetic variation and antidepressant efficacy in major depressive disorder: a meta-analysis of three genome-wide pharmacogenetic studies.
# PMID:    23377640    DOI:        10.1176/appi.ajp.2012.12020237 
mkdir Depression-Unipolar-Drug-Efficacy_GENDEP_2013
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/GENDEPInvestigators_23377640_GCST001850/PhaCoGe_2013.zip -P Depression-Unipolar-Drug-Efficacy_GENDEP_2013

# https://www.ncbi.nlm.nih.gov/pubmed/31417607
# The Genetic Architecture of Chronic Mountain Sickness in Peru.
# PMID:    31417607    PMCID:        PMC6682665	DOI:	    10.3389/fgene.2019.00690 
mkdir Chronic-Mountain-Sickness_Gazal_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/GazalS_31417607_GCST008708/README.txt -P Chronic-Mountain-Sickness_Gazal_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/GazalS_31417607_GCST008708/TableS1.txt.zip -P Chronic-Mountain-Sickness_Gazal_2019

# https://www.ncbi.nlm.nih.gov/pubmed/31636271
# A comprehensive study of metabolite genetics reveals strong pleiotropy and heterogeneity across time and context.
# PMID:    31636271    PMCID:        PMC6803661	DOI:	    10.1038/s41467-019-12703-7 
mkdir Serum-Metabolites_Gallois_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/GalloisA_31636271_GCST009242/readme.txt -P Serum-Metabolites_Gallois_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/GalloisA_31636271_GCST009242/results_STD.txt.gz -P Serum-Metabolites_Gallois_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/GalloisA_31636271_GCST009240/results_CMS.txt -P Serum-Metabolites_Gallois_2019

# https://www.ncbi.nlm.nih.gov/pubmed/31649266
# Genome-wide association and epidemiological analyses reveal common genetic origins between uterine leiomyomata and endometriosis.
# PMID:    31649266    PMCID:        PMC6813337	DOI:	    10.1038/s41467-019-12536-4 
mkdir Uterine-Fibroids_Gallagher_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/GallagherCS_31649266_GCST009158/GallagherCS_31649266_UterineFibroids.stats.gz -P Uterine-Fibroids_Gallagher_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/GallagherCS_31649266_GCST009158/README_GallagherCS_31649266_UterineFibroids -P Uterine-Fibroids_Gallagher_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/GallagherCS_31649266_GCST009157/GallagherCS_31649266_HeavyBleeding.stats.gz -P Uterine-Fibroids_Gallagher_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/GallagherCS_31649266_GCST009157/README_GallagherCS_31649266_HeavyBleeding -P Uterine-Fibroids_Gallagher_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/GallagherCS_31649266_GCST009156/GallagherCS_31649266_UterineFibroidsLimitedByHeavyBleeding.stats.gz -P Uterine-Fibroids_Gallagher_2019
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/GallagherCS_31649266_GCST009156/README_GallagherCS_31649266_UterineFibroidsLimitedByHeavyBleeding -P Uterine-Fibroids_Gallagher_2019

# https://www.ncbi.nlm.nih.gov/pubmed/28369058
# Mapping of 79 loci for 83 plasma protein biomarkers in cardiovascular disease
# PMID:    28369058    PMCID:        PMC5393901	DOI:	    10.1371/journal.pgen.1006706 
mkdir Blood-Protein-Levels_Folkersen_2017
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/FolkersenL_28369058_GCST009731 -P Blood-Protein-Levels_Folkersen_2017

# https://www.ncbi.nlm.nih.gov/pubmed/30003307
# Genome-wide association study of coronary artery disease among individuals with diabetes: the UK Biobank.
# PMID:    30003307    PMCID:        PMC6133153	DOI:	    10.1007/s00125-018-4686-z 
mkdir Coronary-Artery-Disease-With-Diabetes_Fall_2018
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/FallT_30003307_GCST006405/ -P Coronary-Artery-Disease-With-Diabetes_Fall_2018

# https://www.ncbi.nlm.nih.gov/pubmed/30281099
# Genome-wide meta-analysis identifies BARX1 and EML4-MTA3 as new loci associated with infantile hypertrophic pyloric stenosis.
# PMID:    30281099    PMCID:        PMC6322072	DOI:	    10.1093/hmg/ddy347 
mkdir Infantile-Hypertrophic-Pyloric-Stenosis_Fadista_2018
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/FadistaJ_30281099_GCST006705 -P Infantile-Hypertrophic-Pyloric-Stenosis_Fadista_2018

# https://www.ncbi.nlm.nih.gov/pubmed/29379196
# Genome-wide association study of Hirschsprung disease detects a novel low-frequency variant at the RET locus.
# PMID:    29379196    PMCID:        PMC5891499	DOI:	    10.1038/s41431-017-0053-7 
mkdir Hirschsprung-Disease_Fadista_2018
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/FadistaJ_29379196_GCST005289 -P Hirschsprung-Disease_Fadista_2018

# https://www.ncbi.nlm.nih.gov/pubmed/31358974
# New alcohol-related genes suggest shared genetic mechanisms with neuropsychiatric disorders.
# PMID:    31358974    DOI:        10.1038/s41562-019-0653-z 
mkdir Alcohol-Use_Evangelou_2019
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/EvangelouE_31358974_GCST008757 -P Alcohol-Use_Evangelou_2019

# https://www.ncbi.nlm.nih.gov/pubmed/30224653
# Genetic analysis of over 1 million people identifies 535 new loci associated with blood pressure traits.
# PMID:    30224653    PMCID:        PMC6284793	DOI:	    10.1038/s41588-018-0205-x 
mkdir Blood-Pressure_Evangelou_2018
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/EvangelouE_30224653_GCST006624 -P Blood-Pressure_Evangelou_2018
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/EvangelouE_30224653_GCST006630 -P Blood-Pressure_Evangelou_2018
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/EvangelouE_30224653_GCST006629 -P Blood-Pressure_Evangelou_2018

# https://www.ncbi.nlm.nih.gov/pubmed/25147954
# Strong effects of genetic and lifestyle factors on biomarker variation and use of personalized cutoffs.
# PMID:    25147954    PMCID:        PMC4143927	DOI:	    10.1038/ncomms5684 
mkdir Biomarker-Levels_Enroth_2014
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/EnrothS_25147954_GCST009561 -P Biomarker-Levels_Enroth_2014
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/EnrothS_25147954_GCST009562 -P Biomarker-Levels_Enroth_2014
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/EnrothS_25147954_GCST009563 -P Biomarker-Levels_Enroth_2014
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/EnrothS_25147954_GCST009564/ -P Biomarker-Levels_Enroth_2014
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/EnrothS_25147954_GCST009565/ -P Biomarker-Levels_Enroth_2014
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/EnrothS_25147954_GCST009566/ -P Biomarker-Levels_Enroth_2014
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/EnrothS_25147954_GCST009567/ -P Biomarker-Levels_Enroth_2014
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/EnrothS_25147954_GCST009568/ -P Biomarker-Levels_Enroth_2014
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/EnrothS_25147954_GCST009569/ -P Biomarker-Levels_Enroth_2014
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/EnrothS_25147954_GCST009570/ -P Biomarker-Levels_Enroth_2014
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/EnrothS_25147954_GCST009571/ -P Biomarker-Levels_Enroth_2014
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/EnrothS_25147954_GCST009572/ -P Biomarker-Levels_Enroth_2014
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/EnrothS_25147954_GCST009573/ -P Biomarker-Levels_Enroth_2014
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/EnrothS_25147954_GCST009558/ -P Biomarker-Levels_Enroth_2014

# https://www.ncbi.nlm.nih.gov/pubmed/30305740
# Genome-wide association studies of brain imaging phenotypes in UK Biobank.
# PMID:    30305740    PMCID:        PMC6786974	DOI:	    10.1038/s41586-018-0571-7 
mkdir Neuroimaging-Measurements_Elliott_2018
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/ElliottLT_30305740_GCST006777/ -P Neuroimaging-Measurements_Elliott_2018

# https://www.ncbi.nlm.nih.gov/pubmed/26068415
# Genome-wide association study identifies novel genetic variants contributing to variation in blood metabolite levels.
# PMID:    26068415    PMCID:        PMC4745136	DOI:	    10.1038/ncomms8208 
mkdir Blood-Metabolites_Draisma_2015
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/DraismaHHM_26068415_GCST002961 -P Blood-Metabolites_Draisma_2015

# https://www.ncbi.nlm.nih.gov/pubmed/30531941
# GWAS identifies 14 loci for device-measured physical activity and sleep duration.
# PMID:    30531941    PMCID:        PMC6288145	DOI:	    10.1038/s41467-018-07743-4 
mkdir Device-Measured-Activity_Doherty_2018
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/DohertyA_30531941_GCST006914 -P Device-Measured-Activity_Doherty_2018
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/DohertyA_30531941_GCST006913 -P Device-Measured-Activity_Doherty_2018
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/DohertyA_30531941_GCST007110 -P Device-Measured-Activity_Doherty_2018
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/DohertyA_30531941_GCST006915 -P Device-Measured-Activity_Doherty_2018
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/DohertyA_30531941_GCST006912 -P Device-Measured-Activity_Doherty_2018

# https://www.ncbi.nlm.nih.gov/pubmed/30980028
# The molecular genetics of hand preference revisited.
# PMID:    30980028    PMCID:        PMC6461639	DOI:	    10.1038/s41598-019-42515-0 
mkdir Handedness_de-Kovel_2019
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/deKovelCGF_30980028_GCST007592 -P Handedness_de-Kovel_2019
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/deKovelCGF_30980028_GCST007594 -P Handedness_de-Kovel_2019
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/deKovelCGF_30980028_GCST007593 -P Handedness_de-Kovel_2019

# https://www.ncbi.nlm.nih.gov/pubmed/30976013
# Exome array analysis of rare and low frequency variants in amyotrophic lateral sclerosis.
# PMID:    30976013    PMCID:        PMC6459905	DOI:	    10.1038/s41598-019-42091-3 
mkdir Amyotrophic-Lateral-Sclerosis-Exome_Dekker_2019
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/DekkerAM_30976013_GCST008978 -P Amyotrophic-Lateral-Sclerosis-Exome_Dekker_2019

# https://www.ncbi.nlm.nih.gov/pubmed/29970889
# Elucidating the genetic basis of social interaction and isolation.
# PMID:    29970889    PMCID:        PMC6030100	DOI:	    10.1038/s41467-018-04930-1 
mkdir Loneliness_Day_2018
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/DayFR_29970889_GCST006923 -P Loneliness_Day_2018
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/DayFR_29970889_GCST006920 -P Loneliness_Day_2018
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/DayFR_29970889_GCST006921 -P Loneliness_Day_2018
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/DayFR_29970889_GCST006922 -P Loneliness_Day_2018
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/DayFR_29970889_GCST006924 -P Loneliness_Day_2018

# https://www.ncbi.nlm.nih.gov/pubmed/30566500
# Large-scale genome-wide meta-analysis of polycystic ovary syndrome suggests shared genetic architecture for different diagnosis criteria.
# PMID:    30566500    PMCID:        PMC6300389	DOI:	    10.1371/journal.pgen.1007813 
mkdir Polycystic-Ovary-Syndrome_Day_2018
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/DayF_30566500_GCST007089 -P Polycystic-Ovary-Syndrome_Day_2018

# https://www.ncbi.nlm.nih.gov/pubmed/30787307
# Association study in African-admixed populations across the Americas recapitulates asthma risk loci in non-African populations
# PMID:    30787307    PMCID:        PMC6382865	DOI:	    10.1038/s41467-019-08469-7 
mkdir Asthma_Daya_2019
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/DayaM_30787307_GCST007266 -P Asthma_Daya_2019

# https://www.ncbi.nlm.nih.gov/pubmed/31959993
# Multitrait analysis of glaucoma identifies new risk loci and enables polygenic prediction of disease susceptibility and progression.
# PMID:    31959993    DOI:        10.1038/s41588-019-0556-y 
mkdir Glaucoma_Craig_2020
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/CraigJE_31959993_GCST009722 -P Glaucoma_Craig_2020

# https://www.ncbi.nlm.nih.gov/pubmed/29520040
# Biological annotation of genetic loci associated with intelligence in a meta-analysis of 87,740 individuals.
# PMID:    29520040    PMCID:        PMC6330082	DOI:	    10.1038/s41380-018-0040-6 
mkdir Intelligence_Coleman_2018
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/ColemanJRI_29520040_GCST007044 -P Intelligence_Coleman_2018

# https://www.ncbi.nlm.nih.gov/pubmed/31049640
# Genome-wide association study of type 2 diabetes in Africa.
# PMID:    31049640    PMCID:        PMC6560001	DOI:	    10.1007/s00125-019-4880-7 
mkdir Type-2-Diabetes_Chen_2019
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/ChenJ_31049640_GCST008114 -P Type-2-Diabetes_Chen_2019

# https://www.ncbi.nlm.nih.gov/pubmed/29695241
# Novel risk genes identified in a genome-wide association study for coronary artery disease in patients with type 1 diabetes.
# PMID:    29695241    PMCID:        PMC5916834	DOI:	    10.1186/s12933-018-0705-0 
mkdir Coronary-Artery-Disease-In-Type-1-Diabetes_Charmet_2018
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/CharmetR_29695241_GCST006281 -P Coronary-Artery-Disease-In-Type-1-Diabetes_Charmet_2018

# https://www.ncbi.nlm.nih.gov/pubmed/31628463
# Associations with metabolites in Chinese suggest new metabolic roles in Alzheimer's and Parkinson's diseases.
# PMID:    31628463    DOI:        10.1093/hmg/ddz246 
mkdir Metabolite-Levels_Chai_2019
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/ChaiJF_31628463_GCST009698 -P Metabolite-Levels_Chai_2019

# https://www.ncbi.nlm.nih.gov/pubmed/31630189
# A genome-wide association study implicates multiple mechanisms influencing raised urinary albumin-creatinine ratio.
# PMID:    31630189    DOI:        10.1093/hmg/ddz243
mkdir Urinary-Albumin-To-Creatinine-Ratio_Casanova_2019
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/CasanovaF_31630189_GCST009640/ -P Urinary-Albumin-To-Creatinine-Ratio_Casanova_2019

# https://www.ncbi.nlm.nih.gov/pubmed/31887566
# Genetic effects on planum temporale asymmetry and their limited relevance to neurodevelopmental disorders, intelligence or educational attainment.
# PMID:    31887566    DOI:        10.1016/j.cortex.2019.11.006 
mkdir Superior-Temporal-Gyrus-Volume_Carrion-Castillo_2019
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/Carrion-CastilloA_31887566_GCST009460 -P Superior-Temporal-Gyrus-Volume_Carrion-Castillo_2019
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/Carrion-CastilloA_31887566_GCST009458 -P Superior-Temporal-Gyrus-Volume_Carrion-Castillo_2019
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/Carrion-CastilloA_31887566_GCST009459 -P Superior-Temporal-Gyrus-Volume_Carrion-Castillo_2019

# https://www.ncbi.nlm.nih.gov/pubmed/31798171
# Multi-trait genome-wide association study identifies new loci associated with optic disc parameters.
# PMID:    31798171    PMCID:        PMC6881308	DOI:	    10.1038/s42003-019-0634-9 
mkdir Optic-Disc-Measurements_Bonnemaijer_2019
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/BonnemaijerPWM_31798171_GCST009404 -P Optic-Disc-Measurements_Bonnemaijer_2019
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/BonnemaijerPWM_31798171_GCST009411 -P Optic-Disc-Measurements_Bonnemaijer_2019
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/BonnemaijerPWM_31798171_GCST009412 -P Optic-Disc-Measurements_Bonnemaijer_2019
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/BonnemaijerPWM_31798171_GCST009413 -P Optic-Disc-Measurements_Bonnemaijer_2019
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/BonnemaijerPWM_31798171_GCST009414 -P Optic-Disc-Measurements_Bonnemaijer_2019

# https://www.ncbi.nlm.nih.gov/pubmed/29626450
# Female-specific Association Between Variants on Chromosome 9 and Self-reported Diagnosis of Irritable Bowel Syndrome.
# PMID:    29626450    PMCID:        PMC6035117	DOI:	    10.1053/j.gastro.2018.03.064 
mkdir Irritable-Bowel-Syndrome_Bonfiglio_2018
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/BonfiglioF_29626450_GCST006304 -P Irritable-Bowel-Syndrome_Bonfiglio_2018

# https://www.ncbi.nlm.nih.gov/pubmed/31755958
# Genetic modifiers of risk and age at onset in GBA associated Parkinson's disease and Lewy body dementia.
# PMID:    31755958    PMCID:        PMC6935749	DOI:	    10.1093/brain/awz350 
mkdir Parkinsons-GBA-Associated_Blauwendraat_2019
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/BlauwendraatC_31755958_GCST009373 -P Parkinsons-GBA-Associated_Blauwendraat_2019
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/BlauwendraatC_31755958_GCST009374 -P Parkinsons-GBA-Associated_Blauwendraat_2019

# https://www.ncbi.nlm.nih.gov/pubmed/30957308
# Parkinson's disease age at onset genome-wide association study: Defining heritability, genetic loci, and alpha-synuclein mechanisms.
# PMID:    30957308    PMCID:        PMC6579628	    [Available on 2020-06-01]	    DOI:	        10.1002/mds.27659 
mkdir Parkinsons-Age-At-Onset_Blauwendraat_2019
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/BlauwendraatC_30957308_GCST007780 -P Parkinsons-Age-At-Onset_Blauwendraat_2019

# https://www.ncbi.nlm.nih.gov/pubmed/30643256
# Multivariate genome-wide analyses of the well-being spectrum
# PMID:    30643256    DOI:        10.1038/s41588-018-0320-8 
mkdir Wellbeing_Baselmans_2019
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/BaselmansBML_30643256_GCST007337 -P Wellbeing_Baselmans_2019
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/BaselmansBML_30643256_GCST007338 -P Wellbeing_Baselmans_2019
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/BaselmansBML_30643256_GCST007339 -P Wellbeing_Baselmans_2019
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/BaselmansBML_30643256_GCST007340 -P Wellbeing_Baselmans_2019
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/BaselmansBML_30643256_GCST007341 -P Wellbeing_Baselmans_2019

# https://www.ncbi.nlm.nih.gov/pubmed/31554410
# Genome-Wide Analysis of Left Ventricular Image-Derived Phenotypes Identifies Fourteen Loci Associated with Cardiac Morphogenesis and Heart Failure Development.
# PMID:    31554410    PMCID:        PMC6791514	DOI:	    10.1161/CIRCULATIONAHA.119.041161 
mkdir Left-Ventricular-Image-Phenotypes_Aung_2019
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/AungN_31554410_GCST009397/ -P Left-Ventricular-Image-Phenotypes_Aung_2019
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/AungN_31554410_GCST009396/ -P Left-Ventricular-Image-Phenotypes_Aung_2019
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/AungN_31554410_GCST009395/ -P Left-Ventricular-Image-Phenotypes_Aung_2019
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/AungN_31554410_GCST009394 -P Left-Ventricular-Image-Phenotypes_Aung_2019
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/AungN_31554410_GCST009393 -P Left-Ventricular-Image-Phenotypes_Aung_2019

# https://www.ncbi.nlm.nih.gov/pubmed/30552173
# Genetic variation at the glycosaminoglycan metabolism pathway contributes to the risk of psoriatic arthritis but not psoriasis.
# PMID:    30552173    DOI:        10.1136/annrheumdis-2018-214158 
mkdir Psoriatic-Arthritis_Aterido_2018
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/AteridoA_30552173_GCST007043 -P Psoriatic-Arthritis_Aterido_2018

# https://www.ncbi.nlm.nih.gov/pubmed/30571770
# Genome-wide interaction study of a proxy for stress-sensitivity and its prediction of major depressive disorder.
# PMID:    30571770    PMCID:        PMC6301766	DOI:	    10.1371/journal.pone.0209160 
mkdir Stress-Sensitivity_Arnau-Soler_2018
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/Arnau-SolerA_30571770_GCST008506 -P Stress-Sensitivity_Arnau-Soler_2018
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/Arnau-SolerA_30571770_GCST008507 -P Stress-Sensitivity_Arnau-Soler_2018
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/Arnau-SolerA_30571770_GCST008508 -P Stress-Sensitivity_Arnau-Soler_2018

# https://www.ncbi.nlm.nih.gov/pubmed/29404214
# Gene-based association study for lipid traits in diverse cohorts implicates BACE1 and SIDT2 regulation in triglyceride levels.
# PMID:    29404214    PMCID:        PMC5793713	DOI:	    10.7717/peerj.4314 
mkdir Blood-Lipids_Andaleon_2018
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/AndaleonA_29404214_GCST006305 -P Blood-Lipids_Andaleon_2018
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/AndaleonA_29404214_GCST006306 -P Blood-Lipids_Andaleon_2018
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/AndaleonA_29404214_GCST006307 -P Blood-Lipids_Andaleon_2018
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/AndaleonA_29404214_GCST006308 -P Blood-Lipids_Andaleon_2018

# https://www.ncbi.nlm.nih.gov/pubmed/29594489
# Host genetic susceptibility to Clostridium difficile infections in patients undergoing autologous stem cell transplantation: a genome-wide association study.
# PMID:    29594489    DOI:        10.1007/s00520-018-4173-6 
mkdir Clostridium-Difficile-Infection-In-Myeloma_Apewokin_2018
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/ApewokinS_29594489_GCST005686 -P Clostridium-Difficile-Infection-In-Myeloma_Apewokin_2018

# https://www.ncbi.nlm.nih.gov/pubmed/30087447
# Association of modifiers and other genetic factors explain Marfan syndrome clinical variability.
# PMID:    30087447    PMCID:        PMC6244213	DOI:	    10.1038/s41431-018-0164-9 
mkdir Aortic-Problems-In-Marfan-Syndrome_Aubart_2018
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/AubartM_30087447_GCST006957 -P Aortic-Problems-In-Marfan-Syndrome_Aubart_2018

# https://www.ncbi.nlm.nih.gov/pubmed/19430480
# Genome-wide association study and meta-analysis find that over 40 loci affect risk of type 1 diabetes.
# PMID:    19430480    PMCID:        PMC2889014	DOI:	    10.1038/ng.381 
mkdir Type-1-Diabetes_Barrett_2009
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/BarrettJC_19430480_GCST000392 -P Type-1-Diabetes_Barrett_2009

# https://www.ncbi.nlm.nih.gov/pubmed/23358156
# Childhood intelligence is heritable, highly polygenic and associated with FNBP1L.
# PMID:    23358156    PMCID:        PMC3935975	DOI:	    10.1038/mp.2012.184 
mkdir Intelligence-Childhood_Benyamin_2013
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/BenyaminB_23358156_GCST001837 -P Intelligence-Childhood_Benyamin_2013

# https://www.ncbi.nlm.nih.gov/pubmed/28931804
# Cross-ethnic meta-analysis identifies association of the GPX3-TNIP1 locus with amyotrophic lateral sclerosis.
# PMID:    28931804    PMCID:        PMC5606989	DOI:	    10.1038/s41467-017-00471-1 
mkdir Amyotrophic-Lateral-Sclerosis-Sporadic_Benyamin_2017
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/BenyaminB_28931804_GCST004901 -P Amyotrophic-Lateral-Sclerosis-Sporadic_Benyamin_2017
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/BenyaminB_28931804_GCST008472 -P Amyotrophic-Lateral-Sclerosis-Sporadic_Benyamin_2017

# https://www.ncbi.nlm.nih.gov/pubmed/29358691
# Re-analysis of public genetic data reveals a rare X-chromosomal variant associated with type 2 diabetes.
# PMID:    29358691    PMCID:        PMC5778074	DOI:	    10.1038/s41467-017-02380-9 
mkdir Type-2-Diabetes_Bonas-Guarch_2018
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/Bonas-GuarchS_29358691_GCST005413 -P Type-2-Diabetes_Bonas-Guarch_2018

# https://www.ncbi.nlm.nih.gov/pubmed/30583798
# GWAS Identifies Risk Locus for Erectile Dysfunction and Implicates Hypothalamic Neurobiology and Diabetes in Etiology.
# PMID:    30583798    PMCID:        PMC6323625	DOI:	    10.1016/j.ajhg.2018.11.004 
mkdir Erectile-Dysfunction_Bovijn_2018
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/BovijnJ_30583798_GCST006956 -P Erectile-Dysfunction_Bovijn_2018

# https://www.ncbi.nlm.nih.gov/pubmed/28924153
# Common variants in MMP20 at 11q22.2 predispose to 11q deletion and neuroblastoma risk.
# PMID:    28924153    PMCID:        PMC5603517	DOI:	    10.1038/s41467-017-00408-8 
mkdir Neuroblastoma_Chang_2017
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/ChangX_28924153_GCST004883 -P Neuroblastoma_Chang_2017
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/ChangX_28924153_GCST004884 -P Neuroblastoma_Chang_2017
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/ChangX_28924153_GCST004885 -P Neuroblastoma_Chang_2017

# https://www.ncbi.nlm.nih.gov/pubmed/30102696
# A genome-wide association study identifies a susceptibility locus for biliary atresia on 2p16.1 within the gene EFEMP1.
# PMID:    30102696    PMCID:        PMC6107291	DOI:	    10.1371/journal.pgen.1007532 
mkdir Biliary-Atresia_Chen_2018
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/ChenY_30102696_GCST006390 -P Biliary-Atresia_Chen_2018

# https://www.ncbi.nlm.nih.gov/pubmed/29891935
# A multiethnic genome-wide association study of primary open-angle glaucoma identifies novel risk loci.
# PMID:    29891935    PMCID:        PMC5995837	DOI:	    10.1038/s41467-018-04555-4 
mkdir Glaucoma_Choquet_2018 
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/ChoquetH_29891935_GCST006065 -P Glaucoma_Choquet_2018

# https://www.ncbi.nlm.nih.gov/pubmed/22922229
# Seven newly identified loci for autoimmune thyroid disease.
# PMID:    22922229    PMCID:        PMC3490518	DOI:	    10.1093/hmg/dds357 
mkdir Autoimmune-Thyroid-Disease_Cooper_2012
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/CooperJD_22922229_GCST005524 -P Autoimmune-Thyroid-Disease_Cooper_2012

# https://www.ncbi.nlm.nih.gov/pubmed/26394269
# International genome-wide meta-analysis identifies new primary biliary cirrhosis risk loci and targetable pathogenic pathways
# PMID:    26394269    PMCID:        PMC4580981	DOI:	    10.1038/ncomms9019 
mkdir Primary-Biliary-Cirrhosis_Cordell_2015
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/CordellHJ_26394269_GCST003129 -P Primary-Biliary-Cirrhosis_Cordell_2015

# https://www.ncbi.nlm.nih.gov/pubmed/23749187
# Identification of multiple risk variants for ankylosing spondylitis through high-density genotyping of immune-related loci.
# PMID:    23749187    PMCID:        PMC3757343	DOI:	    10.1038/ng.2667 
mkdir Ankylosing-Spondylitis_Cortes_2013 
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/CortesA_23749187_GCST005529 -P Ankylosing-Spondylitis_Cortes_2013

# https://www.ncbi.nlm.nih.gov/pubmed/26417704
# Genome-wide association meta-analysis identifies five modifier loci of lung disease severity in cystic fibrosis.
# PMID:    26417704    PMCID:        PMC4589222	DOI:	    10.1038/ncomms9382 
mkdir Lung-Disease-In-Cystic-Fibrosis_Corvol_2015
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/CorvolH_26417704_GCST003143 -P Lung-Disease-In-Cystic-Fibrosis_Corvol_2015

# https://www.ncbi.nlm.nih.gov/pubmed/28067908
# Genome-wide association study implicates immune activation of multiple integrin genes in inflammatory bowel disease.
# PMID:    28067908    PMCID:        PMC5289481	DOI:	    10.1038/ng.3760 
mkdir Inflammatory-Bowel-Disease_de-Lange_2017
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/deLangeKM_28067908_GCST004132 -P Inflammatory-Bowel-Disease_de-Lange_2017
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/deLangeKM_28067908_GCST004133 -P Inflammatory-Bowel-Disease_de-Lange_2017
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/deLangeKM_28067908_GCST004131 -P Inflammatory-Bowel-Disease_de-Lange_2017

# https://www.ncbi.nlm.nih.gov/pubmed/20190752
# Multiple common variants for celiac disease influencing immune gene expression.
# PMID:    20190752    PMCID:        PMC2847618	DOI:	    10.1038/ng.543 
mkdir Celiac-Disease_Dubois_2010
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/DuboisPC_20190752_GCST000612 -P Celiac-Disease_Dubois_2010

# https://www.ncbi.nlm.nih.gov/pubmed/23143596
# High-density genetic mapping identifies new susceptibility loci for rheumatoid arthritis.
# PMID:    23143596    PMCID:        PMC3605761	DOI:	    10.1038/ng.2462 
mkdir Rheumatoid-Arthritis_Eyre_2012
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/EyreS_23143596_GCST005569 -P Rheumatoid-Arthritis_Eyre_2012

# https://www.ncbi.nlm.nih.gov/pubmed/23459209
# ImmunoChip study implicates antigen presentation to T cells in narcolepsy.
# PMID:    23459209    PMCID:        PMC3573113	DOI:	    10.1371/journal.pgen.1003270 
mkdir Narcolepsy_Faraco_2013
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/FaracoJ_23459209_GCST005522 -P Narcolepsy_Faraco_2013

# https://www.ncbi.nlm.nih.gov/pubmed/29293525
# Integrative network analysis highlights biological processes underlying GLP-1 stimulated insulin secretion: A DIRECT study.
# PMID:    29293525    PMCID:        PMC5749727	DOI:	    10.1371/journal.pone.0189886 
mkdir GLP1-Stimulated-Insulin-Response_Gudmundsdottir_2018
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/GudmundsdottirV_29293525_GCST005353 -P GLP1-Stimulated-Insulin-Response_Gudmundsdottir_2018

# https://www.ncbi.nlm.nih.gov/pubmed/23603761
# Dense genotyping of immune-related disease regions identifies 14 new susceptibility loci for juvenile idiopathic arthritis.
# PMID:    23603761    PMCID:        PMC3673707	DOI:	    10.1038/ng.2614 
mkdir Idiopathic-Arthritis-Juvenile_Hinks_2013
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/HinksA_23603761_GCST005528 -P Idiopathic-Arthritis-Juvenile_Hinks_2013

# https://www.ncbi.nlm.nih.gov/pubmed/29855537
# Japanese GWAS identifies variants for bust-size, dysmenorrhea, and menstrual fever that are eQTLs for relevant protein-coding or long non-coding RNAs.
# PMID:    29855537    PMCID:        PMC5981393	DOI:	    10.1038/s41598-018-25065-9 
mkdir Womens-Health-Traits_Hirata_2018 
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/HirataT_29855537_GCST006656/ -P Womens-Health-Traits_Hirata_2018
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/HirataT_29855537_GCST006636/ -P Womens-Health-Traits_Hirata_2018
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/HirataT_29855537_GCST006637/ -P Womens-Health-Traits_Hirata_2018
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/HirataT_29855537_GCST006638/ -P Womens-Health-Traits_Hirata_2018
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/HirataT_29855537_GCST006639/ -P Womens-Health-Traits_Hirata_2018
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/HirataT_29855537_GCST006640/ -P Womens-Health-Traits_Hirata_2018
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/HirataT_29855537_GCST006641/ -P Womens-Health-Traits_Hirata_2018
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/HirataT_29855537_GCST006642/ -P Womens-Health-Traits_Hirata_2018
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/HirataT_29855537_GCST006643/ -P Womens-Health-Traits_Hirata_2018
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/HirataT_29855537_GCST006644/ -P Womens-Health-Traits_Hirata_2018
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/HirataT_29855537_GCST006645/ -P Womens-Health-Traits_Hirata_2018
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/HirataT_29855537_GCST006646/ -P Womens-Health-Traits_Hirata_2018
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/HirataT_29855537_GCST006647/ -P Womens-Health-Traits_Hirata_2018
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/HirataT_29855537_GCST006648/ -P Womens-Health-Traits_Hirata_2018
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/HirataT_29855537_GCST006649/ -P Womens-Health-Traits_Hirata_2018
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/HirataT_29855537_GCST006650/ -P Womens-Health-Traits_Hirata_2018
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/HirataT_29855537_GCST006651/ -P Womens-Health-Traits_Hirata_2018
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/HirataT_29855537_GCST006652/ -P Womens-Health-Traits_Hirata_2018
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/HirataT_29855537_GCST006653/ -P Womens-Health-Traits_Hirata_2018
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/HirataT_29855537_GCST006657/ -P Womens-Health-Traits_Hirata_2018
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/HirataT_29855537_GCST006654/ -P Womens-Health-Traits_Hirata_2018
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/HirataT_29855537_GCST006655/ -P Womens-Health-Traits_Hirata_2018

# https://www.ncbi.nlm.nih.gov/pubmed/27329760
# Genome-wide association study of 40,000 individuals identifies two novel loci associated with bipolar disorder.
# PMID:    27329760    PMCID:        PMC5179929	DOI:	    10.1093/hmg/ddw181 
mkdir Bipolar-Disorder_Hou_2016
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/HouL_27329760_GCST003724 -P Bipolar-Disorder_Hou_2016

# https://www.ncbi.nlm.nih.gov/pubmed/30067744
# Investigating the shared genetics of non-syndromic cleft lip/palate and facial morphology.
# PMID:    30067744    PMCID:        PMC6089455	DOI:	    10.1371/journal.pgen.1007501 
mkdir Cleft-Palate_Howe_2018
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/HoweLJ_30067744_GCST006407 -P Cleft-Palate_Howe_2018

# https://www.ncbi.nlm.nih.gov/pubmed/29760442
# Cross-ancestry genome-wide association analysis of corneal thickness strengthens link between complex and Mendelian eye diseases.
# PMID:    29760442    PMCID:        PMC5951816	DOI:	    10.1038/s41467-018-03646-6 
mkdir Central-Corneal-Thickness_Iglesias_2018
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/IglesiasAI_29760442_GCST006366 Central-Corneal-Thickness_Iglesias_2018
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/IglesiasAI_29760442_GCST006367 Central-Corneal-Thickness_Iglesias_2018

# https://www.ncbi.nlm.nih.gov/pubmed/30012571
# Strong Association of the HLA-DR/DQ Locus with Childhood Steroid-Sensitive Nephrotic Syndrome in the Japanese Population
# PMID:    30012571    PMCID:        PMC6065083	DOI:	    10.1681/ASN.2017080859 
mkdir Nephrotic-Syndrome_Jia_2018
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/JiaX_30012571_GCST006246 -P Nephrotic-Syndrome_Jia_2018

# https://www.ncbi.nlm.nih.gov/pubmed/29343764
# Genome-wide association study in 79,366 European-ancestry individuals informs the genetic architecture of 25-hydroxyvitamin D levels.
# PMID:    29343764    PMCID:        PMC5772647	DOI:	    10.1038/s41467-017-02662-2 
mkdir Vitamin-D_Jiang_2018
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/JiangX_29343764_GCST005367 -P Vitamin-D_Jiang_2018

# https://www.ncbi.nlm.nih.gov/pubmed/25082827
# A genome-wide association study identifies a novel locus at 6q22.1 associated with ulcerative colitis.
# PMID:    25082827    DOI:        10.1093/hmg/ddu398 
mkdir Ulcerative-Colitis_Julia_2014
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/JuliaA_25082827_GCST002548 -P Ulcerative-Colitis_Julia_2014

# https://www.ncbi.nlm.nih.gov/pubmed/29848360
# Genome-wide association study meta-analysis identifies five new loci for systemic lupus erythematosus.
# PMID:    29848360    PMCID:        PMC5977506	DOI:	    10.1186/s13075-018-1604-1 
mkdir Lupus_Julia_2018
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/JuliaA_29848360_GCST005831 -P Lupus_Julia_2018

# https://www.ncbi.nlm.nih.gov/pubmed/27064256
# Genome-wide association study identifies five new susceptibility loci for primary angle closure glaucoma.
# PMID:    27064256    DOI:        10.1038/ng.3540 
mkdir Glaucoma-Primary-Angle-Closure_Khor_2016
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/KhorCC_27064256_GCST003467 -P Glaucoma-Primary-Angle-Closure_Khor_2016

# https://www.ncbi.nlm.nih.gov/pubmed/28806749
# Defining the genetic susceptibility to cervical neoplasia-A genome-wide association study.
# PMID:    28806749    PMCID:        PMC5570502	DOI:	    10.1371/journal.pgen.1006866 
mkdir Cervical-Cancer_Leo_2017
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/LeoPJ_28806749_GCST004833 -P Cervical-Cancer_Leo_2017

# https://www.ncbi.nlm.nih.gov/pubmed/27618448
# Meta-analysis identifies common and rare variants influencing blood pressure and overlapping with metabolic trait loci.
# PMID:    27618448    PMCID:        PMC5320952	DOI:	    10.1038/ng.3660 
mkdir Blood-Pressure_Liu_2016
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/LiuC_27618448_GCST006228 -P Blood-Pressure_Liu_2016
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/LiuC_27618448_GCST006231 -P Blood-Pressure_Liu_2016
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/LiuC_27618448_GCST006227 -P Blood-Pressure_Liu_2016
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/LiuC_27618448_GCST006230 -P Blood-Pressure_Liu_2016
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/LiuC_27618448_GCST006229 -P Blood-Pressure_Liu_2016

# https://www.ncbi.nlm.nih.gov/pubmed/22961000
# Dense fine-mapping study identifies new susceptibility loci for primary biliary cirrhosis.
# PMID:    22961000    PMCID:        PMC3459817	DOI:	    10.1038/ng.2395 
mkdir Primary-Biliary-Cirrhosis_Liu_2012
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/LiuJZ_22961000_GCST005581 -P Primary-Biliary-Cirrhosis_Liu_2012

# https://www.ncbi.nlm.nih.gov/pubmed/29531354
# Multiancestry genome-wide association study of 520,000 subjects identifies 32 loci associated with stroke and stroke subtypes.
# PMID:    29531354    PMCID:        PMC5968830	DOI:	    10.1038/s41588-018-0058-3 
mkdir Stroke_Malik_2018
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/MalikR_29531354_GCST005838/ -P Stroke_Malik_2018
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/MalikR_29531354_GCST006906/ -P Stroke_Malik_2018
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/MalikR_29531354_GCST006907/ -P Stroke_Malik_2018
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/MalikR_29531354_GCST006908/ -P Stroke_Malik_2018
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/MalikR_29531354_GCST005840/ -P Stroke_Malik_2018
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/MalikR_29531354_GCST005841/ -P Stroke_Malik_2018
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/MalikR_29531354_GCST005842/ -P Stroke_Malik_2018
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/MalikR_29531354_GCST005843/ -P Stroke_Malik_2018
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/MalikR_29531354_GCST006909/ -P Stroke_Malik_2018
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/MalikR_29531354_GCST006910/ -P Stroke_Malik_2018

# https://www.ncbi.nlm.nih.gov/pubmed/29059683
# Association analysis identifies 65 new breast cancer risk loci.
# PMID:    29059683    PMCID:        PMC5798588	DOI:	    10.1038/nature24284 
mkdir Breast-Cancer_Michailidou_2017
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/MichailidouK_29059683_GCST004988 -P Breast-Cancer_Michailidou_2017

# https://www.ncbi.nlm.nih.gov/pubmed/25751625
# Genome-wide association analysis of more than 120,000 individuals identifies 15 new susceptibility loci for breast cancer
# PMID:    25751625    PMCID:        PMC4549775	DOI:	    10.1038/ng.3242 
mkdir Breast-Cancer_Michailidou_2015
wget -r  -P ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/MichailidouK_25751625_GCST007236 Breast-Cancer_Michailidou_2015

# https://www.ncbi.nlm.nih.gov/pubmed/23000144
# Genome-wide association study identifies TNFSF15 and POU2AF1 as susceptibility loci for primary biliary cirrhosis in the Japanese population.
# PMID:    23000144    PMCID:        PMC3484650	DOI:	    10.1016/j.ajhg.2012.08.010 
mkdir Biliary-Liver-Cirrhosis_Nakamura_2012
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/NakamuraM_23000144_GCST001685 -P Biliary-Liver-Cirrhosis_Nakamura_2012

# https://www.ncbi.nlm.nih.gov/pubmed/29566793
# Genome-wide Analyses Identify KIF5A as a Novel ALS Gene.
# PMID:    29566793    PMCID:        PMC5867896	DOI:	    10.1016/j.neuron.2018.02.027 
mkdir Amyotrophic-Lateral-Sclerosis_Nicolas_2018 
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/NicolasA_29566793_GCST005647 -P Amyotrophic-Lateral-Sclerosis_Nicolas_2018

# https://www.ncbi.nlm.nih.gov/pubmed/28613276
# Genetic loci associated with heart rate variability and their effects on cardiac disease risk.
# PMID:    28613276    PMCID:        PMC5474732	DOI:	    10.1038/ncomms15805 
mkdir Heart-Rate-Variability_Noite_2017
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/NolteIM_28613276_GCST004734 -P Heart-Rate-Variability_Noite_2017
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/NolteIM_28613276_GCST004733 -P Heart-Rate-Variability_Noite_2017
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/NolteIM_28613276_GCST004732 -P Heart-Rate-Variability_Noite_2017

# https://www.ncbi.nlm.nih.gov/pubmed/30206230
# GWAS for Interleukin-1β levels in gingival crevicular fluid identifies IL37 variants in periodontal inflammation.
# PMID:    30206230    PMCID:        PMC6134146	DOI:	    10.1038/s41467-018-05940-9 
mkdir Interleukin-1-Beta_Offenbacher_2018
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/OffenbacherS_30206230_GCST007542 -P Interleukin-1-Beta_Offenbacher_2018

# https://www.ncbi.nlm.nih.gov/pubmed/26962152
# Genome-wide association study of biologically informed periodontal complex traits offers novel insights into the genetic basis of periodontal disease.
# PMID:    26962152    PMCID:        PMC5062586	DOI:	    10.1093/hmg/ddw069 
mkdir Periodontal-Disease_Offenbacher_2016
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/OffenbacherS_26962152_GCST003484/ -P Periodontal-Disease_Offenbacher_2016
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/OffenbacherS_26962152_GCST008439/ -P Periodontal-Disease_Offenbacher_2016
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/OffenbacherS_26962152_GCST008440/ -P Periodontal-Disease_Offenbacher_2016
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/OffenbacherS_26962152_GCST008441/ -P Periodontal-Disease_Offenbacher_2016
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/OffenbacherS_26962152_GCST008442/ -P Periodontal-Disease_Offenbacher_2016
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/OffenbacherS_26962152_GCST008443/ -P Periodontal-Disease_Offenbacher_2016

# https://www.ncbi.nlm.nih.gov/pubmed/25751624
# Fine mapping of type 1 diabetes susceptibility loci and evidence for colocalization of causal variants with lymphoid gene enhancers.
# PMID:    25751624    PMCID:        PMC4380767	DOI:	    10.1038/ng.3245 
mkdir Type-1-Diabetes_Onengut-Gumuscu_2015
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/Onengut-GumuscuS_25751624_GCST005536 -P Type-1-Diabetes_Onengut-Gumuscu_2015

# https://www.ncbi.nlm.nih.gov/pubmed/28346442
# Identification of 12 new susceptibility loci for different histotypes of epithelial ovarian cancer.
# PMID:    28346442    PMCID:        PMC5612337	DOI:	    10.1038/ng.3826 
mkdir Ovarian-Cancer_Phelan_2017
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/PhelanCM_28346442_GCST004481 -P Ovarian-Cancer_Phelan_2017
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/PhelanCM_28346442_GCST004462 -P Ovarian-Cancer_Phelan_2017
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/PhelanCM_28346442_GCST004417 -P Ovarian-Cancer_Phelan_2017
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/PhelanCM_28346442_GCST004418 -P Ovarian-Cancer_Phelan_2017
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/PhelanCM_28346442_GCST004419 -P Ovarian-Cancer_Phelan_2017
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/PhelanCM_28346442_GCST004478 -P Ovarian-Cancer_Phelan_2017
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/PhelanCM_28346442_GCST004480 -P Ovarian-Cancer_Phelan_2017
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/PhelanCM_28346442_GCST004461 -P Ovarian-Cancer_Phelan_2017
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/PhelanCM_28346442_GCST004415 -P Ovarian-Cancer_Phelan_2017

# https://www.ncbi.nlm.nih.gov/pubmed/26651848
# High-Density Genetic Mapping Identifies New Susceptibility Variants in Sarcoidosis Phenotypes and Shows Genomic-driven Phenotypic Differences.
# PMID:    26651848    PMCID:        PMC4872654	DOI:	    10.1164/rccm.201507-1372OC 
mkdir Sarcoidosis_Rivera_2016
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/RiveraNV_26651848_GCST005543 -P Sarcoidosis_Rivera_2016
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/RiveraNV_26651848_GCST005540 -P Sarcoidosis_Rivera_2016

# https://www.ncbi.nlm.nih.gov/pubmed/21833088
# Genetic risk and a primary role for cell-mediated immune mechanisms in multiple sclerosis.
# PMID:    21833088    PMCID:        PMC3182531	DOI:	    10.1038/nature10251 
mkdir Multiple-Sclerosis_Sawcer_2011
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/SawcerS_21833088_GCST001198 -P Multiple-Sclerosis_Sawcer_2011

# https://www.ncbi.nlm.nih.gov/pubmed/17463246
# Genome-wide association analysis identifies loci for type 2 diabetes and triglyceride levels.
# PMID:    17463246    DOI:        10.1126/science.1142358 
mkdir Type-2-Diabetes_Saxena_2007
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/SaxenaR_17463246_GCST000028 -P Type-2-Diabetes_Saxena_2007

# https://www.ncbi.nlm.nih.gov/pubmed/30053915
# Human genetic variants and age are the strongest predictors of humoral immune responses to common pathogens and vaccines. 
# PMID:    30053915    PMCID:        PMC6063007	DOI:	    10.1186/s13073-018-0568-8 
mkdir Humoral-Immune-Response_Scepanovic_2018
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/ScepanovicP_30053915_GCST006331 -P Humoral-Immune-Response_Scepanovic_2018
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/ScepanovicP_30053915_GCST006332 -P Humoral-Immune-Response_Scepanovic_2018
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/ScepanovicP_30053915_GCST006333 -P Humoral-Immune-Response_Scepanovic_2018
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/ScepanovicP_30053915_GCST006330 -P Humoral-Immune-Response_Scepanovic_2018
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/ScepanovicP_30053915_GCST006334 -P Humoral-Immune-Response_Scepanovic_2018
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/ScepanovicP_30053915_GCST006335 -P Humoral-Immune-Response_Scepanovic_2018
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/ScepanovicP_30053915_GCST006336 -P Humoral-Immune-Response_Scepanovic_2018
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/ScepanovicP_30053915_GCST006337 -P Humoral-Immune-Response_Scepanovic_2018
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/ScepanovicP_30053915_GCST006338 -P Humoral-Immune-Response_Scepanovic_2018
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/ScepanovicP_30053915_GCST006339 -P Humoral-Immune-Response_Scepanovic_2018
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/ScepanovicP_30053915_GCST006340 -P Humoral-Immune-Response_Scepanovic_2018
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/ScepanovicP_30053915_GCST006341 -P Humoral-Immune-Response_Scepanovic_2018
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/ScepanovicP_30053915_GCST006342 -P Humoral-Immune-Response_Scepanovic_2018
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/ScepanovicP_30053915_GCST006356 -P Humoral-Immune-Response_Scepanovic_2018
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/ScepanovicP_30053915_GCST006343 -P Humoral-Immune-Response_Scepanovic_2018
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/ScepanovicP_30053915_GCST006357 -P Humoral-Immune-Response_Scepanovic_2018
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/ScepanovicP_30053915_GCST006359 -P Humoral-Immune-Response_Scepanovic_2018
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/ScepanovicP_30053915_GCST006360 -P Humoral-Immune-Response_Scepanovic_2018
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/ScepanovicP_30053915_GCST006358 -P Humoral-Immune-Response_Scepanovic_2018
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/ScepanovicP_30053915_GCST006344 -P Humoral-Immune-Response_Scepanovic_2018
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/ScepanovicP_30053915_GCST006361 -P Humoral-Immune-Response_Scepanovic_2018
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/ScepanovicP_30053915_GCST006362 -P Humoral-Immune-Response_Scepanovic_2018
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/ScepanovicP_30053915_GCST006345 -P Humoral-Immune-Response_Scepanovic_2018
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/ScepanovicP_30053915_GCST006346 -P Humoral-Immune-Response_Scepanovic_2018
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/ScepanovicP_30053915_GCST006347 -P Humoral-Immune-Response_Scepanovic_2018
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/ScepanovicP_30053915_GCST006348 -P Humoral-Immune-Response_Scepanovic_2018
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/ScepanovicP_30053915_GCST006363 -P Humoral-Immune-Response_Scepanovic_2018
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/ScepanovicP_30053915_GCST006349 -P Humoral-Immune-Response_Scepanovic_2018
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/ScepanovicP_30053915_GCST006350 -P Humoral-Immune-Response_Scepanovic_2018
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/ScepanovicP_30053915_GCST006351 -P Humoral-Immune-Response_Scepanovic_2018
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/ScepanovicP_30053915_GCST006352 -P Humoral-Immune-Response_Scepanovic_2018
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/ScepanovicP_30053915_GCST006353 -P Humoral-Immune-Response_Scepanovic_2018
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/ScepanovicP_30053915_GCST006354 -P Humoral-Immune-Response_Scepanovic_2018
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/ScepanovicP_30053915_GCST006355 -P Humoral-Immune-Response_Scepanovic_2018

# https://www.ncbi.nlm.nih.gov/pubmed/29892016
# Association analyses of more than 140,000 men identify 63 new prostate cancer susceptibility loci.
# PMID:    29892016    PMCID:        PMC6568012	DOI:	    10.1038/s41588-018-0142-8 
mkdir Prostate-Cancer_Schumacher_2018
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/SchumacherFR_29892016_GCST006085 -P Prostate-Cancer_Schumacher_2018

# https://www.ncbi.nlm.nih.gov/pubmed/28878392
# Multivariate discovery and replication of five novel loci associated with Immunoglobulin G N-glycosylation.
# PMID:    28878392    PMCID:        PMC5587582	DOI:	    10.1038/s41467-017-00453-3 
mkdir IgG-Glycosylation_Shen_2017
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/ShenX_28878392_GCST004930 -P IgG-Glycosylation_Shen_2017
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/ShenX_28878392_GCST004931 -P IgG-Glycosylation_Shen_2017
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/ShenX_28878392_GCST004932 -P IgG-Glycosylation_Shen_2017
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/ShenX_28878392_GCST004929 -P IgG-Glycosylation_Shen_2017
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/ShenX_28878392_GCST004928 -P IgG-Glycosylation_Shen_2017
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/ShenX_28878392_GCST004927 -P IgG-Glycosylation_Shen_2017
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/ShenX_28878392_GCST004924 -P IgG-Glycosylation_Shen_2017
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/ShenX_28878392_GCST004926 -P IgG-Glycosylation_Shen_2017
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/ShenX_28878392_GCST004925 -P IgG-Glycosylation_Shen_2017

# https://www.ncbi.nlm.nih.gov/pubmed/30804560
# New genetic signals for lung function highlight pathways and chronic obstructive pulmonary disease associations across multiple ancestries.
# PMID:    30804560    PMCID:        PMC6397078	DOI:	    10.1038/s41588-018-0321-7 
mkdir Chronic-Obstructive-Pulmonary-Disease_Shrine_2019
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/ShrineN_30804560_GCST007429 -P Chronic-Obstructive-Pulmonary-Disease_Shrine_2019
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/ShrineN_30804560_GCST007432 -P Chronic-Obstructive-Pulmonary-Disease_Shrine_2019
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/ShrineN_30804560_GCST007431 -P Chronic-Obstructive-Pulmonary-Disease_Shrine_2019
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/ShrineN_30804560_GCST007430 -P Chronic-Obstructive-Pulmonary-Disease_Shrine_2019

# https://www.ncbi.nlm.nih.gov/pubmed/28073927
# New insights into the genetics of primary open-angle glaucoma based on meta-analyses of intraocular pressure and optic disc characteristics.
# PMID:    28073927    PMCID:        PMC5968632	DOI:	    10.1093/hmg/ddw399 
mkdir Glaucoma-Measurements_Springelkamp_2017
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/SpringelkampH_28073927_GCST004137 -P Glaucoma-Measurements_Springelkamp_2017
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/SpringelkampH_28073927_GCST004075 -P Glaucoma-Measurements_Springelkamp_2017
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/SpringelkampH_28073927_GCST004076 -P Glaucoma-Measurements_Springelkamp_2017
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/SpringelkampH_28073927_GCST004074 -P Glaucoma-Measurements_Springelkamp_2017

# https://www.ncbi.nlm.nih.gov/pubmed/29212778
# Identification of 64 Novel Genetic Loci Provides an Expanded View on the Genetic Architecture of Coronary Artery Disease.
# PMID:    29212778    PMCID:        PMC5805277	DOI:	    10.1161/CIRCRESAHA.117.312086 
mkdir Coronary-Artery-Disease_van-der-Harst_2017
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/vanderHarstP_29212778_GCST005194 -P Coronary-Artery-Disease_van-der-Harst_2017
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/vanderHarstP_29212778_GCST005195 -P Coronary-Artery-Disease_van-der-Harst_2017

# https://www.ncbi.nlm.nih.gov/pubmed/29497042
# Genetic study links components of the autonomous nervous system to heart-rate profile during exercise
# PMID:    29497042    PMCID:       PMC5832790
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/VerweijN_29497042_GCST005845 -P Heart-Rate-Response-to-Exercise_Verweij_2018
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/VerweijN_29497042_GCST005850 -P Heart-Rate-Response-to-Exercise_Verweij_2018
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/VerweijN_29497042_GCST005849 -P Heart-Rate-Response-to-Exercise_Verweij_2018
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/VerweijN_29497042_GCST005848 -P Heart-Rate-Response-to-Exercise_Verweij_2018
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/VerweijN_29497042_GCST005846 -P Heart-Rate-Response-to-Exercise_Verweij_2018
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/VerweijN_29497042_GCST005847 -P Heart-Rate-Response-to-Exercise_Verweij_2018

# https://www.ncbi.nlm.nih.gov/pubmed/30837465
# Assessing the causal association of glycine with risk of cardio-metabolic diseases.
# PMID:    30837465    PMCID:        PMC6400990	DOI:	    10.1038/s41467-019-08936-1 
mkdir Glycine-Levels_Wittemans_2019
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/WittemansLBL_30837465_GCST007638 -P Glycine-Levels_Wittemans_2019

# https://www.ncbi.nlm.nih.gov/pubmed/?term=Genetic+analyses+of+diverse+populations+improves+discovery+for+complex+traits.
# Genetic analyses of diverse populations improves discovery for complex traits. 
# PMID:    31217584    PMCID:        PMC6785182	    [Available on 2020-06-19]	    DOI:	        10.1038/s41586-019-1310-4 
mkdir Multiple-Traits_Wojcik_2019
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/WojcikGL_31217584_GCST008025 -P Multiple-Traits_Wojcik_2019
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/WojcikGL_31217584_GCST008026 -P Multiple-Traits_Wojcik_2019
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/WojcikGL_31217584_GCST008027 -P Multiple-Traits_Wojcik_2019
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/WojcikGL_31217584_GCST008028 -P Multiple-Traits_Wojcik_2019
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/WojcikGL_31217584_GCST008029 -P Multiple-Traits_Wojcik_2019
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/WojcikGL_31217584_GCST008030 -P Multiple-Traits_Wojcik_2019
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/WojcikGL_31217584_GCST008031 -P Multiple-Traits_Wojcik_2019
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/WojcikGL_31217584_GCST008032 -P Multiple-Traits_Wojcik_2019
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/WojcikGL_31217584_GCST008033 -P Multiple-Traits_Wojcik_2019
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/WojcikGL_31217584_GCST008034 -P Multiple-Traits_Wojcik_2019
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/WojcikGL_31217584_GCST008035 -P Multiple-Traits_Wojcik_2019
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/WojcikGL_31217584_GCST008036 -P Multiple-Traits_Wojcik_2019
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/WojcikGL_31217584_GCST008037 -P Multiple-Traits_Wojcik_2019
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/WojcikGL_31217584_GCST008038 -P Multiple-Traits_Wojcik_2019
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/WojcikGL_31217584_GCST008039 -P Multiple-Traits_Wojcik_2019
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/WojcikGL_31217584_GCST008042 -P Multiple-Traits_Wojcik_2019
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/WojcikGL_31217584_GCST008043 -P Multiple-Traits_Wojcik_2019
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/WojcikGL_31217584_GCST008044 -P Multiple-Traits_Wojcik_2019
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/WojcikGL_31217584_GCST008045 -P Multiple-Traits_Wojcik_2019
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/WojcikGL_31217584_GCST008046 -P Multiple-Traits_Wojcik_2019
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/WojcikGL_31217584_GCST008048 -P Multiple-Traits_Wojcik_2019
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/WojcikGL_31217584_GCST008049 -P Multiple-Traits_Wojcik_2019
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/WojcikGL_31217584_GCST008050 -P Multiple-Traits_Wojcik_2019
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/WojcikGL_31217584_GCST008051 -P Multiple-Traits_Wojcik_2019
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/WojcikGL_31217584_GCST008052 -P Multiple-Traits_Wojcik_2019
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/WojcikGL_31217584_GCST008053 -P Multiple-Traits_Wojcik_2019
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/WojcikGL_31217584_GCST008054 -P Multiple-Traits_Wojcik_2019
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/WojcikGL_31217584_GCST008055 -P Multiple-Traits_Wojcik_2019

# https://www.ncbi.nlm.nih.gov/pubmed/22763110
# Identification of new susceptibility loci for osteoarthritis (arcOGEN): a genome-wide association study.
# NOTE: I realize the name spelling here is different than the 2018 study presumably
# by the same first author, but I want to be consistent with PubMed here even though this
# is probably an error.
# PMID:    22763110    PMCID:        PMC3443899	DOI:	    10.1016/S0140-6736(12)60681-3 
mkdir Osteoarthritis_Zeggini_2012
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/ZegginiE_22763110_GCST001592 -P Zeggini_Osteoarthritis_2012

# https://www.ncbi.nlm.nih.gov/pubmed/29559693
# Genome-wide analyses using UK Biobank data provide insights into the genetic architecture of osteoarthritis.
# PMID:    29559693    PMCID:        PMC5896734	DOI:	    10.1038/s41588-018-0079-y 
mkdir Osteoarthritis_Zengini_2018
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/ZenginiE_29559693_GCST005811 -P Zengini_Osteoarthritis_2018
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/ZenginiE_29559693_GCST005810 -P Zengini_Osteoarthritis_2018
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/ZenginiE_29559693_GCST005814 -P Zengini_Osteoarthritis_2018
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/ZenginiE_29559693_GCST005813 -P Zengini_Osteoarthritis_2018
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/ZenginiE_29559693_GCST005812 -P Zengini_Osteoarthritis_2018

# https://www.ncbi.nlm.nih.gov/pubmed/28459102
# The Novel ASIC2 Locus is Associated with Severe Gingival Inflammation.
# PMID:    28459102    PMCID:        PMC5409514	DOI:	    10.1177/2380084416645290 
mkdir Gingival-Bleeding_Zhang_2016
wget -r -P ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/ZhangS_28459102_GCST004198 Gingival-Bleeding_Zhang_2016

# https://www.ncbi.nlm.nih.gov/pubmed/30287856
# Genome-wide association study identifies two risk loci for tuberculosis in Han Chinese.
# PMID:    30287856    PMCID:        PMC6172286	DOI:	    10.1038/s41467-018-06539-w 
mkdir Tuberculosis_Zheng_2018
wget -r ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/ZhengR_30287856_GCST006619 -P Tuberculosis_Zheng_2018


#############################################
# Requiring manual download
#############################################

# All PGC phenotypes
# https://www.med.unc.edu/pgc/results-and-downloads

# All iPSYCH phenotypes
# https://ipsych.au.dk/downloads/

# Parkinsons disease and other cognitive phenotypes 
# https://pdgenetics.shinyapps.io/pdprogmetagwasbrowser/

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

############## Japanese Biobank Traits ##########################

# https://www.ncbi.nlm.nih.gov/pubmed/29403010
# Genetic analysis of quantitative traits in the Japanese population links cell types to complex human diseases
# Kanai et al. 2018
mkdir QTLs-Japanese_Kanai_2018
# http://jenger.riken.jp/result

# https://www.biorxiv.org/content/10.1101/795948v1?rss=1
# Large scale genome-wide association study in a Japanese population identified 45 novel susceptibility loci for 22 diseases
# Ishigaki et al. 2019
mkdir Multi-Trait_Ishigaki_2019
# http://jenger.riken.jp/result

# https://www.ncbi.nlm.nih.gov/pubmed/29773799
# Elucidating the genetic architecture of reproductive ageing in the Japanese population.
# PMID: 29773799 PMCID: PMC5958096	DOI:	    10.1038/s41467-018-04398-z 
mkdir Womens-Reproductive-Aging_Horikoshi_2018
# http://jenger.riken.jp/result

# https://www.ncbi.nlm.nih.gov/pubmed/31562340
# Characterizing rare and low-frequency height-associated variants in the Japanese population.
# PMID:    31562340    PMCID:        PMC6764965	DOI:	    10.1038/s41467-019-12276-5 
# NOTE: The PMID on the Japan Biobank website is incorrect; that one points to the Uk10k paper
mkdir Height_Akiyama_2019
# http://jenger.riken.jp/result

# https://www.ncbi.nlm.nih.gov/pubmed/31624269
# GWAS of mosaic loss of chromosome Y highlights genetic effects on blood cell differentiation.
# PMID:    31624269    PMCID:        PMC6797717	DOI:	    10.1038/s41467-019-12705-5 
mkdir Mosaic-Loss-Of-Y_Terao_2019
# http://jenger.riken.jp/result

#################################################################

# https://www.nature.com/articles/ng.3874
# Fifteen new risk loci for coronary artery disease highlight arterial-wall-specific mechanisms
# Howson et al. 2017
# PMID: 28530674 PMCID: PMC5555387 DOI: 10.1038/ng.3874
mkdir Coronary-Artery-Disease_Howson_2017
# http://www.phenoscanner.medschl.cam.ac.uk/docs/Howson-JMM_CHD_Mixed_2017.txt

########################################## PGC Brain Phenotypes ######################################

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

# https://www.ncbi.nlm.nih.gov/pubmed/30150663
# GWAS of lifetime cannabis use reveals new risk loci, genetic overlap with psychiatric traits, and a causal influence of schizophrenia.
# Pasman et al. 2018
mkdir Cannabis-Use_Pasman_2018
# Must be downloaded from PGC website

# https://www.ncbi.nlm.nih.gov/pubmed/31740837
# Comparative genetic architectures of schizophrenia in East Asian and European populations.
# Lam et al. 2019
mkdir Schizophrenia_Lam_2019
# Must be downloaded from PGC website

# https://www.ncbi.nlm.nih.gov/pubmed/25056061
# Biological insights from 108 schizophrenia-associated genetic loci.
mkdir Schizophrenia_Ripke_2014
# Must be downloaded from PGC website

# https://www.ncbi.nlm.nih.gov/pubmed/23974872
# Genome-wide association analysis identifies 13 new risk loci for schizophrenia.
mkdir Schizophrenia_Ripke_2013
# Must be downloaded from PGC website

# https://www.ncbi.nlm.nih.gov/pubmed/21926974
# Genome-wide association study identifies five new schizophrenia loci.
mkdir Schizophrenia_Ripke_2011
# Must be downloaded from PGC website

# https://www.ncbi.nlm.nih.gov/pubmed/30482948 
# Trans-ancestral GWAS of alcohol dependence reveals common genetic underpinnings with psychiatric disorders
mkdir Alcohol-Dependence_Walters_2018
# Must be downloaded from PGC website

# https://www.ncbi.nlm.nih.gov/pubmed/30336701
# Genome-Wide Association Study Meta-Analysis of the Alcohol Use Disorders Identification Test (AUDIT) in Two Population-Based Cohorts.
mkdir Alcohol-Dependence_Sanchez-Roige_2018
# Must be downloaded from PGC website

# https://www.ncbi.nlm.nih.gov/pubmed/31043756
# Genome-wide association study identifies 30 loci associated with bipolar disorder.
mkdir Bipolar-Disorder_Stahl_2019
# Must be downloaded from PGC website

# https://www.ncbi.nlm.nih.gov/pubmed/30818990
# Interrogating the Genetic Determinants of Tourette's Syndrome and Other Tic Disorders Through Genome-Wide Association Studies.
mkdir Tourettes-Syndrome_Yu_2018
# Must be downloaded from PGC website


######################### DIAGRAM Diabetes Consortium ######################################

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

# https://www.ncbi.nlm.nih.gov/pubmed/30297969
# Fine-mapping type 2 diabetes loci to single-variant resolution using high-density imputation and islet-specific epigenome maps.
mkdir Type-2-Diabetes_Mahajan_2018
# Must be downloaded manually from the DIAGRAM consortium website: http://www.diagram-consortium.org/downloads.html

# https://www.ncbi.nlm.nih.gov/pubmed/22885922
# Large-scale association analysis provides insights into the genetic architecture and pathophysiology of type 2 diabetes.
# Morris et al. 2012
mkdir Type-2-Diabetes_Morris_2012
# Must be downloaded manually from the DIAGRAM consortium website: http://www.diagram-consortium.org/downloads.html

##############################################################################

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
mkdir Breast-Cancer_Milne_2017
# NOTE: Required a manual download and transfer

# https://www.nature.com/articles/ng.3875
# Genetic association study of exfoliation syndrome identifies a protective rare variant at LOXL1 and five new susceptibility loci
# Aung et al. 2017
# PMID: 28553957 PMCID: PMC6685441 DOI: 10.1038/ng.3875
mkdir Exfoliation-Syndrome_Aung_2017
# https://media.nature.com/original/nature-assets/ng/journal/v49/n7/extref/ng.3875-S6.zip

# https://www.ncbi.nlm.nih.gov/pubmed/27663945
# A Genome-Wide Association Meta-Analysis of Attention-Deficit/Hyperactivity Disorder Symptoms in Population-Based Paediatric Cohorts
# Middeldorp et al. 2016
mkdir Attention-Deficit-Hyperactivity-Disorder_Middeldorp_2016
# Requires manual download from http://www.tweelingenregister.org/EAGLE/

# https://www.ncbi.nlm.nih.gov/pubmed/19853236
# Sequence variants in three loci influence monocyte counts and erythrocyte volume.
# Ferreira et al. 2009
mkdir Blood-Cells_Ferreira_2009
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

