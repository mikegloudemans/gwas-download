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
--
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
--
# https://www.ncbi.nlm.nih.gov/pubmed/29292387
# Multi-trait analysis of genome-wide  association summary statistics using MTAG
# Turley et al. 2018
mkdir Multi-Trait-Brain_Turley_2018
wget https://www.dropbox.com/s/v79rfw9x14cj0fg/GWAS_NEUR_full.txt --directory Multi-Trait-Brain_Turley_2018
wget http://ssgac.org/documents/GWAS_SWB_CLUMPED.1e-5.txt --directory Multi-Trait-Brain_Turley_2018
wget http://ssgac.org/documents/GWAS_DEP_CLUMPED.1e-5.txt --directory Multi-Trait-Brain_Turley_2018
wget http://ssgac.org/documents/MTAG_NEUR_CLUMPED.1e-5.txt --directory Multi-Trait-Brain_Turley_2018
--
# https://www.ncbi.nlm.nih.gov/pubmed/23128233
# Host-microbe interactions have shaped the genetic architecture of inflammatory bowel disease.
# Jostins et al. 2012
mkdir Inflammatory-Bowel-Disease_Jostins_2012
wget ftp://ftp.sanger.ac.uk/pub/consortia/ibdgenetics/iibdgc-trans-ancestry-filtered-summary-stats.tgz --directory Inflammatory-Bowel-Disease_Jostins_2012

# https://www.ncbi.nlm.nih.gov/pubmed/21102463
# Genome-wide meta-analysis increases to 71 the number of confirmed Crohn's disease susceptibility loci.
--
# https://www.ncbi.nlm.nih.gov/pubmed/28957414
# Red blood cell distribution width: Genetic evidence for aging pathways in 116,666 volunteers.
# Pilling et al. 2017
mkdir Red-Blood-Cell-Distribution-Width_Pilling_2017
wget http://www.t2diabetesgenes.org/datasets/UKB_150K.Pilling_2017.RDW_GWAS.txt.gz --directory Red-Blood-Cell-Distribution-Width_Pilling_2017
--
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
--
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

