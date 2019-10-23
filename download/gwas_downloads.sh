#!/bin/bash

# Mike Gloudemans
# Brunilda Balliu
# Boxiang Liu

######################################################

# http://journals.plos.org/plosgenetics/article?id=10.1371/journal.pgen.1002607
# Novel Loci for Adiponectin Levels and their Influence on Type 2 Diabetes and Metabolic Traits: A Multi-Ethnic Meta-Analysis of 45,891 Individuals
# Dastani et al. 2012
# ADIPOgen
# Comes in 6 parts, which will need to be joined
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
mkdir Musculoskeletal-Traits_Medina-Gomez_2017
wget http://www.gefos.org/sites/default/files/bivariate_final.txt.gz --directory Musculoskeletal-Traits_Medina-Gomez_2017
wget http://www.gefos.org/sites/default/files/ReadMe_GEFOS-1.txt --directory Musculoskeletal-Traits_Medina-Gomez_2017

# http://www.gefos.org/?q=content/data-release-2012
# Genome-wide meta-analysis identifies 56 bone mineral density loci and reveals 14 loci associated with risk of fracture.
# Estrada et al. 2012
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
mkdir Coronary-Artery-Disease_Nelson_2017
wget http://www.cardiogramplusc4d.org/media/cardiogramplusc4d-consortium/data-downloads/UKBB.GWAS1KG.EXOME.CAD.SOFT.META.PublicRelease.300517.txt.gz --directory Coronary-Artery-Disease_Nelson_2017

# https://www.nature.com/articles/ng.3552
# Genetic variants associated with subjective well-being, depressive symptoms and neuroticism identified through genome-wide analyses.
# Okbay et al. 2016
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
mkdir Glucose-Stimulated-Insulin-Secretion_Prokopenko_2014
wget ftp://ftp.sanger.ac.uk/pub/magic/MAGIC_InsulinSecretion_data_release_May2014.zip --directory Glucose-Stimulated-Insulin-Secretion_Prokopenko_2014

# https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3433394/
# Large-scale association analyses identify new loci influencing glycemic traits and provide insight into the underlying biological pathways
# Scott et al. 2013
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
mkdir Glycemic-Traits_Dupuis_2010
wget ftp://ftp.sanger.ac.uk/pub/magic/MAGIC_ln_FastingInsulin.txt --directory Glycemic-Traits_Dupuis_2010
wget ftp://ftp.sanger.ac.uk/pub/magic/MAGIC_FastingGlucose.txt --directory Glycemic-Traits_Dupuis_2010
wget ftp://ftp.sanger.ac.uk/pub/magic/MAGIC_ln_HOMA-B.txt --directory Glycemic-Traits_Dupuis_2010
wget ftp://ftp.sanger.ac.uk/pub/magic/MAGIC_ln_HOMA-IR.txt --directory Glycemic-Traits_Dupuis_2010

# https://www.ncbi.nlm.nih.gov/pubmed/27568811
# Heritability and Genome-Wide Association Analyses of Sleep Duration in Children: The EAGLE Consortium.
# Marinelli et al. 2016
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
mkdir Asthma_Demenais_2017
wget ftp://ftp.ebi.ac.uk/pub/databases/gwas/summary_statistics/DemenaisF_29273806_GCST005212/TAGC_meta-analyses_results_for_asthma_risk.zip --directory Asthma_Demenais_2017

# https://www.nature.com/articles/s41588-017-0013-8
# Association analysis in over 329,000 individuals identifies 116 independent variants influencing neuroticism 
# Luciano et al. 2017
mkdir Neuroticism_Luciano_2017
wget http://www.psy.ed.ac.uk/ccace/downloads/Luciano_2017.zip --directory Neuroticism_Luciano_2017

# https://www.nature.com/articles/ng.3973
# Genome-wide association analysis identifies 30 new susceptibility loci for schizophrenia
# Li et al. 2017
mkdir Schizophrenia_Li_2017
wget https://ndownloader.figshare.com/files/9500335 --directory Schizophrenia_Li_2017
mv Schizophrenia_Li_2017/9500335 Schizophrenia_Li_2017/Schizophrenia_Li_2017.txt.gz

# https://www.nature.com/articles/ng.3888#supplementary-information
# Genome-wide association analysis of insomnia complaints identifies risk genes and genetic overlap with psychiatric and metabolic traits
# Hammerschlag et al. 2017
mkdir Insomnia_Hammerschlag_2017
wget http://ctg.cncr.nl/documents/p1651/Hammerschlag_NatGenet2017_insomnia_sumstats-full_090617.txt.gz --directory Insomnia_Hammerschlag_2017

# https://www.nature.com/articles/ng.3869
# Genome-wide association meta-analysis of 78,308 individuals identifies new loci and genes influencing human intelligence.
# Sniekers et al. 2017
mkdir Intelligence_Sniekers_2017
wget http://ctg.cncr.nl/documents/p1651/sumstats.txt.gz --directory Intelligence_Sniekers_2017

