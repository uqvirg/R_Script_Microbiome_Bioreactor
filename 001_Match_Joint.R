setwd("C:/Users/perlo/OneDrive - Queensland University of Technology/Documents/00_QUT/005_BIOREACTORS/output_Aviary/baby_control_d64")
getwd()

##   "#" have been removed
checkm = read.table("checkmM.out",header = FALSE, sep = "\t")
Abund = read.table("coverm_abundances.tsv",header = FALSE, sep = "\t")
head(checkm)
head(Abund)

# matching from the first column to files 2 (Abund$V1) and first column to file 1  (checkm$V1) and add the columns 2 of the file 2 (file2$V2) in the 17 columns of files 1
checkm$V15 <- Abund$V2[match(checkm$V1 , Abund$V1)]
head(checkm)


write.table(checkm,"checkm_Abund.tsv", sep ="\t",  col.names=FALSE, row.names = FALSE) 


#####################
# match column "feature"" of file1 to column "feature"" to file2, take the colum that you want to add (file2$group) from the file which has the information and add this column in file that you want that don't have this info (file1$group)
#####################
file1 = read.table("C:/Users/perlo/OneDrive - Queensland University of Technology/Documents/00_QUT/005_BIOREACTORS/output_Aviary/03_NORMALISATION/011_MAASLIN_CYCLE_ref_feedParentC0/significant_results_mod.txt", header = TRUE, sep = "\t")
file2 = read.table("C:/Users/perlo/OneDrive - Queensland University of Technology/Documents/00_QUT/005_BIOREACTORS/04_EnrichM_Classify/01_100MAGs/list_name_with_group.txt", header = TRUE, sep = "\t")
file1$group <- file2$group[match(file1$feature , file2$feature)]
head(file1)

write.table(file1,"C:/Users/perlo/OneDrive - Queensland University of Technology/Documents/00_QUT/005_BIOREACTORS/output_Aviary/03_NORMALISATION/011_MAASLIN_CYCLE_ref_feedParentC0/significant_results_mod_with_group.txt", sep ="\t",  col.names=TRUE, row.names = FALSE) 


###############################


## UQ $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
setwd("C:/Users/uqvperlo/Documents/01_Sugarcane_Project/04_Multi_OMICS/05_ASSOCIATION/10_WGCNA/02_ALL_stage/RPKM_CPM_Normalisation/01_TPM_list_fastaFiles/03_WEGO")
getwd()
file1 <- read.csv("For_WEGO_Magenta_CCS_Jun_gaf_BUILD.txt",sep = "\t",header=FALSE);
file2 <- read.csv("MagentaUniq.txt",sep = "\t", header=FALSE);
head(file1)
head(file2)

# matching from the first column to files 2 (file2$V1) and 16 column to file 1  (file1$V16) and add the columns 2 of the file 2 (file2$V2) in the 17 columns of files 1
file1$V17 <- file2$V2[match(file1$V16 , file2$V1)]
head(file1)


write.table(file1,"For_WEGO_Magenta_CCS_Jun_gaf_BUILD2.csv", sep=",",  col.names=FALSE, row.names = FALSE) 



####################################################

setwd("C:/Users/uqvperlo/Documents/01_Sugarcane_Project/04_Multi_OMICS/05_ASSOCIATION/10_WGCNA/02_ALL_stage/RPKM_CPM_Normalisation/01_TPM_list_fastaFiles/01_KOBAS_TPM/01_6Groups_NEG_POS")
getwd()
head <- read.csv("List_kegg_6_groups.txt",sep = "\t",header=FALSE);
Black_P <- read.csv("Black_Kegg_Pos_627.txt",sep = "\t", header=FALSE);
Black_N <- read.csv("Black_Kegg_Neg_80.txt",sep = "\t", header=FALSE);
MAGENT_P <- read.csv("Magenta_Kegg_Pos_308.txt",sep = "\t", header=FALSE);
MAGENT_N <- read.csv("Magenta_Kegg_Neg_48.txt",sep = "\t", header=FALSE);
RED_P <- read.csv("Red_Kegg_Pos_740.txt",sep = "\t", header=FALSE);
RED_N <- read.csv("Red_Kegg_Neg_114.txt",sep = "\t", header=FALSE);
head(head)
head(Black_P)