--
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
--
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
--
# https://www.ncbi.nlm.nih.gov/pubmed/25493955
# Genome-wide association study of kidney function decline in individuals of European descent.
# Gorski et al. 2015
mkdir Kidney-Function_Gorski_2015
wget http://ckdgen.imbi.uni-freiburg.de/files/Gorski2015/CKDGen_Progression_DiscoveryMeta_CKDi_overall.csv.gz --directory Kidney-Function_Gorski_2015
wget http://ckdgen.imbi.uni-freiburg.de/files/Gorski2015/CKDGen_Progression_DiscoveryMeta_CKDi25_overall.csv.gz --directory Kidney-Function_Gorski_2015
wget http://ckdgen.imbi.uni-freiburg.de/files/Gorski2015/CKDGen_Progression_DiscoveryMeta_eGFRdecline_CKD.csv.gz --directory Kidney-Function_Gorski_2015
wget http://ckdgen.imbi.uni-freiburg.de/files/Gorski2015/CKDGen_Progression_DiscoveryMeta_eGFRdecline_noCKD.csv.gz --directory Kidney-Function_Gorski_2015
--
# https://www.ncbi.nlm.nih.gov/pubmed/?term=28800628
# GENomE wide analysis of sotalol-induced IKr inhibition during ventricular REPOLarization, "GENEREPOL study": Lack of common variants with large effect sizes.
# Salem et al. 2017
mkdir Ventricular-Repolarization_Salem_2017
wget https://grasp.nhlbi.nih.gov/downloads/FullResults/2017/2017_Salem/GENEREPOL_GWAS_DeltaAmplitude_PlosOne.txt --directory Ventricular-Repolarization_Salem_2017
wget https://grasp.nhlbi.nih.gov/downloads/FullResults/2017/2017_Salem/Salem_SotalolECGdrugEffects_README.txt --directory Ventricular-Repolarization_Salem_2017
--
# https://www.ncbi.nlm.nih.gov/pubmed/28521375
# A Genetic Marker Associated with Shoulder Dislocation.
# Kim et al. 2017
mkdir Shoulder-Dislocation_Kim_2017
wget https://grasp.nhlbi.nih.gov/downloads/FullResults/2017/2017_Kim_Shoulder_dislocation/Dislocation_EUR_sort.txt.zip --directory  Shoulder-Dislocation_Kim_2017
wget https://grasp.nhlbi.nih.gov/downloads/FullResults/2017/2017_Kim_Shoulder_dislocation/Dislocation_LAT_sort.txt.zip --directory  Shoulder-Dislocation_Kim_2017
wget https://grasp.nhlbi.nih.gov/downloads/FullResults/2017/2017_Kim_Shoulder_dislocation/Dislocation2_EAS_filter.txt.zip --directory  Shoulder-Dislocation_Kim_2017
wget https://grasp.nhlbi.nih.gov/downloads/FullResults/2017/2017_Kim_Shoulder_dislocation/Dislocation_EUR_LAT_META_sort.txt.zip --directory  Shoulder-Dislocation_Kim_2017
--
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
--
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
--
# https://www.nature.com/articles/ng.3973
# Genome-wide association analysis identifies 30 new susceptibility loci for schizophrenia
# Li et al. 2017
# PMID: 28991256 DOI: 10.1038/ng.3973
mkdir Schizophrenia_Li_2017
wget https://ndownloader.figshare.com/files/9500335 --directory Schizophrenia_Li_2017
mv Schizophrenia_Li_2017/9500335 Schizophrenia_Li_2017/Schizophrenia_Li_2017.txt.gz
--
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
--
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
--
# https://www.ncbi.nlm.nih.gov/pubmed/27670767
# Genome-wide association study identifies pharmacogenomic loci linked with specific antihypertensive drug treatment and new-onset diabetes.
# Chang et al. 2018
mkdir New-Onset-Diabetes_Chang_2018
wget https://grasp.nhlbi.nih.gov/downloads/FullResults/2016/2016_Chang/PGRN_AntiHTN_AA_invest_nod_black_interdrug_all_chr.txt --directory New-Onset-Diabetes_Chang_2018
wget https://grasp.nhlbi.nih.gov/downloads/FullResults/2016/2016_Chang/PGRN_antiHTN_EA_nvest_nod_white_interdrug_all_chr.txt --directory New-Onset-Diabetes_Chang_2018
wget https://grasp.nhlbi.nih.gov/downloads/FullResults/2016/2016_Chang/PGRN_antiHTN_HA_invest_nod_hisp_interdrug_all_chr.txt --directory New-Onset-Diabetes_Chang_2018
wget https://grasp.nhlbi.nih.gov/downloads/FullResults/2016/2016_Chang/PGRN_meta_w_h_b_n1.tbl.zip --directory New-Onset-Diabetes_Chang_2018
--
# https://www.ncbi.nlm.nih.gov/pubmed/27618448
# Meta-analysis identifies common and rare variants influencing blood pressure and overlapping with metabolic trait loci.
# Liu et al. 2016
mkdir Metabolic-Traits-Exome_Liu_2016
wget https://grasp.nhlbi.nih.gov/downloads/ResultsFebruary2017/2016/2016_Liu_Exome_Chip_BP/SBP_all_ethnic.csv --directory Metabolic-Traits-Exome_Liu_2016
wget https://grasp.nhlbi.nih.gov/downloads/ResultsFebruary2017/2016/2016_Liu_Exome_Chip_BP/SBP_EA.csv --directory Metabolic-Traits-Exome_Liu_2016
wget https://grasp.nhlbi.nih.gov/downloads/ResultsFebruary2017/2016/2016_Liu_Exome_Chip_BP/SBP_AA.csv --directory Metabolic-Traits-Exome_Liu_2016
wget https://grasp.nhlbi.nih.gov/downloads/ResultsFebruary2017/2016/2016_Liu_Exome_Chip_BP/SBP_HA.csv --directory Metabolic-Traits-Exome_Liu_2016
--
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
--
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
--
# https://www.ncbi.nlm.nih.gov/pubmed/?term=24514567
# A genome-wide association study of anorexia nervosa.
# Boraska et al. 2014
mkdir Anorexia-Nervosa_Boraska_2014
wget https://grasp.nhlbi.nih.gov/downloads/ResultsOctober2016/Boraska/gcan_meta.out.gz --directory Anorexia-Nervosa_Boraska_2014
--
# https://www.ncbi.nlm.nih.gov/pubmed/?term=24282030
# A genome-wide association study identifies polymorphisms in the HLA-DR region associated with non-response to hepatitis B vaccination in Chinese Han populations.
# Pan et al. 2014
mkdir Hepatitis-B-Vaccine-Response_Pan_2014
wget https://grasp.nhlbi.nih.gov/downloads/ResultsOctober2016/Pan/ddt586supp_table1.xlsx --directory Hepatitis-B-Vaccine-Response_Pan_2014
--
# https://www.ncbi.nlm.nih.gov/pubmed/?term=22479346
# Identification of IGF1, SLC4A4, WWOX, and SFMBT1 as hypertension susceptibility genes in Han Chinese with a genome-wide gene-based association study.
# Yang et al. 2012
mkdir Hypertension_Yang_2012
wget https://grasp.nhlbi.nih.gov/downloads/ResultsOctober2016/Yang_Hypertension/Yang_YoungOnsetHypertension_Illumina550_SBAS_rawpv.csv --directory Hypertension_Yang_2012
wget https://grasp.nhlbi.nih.gov/downloads/ResultsOctober2016/Yang_Hypertension/Yang_ReadMe.txt --directory Hypertension_Yang_2012
--
# https://www.ncbi.nlm.nih.gov/pubmed/?term=20522523
# Common genetic variation and susceptibility to partial epilepsies: a genome-wide association study.
# Kasperaviciute et al. 2010
mkdir Partial-Epilepsy_Kasperaviciute_2010
wget https://grasp.nhlbi.nih.gov/downloads/ResultsOctober2016/Kasperaviciute/PartialEpilepsySyndromes_Kasperaviciute_3445cases_6935controls.txt --directory Partial-Epilepsy_Kasperaviciute_2010
--
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
--
# https://www.ncbi.nlm.nih.gov/pubmed/?term=20081856
# Meta-analysis of genome-wide association data identifies a risk locus for major mood disorders on 3p21.1.
# McMahon et al. 2010
mkdir Major-Depressive-Disorder_McMahon_2010
wget https://grasp.nhlbi.nih.gov/downloads/ResultsOctober2016/McMahon/MajorDepressiveDisorders_McMahon_6683cases_9068controls.txt --directory Major-Depressive-Disorder_McMahon_2010
--
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
--
# https://www.ncbi.nlm.nih.gov/pubmed/?term=17401363
# Genome-wide association study of prostate cancer identifies a second risk locus at 8q24.
# Yeager et al. 2007
mkdir Prostate-Cancer_Yeager_2007
wget https://grasp.nhlbi.nih.gov/downloads/ResultsOctober2016/Yeager/phs000207.pha002877.txt.gz --directory Prostate-Cancer_Yeager_2007
wget https://grasp.nhlbi.nih.gov/downloads/ResultsOctober2016/Yeager/phs000207.pha002878.txt.gz --directory Prostate-Cancer_Yeager_2007
wget https://grasp.nhlbi.nih.gov/downloads/ResultsOctober2016/Yeager/YeagerReadMe1.txt --directory Prostate-Cancer_Yeager_2007
wget https://grasp.nhlbi.nih.gov/downloads/ResultsOctober2016/Yeager/YeagerReadMe2.txt --directory Prostate-Cancer_Yeager_2007
--
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
--
# https://www.ncbi.nlm.nih.gov/pubmed/30535219
# Association between titin loss-of-function variants and early-onset atrial fibrillation.
mkdir -p Atrial-Fibrillation-Early-Onset_Choi_2018
wget https://personal.broadinstitute.org/mvon/2018.AF.WGS.TOPMed.zip -P Atrial-Fibrillation-Early-Onset_Choi_2018 
wget https://s3.amazonaws.com/broad-portal-resources/CVDKP/AF_WGS_TOPMed_Freeze4_GWAS.README.txt -P Atrial-Fibrillation-Early-Onset_Choi_2018
unzip Atrial-Fibrillation-Early-Onset_Choi_2018/2018.AF.WGS.TOPMed.zip -d Atrial-Fibrillation-Early-Onset_Choi_2018
--
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
--
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
--

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
--
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
--
# https://www.ncbi.nlm.nih.gov/pubmed/30842574
# The influence of X chromosome variants on trait neuroticism.
mkdir Neuroticism_Luciano_2019
wget http://www.psy.ed.ac.uk/ccace/downloads/Luciano2019_MolPsych_Neuroticism_X.gz --directory Neuroticism_Luciano_2019
wget http://www.psy.ed.ac.uk/ccace/downloads/Luciano2019_MolPsych_Neuroticism_XY.gz --directory Neuroticism_Luciano_2019
wget http://www.psy.ed.ac.uk/ccace/downloads/Luciano2019_MolPsych_Neuroticism_README.txt --directory Neuroticism_Luciano_2019
--
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
--
# The effect of X-linked dosage compensation on complex trait variation
# https://www.nature.com/articles/s41467-019-10598-y
# PMID: 31285442 PMCID: PMC6614401 DOI: 10.1038/s41467-019-10598-y
mkdir X-Linked-Dosage-Compensation_Sidorenko_2019
wget http://cnsgenomics.com/data/XWAS/UKBv3_Xchr_20traits.tar.gz --directory X-Linked-Dosage-Compensation_Sidorenko_2019
wget http://cnsgenomics.com/data/XWAS/chrX_eqtl_besd.tar.gz  --directory X-Linked-Dosage-Compensation_Sidorenko_2019