# https://www.nature.com/articles/ng.3977
# Exome-wide association study of plasma lipids in >300,000 individuals
# Liu et al. 2017
mkdir Plasma-Lipids_Liu_2017
wget http://csg.sph.umich.edu/abecasis/public/lipids2017/GLGC_exome_LDL_release.txt --directory Plasma-Lipids_Liu_2017
wget http://csg.sph.umich.edu/abecasis/public/lipids2017/GLGC_exome_HDL_release.txt  --directory Plasma-Lipids_Liu_2017
wget http://csg.sph.umich.edu/abecasis/public/lipids2017/GLGC_exome_TG_release.txt --directory Plasma-Lipids_Liu_2017
wget http://csg.sph.umich.edu/abecasis/public/lipids2017/GLGC_exome_TC_release.txt --directory Plasma-Lipids_Liu_2017

# https://www.nature.com/articles/ng.3978
# Exome chip meta-analysis identifies novel loci and East Asian–specific coding variants that contribute to lipid levels and coronary artery disease
# Lu et al. 2017
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
mkdir Type-2-Diabetes_Zhao_2017
wget http://www.med.upenn.edu/ccebfiles//t2d_meta_cleaned.zip --directory Type-2-Diabetes_Zhao_2017

# https://www.nature.com/articles/ejhg2014110
# A genome-wide association study identifies PLCL2 and AP3D1-DOT1L-SF3A2 as new susceptibility loci for myocardial infarction in Japanese
# Hirokawa et al 2015
mkdir Myocardial-Infarction_Hirokawa_2015
wget https://humandbs.biosciencedbc.jp/files/hum0014/hum0014_freq.xlsx --directory Myocardial-Infarction_Hirokawa_2015

# https://www.nature.com/articles/ncomms10531
# Genome-wide association studies in the Japanese population identify seven novel loci for type 2 diabetes
# Imamura et al 2015
mkdir Type-2-Diabetes_Imamura_2015
wget https://humandbs.biosciencedbc.jp/files/hum0014/hum0014.v3.T2DM-1.v1.xlsx --directory Type-2-Diabetes_Imamura_2015
wget https://humandbs.biosciencedbc.jp/files/hum0014/hum0014.v3.T2DM-2.v1.xlsx --directory Type-2-Diabetes_Imamura_2015

# https://www.nature.com/articles/ng.2438
# Genome-wide association study identifies eight new susceptibility loci for atopic dermatitis in the Japanese population
# Hirota et al. 2012
mkdir Atopic-Dermatitis_Hirota_2012
wget https://humandbs.biosciencedbc.jp/files/hum0014/hum0014.v4.AD.v1.zip --directory Atopic-Dermatitis_Hirota_2012

# https://www.nature.com/articles/ng.3842
# Identification of six new genetic loci associated with atrial fibrillation in the Japanese population
# Low et al. 2017
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

# 
# Genome-wide meta-analysis identifies new loci and functional pathways influencing Alzheimer’s disease risk
# Jansen et al. 2018
mkdir Alzheimers_Jansen_2018
wget https://ctg.cncr.nl/documents/p1651/AD_sumstats_Jansenetal.txt.gz --directory Alzheimers_Jansen_2018
wget https://ctg.cncr.nl/documents/p1651/AD_sumstats.readme --directory Alzheimers_Jansen_2018

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
mkdir Type-2-Diabetes_Scott_2017
# Must be downloaded manually from the DIAGRAM consortium website: http://www.diagram-consortium.org/downloads.html

# https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5034897/
# The genetic architecture of type 2 diabetes
# Fuchsberger et al. 2016
mkdir Type-2-Diabetes_Fuchsberger_2016
# Must be downloaded manually from the DIAGRAM consortium website: http://www.diagram-consortium.org/downloads.html

# https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4666734/
# Genetic fine-mapping and genomic annotation defines causal mechanisms at type 2 diabetes susceptibility loci
# Gaulton et al. 2015
mkdir Type-2-Diabetes_Gaulton_2015
# Must be downloaded manually from the DIAGRAM consortium website: http://www.diagram-consortium.org/downloads.html

# https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3969612/
# Genome-wide trans-ancestry meta-analysis provides insight into the genetic architecture of type 2 diabetes susceptibility
# Mahajan et al. 2014
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
mkdir Cytokines-And-Growth-Factors_Ahola-Olli_2017
# Must be downloaded manually from http://computationalmedicine.fi/data#Cytokine_GWAS

# https://www.nature.com/articles/ng.3985
# Shared genetic origin of asthma, hay fever and eczema elucidates allergic disease biology
# Ferreira et al. 2017
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

######################################################
# Unzip all zipped GWAS files
######################################################
python utils/unzip.py