head$V2 <- Black_P$V1[match(head$V1 , Black_P$V1)]
head$V3 <- Black_P$V2[match(head$V1 , Black_P$V1)]
head$V4 <- Black_P$V3[match(head$V1 , Black_P$V1)]
head(head)
head$V5 <- Black_N$V3[match(head$V1 , Black_N$V1)]
head$V6 <- MAGENT_P$V3[match(head$V1 , MAGENT_P$V1)]
head$V7 <- MAGENT_N$V3[match(head$V1 , MAGENT_N$V1)]
head$V8 <- RED_P$V3[match(head$V1 , RED_P$V1)]
head$V9 <- RED_N$V3[match(head$V1 , RED_N$V1)]
head(head)

write.table(head,"Matrix_Kegg.csv", sep=",",  col.names=FALSE, row.names = FALSE) 


############^^^^^^^^^^^^^^^^^^^^^^^^^^^^@@@@@@@@@@@@@@@@@@@@@@@

setwd("C:/Users/uqvperlo/Documents/01_Sugarcane_Project/04_Multi_OMICS/05_ASSOCIATION/10_WGCNA/02_ALL_stage/RPKM_CPM_Normalisation/01_TPM_list_fastaFiles/05_Gen_identif/sort_count")
getwd()
head <- read.csv("List_ALL_Kegg_map_uniq.txt",sep = "\t",header=FALSE);
Black <- read.csv("01_Sort_count_black_keggMap.txt",sep = "\t", header=FALSE);
Blue <- read.csv("01_Sort_count_blue_keggMap.txt",sep = "\t", header=FALSE);
Brown <- read.csv("01_Sort_count_brown_keggMap.txt",sep = "\t", header=FALSE);
Green <- read.csv("01_Sort_count_green_keggMap.txt",sep = "\t", header=FALSE);
Grey <- read.csv("01_Sort_count_grey_keggMap.txt",sep = "\t", header=FALSE);
Magenta <- read.csv("01_Sort_count_magenta_keggMap.txt",sep = "\t", header=FALSE);
Pink <- read.csv("01_Sort_count_pink_keggMap.txt",sep = "\t", header=FALSE);
Purple <- read.csv("01_Sort_count_purple_keggMap.txt",sep = "\t", header=FALSE);
Red <- read.csv("01_Sort_count_red_keggMap.txt",sep = "\t", header=FALSE);
Turquoise <- read.csv("01_Sort_count_turquoise_keggMap.txt",sep = "\t", header=FALSE);
Yellow <- read.csv("01_Sort_count_yellow_keggMap.txt",sep = "\t", header=FALSE);

head(head)
#V1
#1    1033 map00010
#2     427 map00020
head(Black)
#V1       V2
#1 25 map00010
#2  9 map00020
head(Blue)
head(Brown)
head(Green)
head(Grey)
head(Magenta)
head(Pink)
head(Purple)
head(Red)
head(Turquoise)
head(Yellow)

head$V3 <- Black$V1[match(head$V2 , Black$V2)]
head$V4 <- Blue$V1[match(head$V2 , Blue$V2)]
head$V5 <- Brown$V1[match(head$V2 , Brown$V2)]
head$V6 <- Green$V1[match(head$V2 , Green$V2)]
head$V7 <- Grey$V1[match(head$V2 , Grey$V2)]
head$V8 <- Magenta$V1[match(head$V2 , Magenta$V2)]
head$V9 <- Pink$V1[match(head$V2 , Pink$V2)]
head$V10 <- Purple$V1[match(head$V2 , Purple$V2)]
head$V11 <- Red$V1[match(head$V2 , Red$V2)]
head$V12 <- Turquoise$V1[match(head$V2 , Turquoise$V2)]
head$V13 <- Yellow$V1[match(head$V2 , Yellow$V2)]