# A genome-wide association analysis identifies 16 novel susceptibility loci for carpal tunnel syndrome
# https://www.nature.com/articles/s41467-019-08993-6#MOESM6 
# PMID: 30833571 PMCID: PMC6399342 DOI: 10.1038/s41467-019-08993-6
--
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
--
# http://www.lolipopstudy.org/data-download
# wget https://drive.google.com/drive/folders/1oue99uE080sSoyFF84efVTLR5GK4WZ3s?usp=sharing
# Chambers JC, Zhang W, Sehmi J, Li X, Wass MN, Van der Harst P, et al. Genome-wide association study identifies loci influencing concentrations of liver enzymes in plasma. Nature genetics. 2011;43(11):1131-8.
# PMID: 22001757 PMCID: PMC3482372 DOI: 10.1038/ng.970
mkdir -p Liver-Enzymes_Chambers_2011
wget https://drive.google.com/drive/folders/1oue99uE080sSoyFF84efVTLR5GK4WZ3s?usp=sharing -P Liver-Enzymes_Chambers_2011

--
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
--
# Genome-wide association analyses of risk tolerance and risky behaviors in over one million individuals identify hundreds of loci and shared genetic influences.
# https://www.ncbi.nlm.nih.gov/pubmed/30643258
mkdir Risky-Behavior_Karlson-Linner_2019
wget https://www.dropbox.com/s/il1d7vabk5283dm/RISK_GWAS_MA_UKB%2Breplication.txt?dl=0 -P Risky-Behavior_Karlson-Linner_2019
wget https://www.dropbox.com/s/dxfr1uq20wbdj1d/AUTOMOBILE_SPEEDING_PROPENSITY_GWAS.txt?dl=0 -P Risky-Behavior_Karlson-Linner_2019
wget https://www.dropbox.com/s/7hjxdhlxlwa482n/DRINKS_PER_WEEK_GWAS.txt?dl=0 -P Risky-Behavior_Karlson-Linner_2019
wget https://www.dropbox.com/s/o7wgwhnhjgt3eyn/EVER_SMOKER_GWAS_MA_UKB%2BTAG.txt?dl=0 -P Risky-Behavior_Karlson-Linner_2019
wget https://www.dropbox.com/s/erl8tn4sy81kseu/NUMBER_SEXUAL_PARTNERS_GWAS.txt?dl=0 -P Risky-Behavior_Karlson-Linner_2019
wget https://www.dropbox.com/s/9qw6vlt2l2hmewe/RISK_PC1_GWAS.txt?dl=0 -P Risky-Behavior_Karlson-Linner_2019
--
# Associations of Variants In the Hexokinase 1 and Interleukin 18 Receptor Regions with Oxyhemoglobin Saturation During Sleep.
# https://www.ncbi.nlm.nih.gov/pmc/articles/PMC6467367/
# PMID: 30990817 PMCID: PMC6467367 DOI: 10.1371/journal.pgen.1007739
mkdir Sleep-Oxyhemoglobin-Saturation_Cade_2019
wget https://personal.broadinstitute.org/mvon/cade_et_al_2018_average_spo2_multiethnic_discovery_replication.txt.zip -P Sleep-Oxyhemoglobin-Saturation_Cade_2019
wget https://personal.broadinstitute.org/mvon/cade_et_al_2018_minimum_spo2_multiethnic_discovery_replication.txt.zip -P Sleep-Oxyhemoglobin-Saturation_Cade_2019
wget https://personal.broadinstitute.org/mvon/cade_et_al_2018_percent_sleep_under_90_percent_spo2_multiethnic_discovery_replication.txt.zip -P Sleep-Oxyhemoglobin-Saturation_Cade_2019
wget https://s3.amazonaws.com/broad-portal-resources/sleep/README_Cade_et_al.txt -P Sleep-Oxyhemoglobin-Saturation_Cade_2019
--
# Genome-Wide Association Study of Diabetic Kidney Disease Highlights Biology Involved in Glomerular Basement Membrane Collagen.
# https://www.ncbi.nlm.nih.gov/pubmed/31537649
mkdir Diabetic-Kidney-Disease_Salem_2019 
wget https://personal.broadinstitute.org/mvon/JDRF_DNCRI_micro_min_meta_June2019_rsID.txt.zip -P Diabetic-Kidney-Disease_Salem_2019
wget https://s3.amazonaws.com/broad-portal-resources/README_JDRF_DNCRI_June2019_rsID.txt -P Diabetic-Kidney-Disease_Salem_2019
wget https://personal.broadinstitute.org/mvon/JDRF_DNCRI_micro_max_meta_June2019_rsID.txt.zip -P Diabetic-Kidney-Disease_Salem_2019
wget https://personal.broadinstitute.org/mvon/JDRF_DNCRI_macro_min_meta_June2019_rsID.txt.zip -P Diabetic-Kidney-Disease_Salem_2019
wget https://personal.broadinstitute.org/mvon/JDRF_DNCRI_macro_max_meta_June2019_rsID.txt.zip -P Diabetic-Kidney-Disease_Salem_2019
wget https://personal.broadinstitute.org/mvon/JDRF_DNCRI_esrd_min_meta_June2019_rsID.txt.zip -P Diabetic-Kidney-Disease_Salem_2019
--
# Trans-ethnic kidney function association study reveals putative causal genes and effects on kidney-specific disease aetiologies.
# https://www.ncbi.nlm.nih.gov/pmc/articles/PMC6318312/
# PMID: 30604766 PMCID: PMC6318312 DOI: 10.1038/s41467-018-07867-7
mkdir Chronic-Kidney-Disease_Morris_2019
wget https://pcwww.liv.ac.uk/~woodwajo/biostats/COGENT_Kidney_eGFR_trans_ethnic.txt.gz -P Chronic-Kidney-Disease_Morris_2019
wget https://pcwww.liv.ac.uk/~woodwajo/biostats/COGENT_Kidney_eGFR_README.docx -P Chronic-Kidney-Disease_Morris_2019
--
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
--
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
--
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
--
# https://www.nature.com/articles/ng.3874
# Fifteen new risk loci for coronary artery disease highlight arterial-wall-specific mechanisms
# Howson et al. 2017
# PMID: 28530674 PMCID: PMC5555387 DOI: 10.1038/ng.3874
mkdir Coronary-Artery-Disease_Howson_2017
# http://www.phenoscanner.medschl.cam.ac.uk/docs/Howson-JMM_CHD_Mixed_2017.txt
--
# https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4666734/
# Genetic fine-mapping and genomic annotation defines causal mechanisms at type 2 diabetes susceptibility loci
# Gaulton et al. 2015
# PMID: 26551672 PMCID: PMC4666734 DOI: 10.1038/ng.3437
mkdir Type-2-Diabetes_Gaulton_2015
# Must be downloaded manually from the DIAGRAM consortium website: http://www.diagram-consortium.org/downloads.html
--
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