head
colnames(head) <- c("Head","Map","Black","Blue","Brown","Green","Grey","Magenta","Pink","Purple","Red","Turquoise","Yellow")
head(head)


write.table(head,"Matrix_Kegg_map.csv", sep=",",  col.names=TRUE, row.names = FALSE) 


# ************** JOINT KOBAS KEGG BACKGROUND **************

setwd("C:/Users/uqvperlo/Documents/01_Sugarcane_Project/04_Multi_OMICS/05_ASSOCIATION/10_WGCNA/02_ALL_stage/04_Pathways_Enrichment_For_THESIS")
getwd()
PathwayBackGroud_Sorghum = read.csv("KOBAS_Enrichment_Pathways_Backgrounds_Sorghum.csv")
head(PathwayBackGroud_Sorghum)
dim(PathwayBackGroud_Sorghum)
#111  3
Black_CCS = read.csv("Black_CCS_nbGenesPerPathways.csv")
head(Black_CCS)
PINK_Fibre = read.csv("Pink_Fibre_nbGenesPerPathways.csv")
head(PINK_Fibre)

Kegg_BLACK_Sorghum_EnrichPath <- merge(PathwayBackGroud_Sorghum, Black_CCS,by.x = "ID", by.y = "ID",all=TRUE)
head(Kegg_BLACK_Sorghum_EnrichPath)
dim(Kegg_BLACK_Sorghum_EnrichPath)
#116  5
write.table(Kegg_BLACK_Sorghum_EnrichPath,"Kegg_BLACK_Sorghum_EnrichPath.csv", sep=",",  col.names=TRUE, row.names = FALSE) 

PINK_Fibre_Sorghum_EnrichPath <- merge(PathwayBackGroud_Sorghum, PINK_Fibre,by.x = "ID", by.y = "ID",all=TRUE)
head(PINK_Fibre_Sorghum_EnrichPath)
dim(PINK_Fibre_Sorghum_EnrichPath)
#88 5

write.table(PINK_Fibre_Sorghum_EnrichPath,"Kegg_PINK_Sorghum_EnrichPath.csv", sep=",",  col.names=TRUE, row.names = FALSE) 



BLACK_AND_PINK_Sorghum_EnrichPath <- merge(Kegg_BLACK_Sorghum_EnrichPath, PINK_Fibre_Sorghum_EnrichPath,by.x = "ID", by.y = "ID",all=TRUE)
head(BLACK_AND_PINK_Sorghum_EnrichPath)
dim(BLACK_AND_PINK_Sorghum_EnrichPath)


write.table(BLACK_AND_PINK_Sorghum_EnrichPath,"BLACK_AND_PINK_Sorghum_EnrichPath.csv", sep=",",  col.names=TRUE, row.names = FALSE) 



# *********************************************************



setwd("C:/Users/uqvperlo/Documents/01_Sugarcane_Project/04_Multi_OMICS/05_ASSOCIATION/10_WGCNA/02_ALL_stage/RPKM_CPM_Normalisation")
getwd()
Data_TPM = read.csv("TPM_150163_samp_col_ff.csv")
head(Data_TPM)
#   Samples_Full S2_SRA2_R3 S2_SRA5_R3 S2_SRA1_R3 S1_KQ228_R3 S2_SRA3_R3
# 1 c72053f1p21731  0.6929115  0.6716535   1.618487   0.1633802  0.1426327

setwd("C:/Users/uqvperlo/Documents/01_Sugarcane_Project/04_Multi_OMICS/05_ASSOCIATION/10_WGCNA/02_ALL_stage/RPKM_CPM_Normalisation/02_WGCNA_with_Data_Filtered")
getwd()
ListFilt  <- read.csv("List_77754_genes.txt",sep = "\t",header=TRUE);
head(ListFilt)
#     Samples_Full
# 1   c6580f1p01148
# 2  c93098f1p02490
Full_f <- merge(Data_TPM, ListFilt,by.x = "Samples_Full", by.y = "Samples_Full")
head(Full_f)

write.table(Full_f,"TPM_150163_samp_col_ff_77754_FILT.csv", sep=",",  col.names=TRUE, row.names = FALSE) 
