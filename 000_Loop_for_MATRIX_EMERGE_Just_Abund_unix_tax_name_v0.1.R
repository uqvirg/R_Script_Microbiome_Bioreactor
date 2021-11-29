# THIS LOOP IS USED TO GENERATED THE FILE 004_BIOREACTOR_Second_Part_Full_Matrix_Generation_v0.3.R


## OK
var_list <- list(
  VAR1=c("baby_control_d66","baby_control_d70"),
  VAR2=c("1r","2r"), 
  VAR3=c("2","3"))


for (i in 1:length(var_list$VAR1)) {
  print(cat(paste0("################  ADD NEXT SAMPLE:  ",var_list$VAR1[i],"###############################################")))
  print(cat(paste0("###############################################################")))
  print(cat(paste0(var_list$VAR1[i],"= read.table(\"C:/Users/perlo/OneDrive - Queensland University of Technology/Documents/00_QUT/005_BIOREACTORS/output_Aviary/",var_list$VAR1[i],"/02_Abund_Taxo_CHeck_",var_list$VAR1[i],".txt\", header = TRUE, sep = \"\\t\")")))
  print(cat(paste0("dim(",var_list$VAR1[i],")")))
  print(cat(paste0("\t")))
 
  print(cat(paste0(var_list$VAR1[i],"$Uniq_TAX_ref = paste(",var_list$VAR1[i],"$classification, ",var_list$VAR1[i],"$closest_placement_reference,",var_list$VAR3[i],"$other_related_references.genome_id.species_name.radius.ANI.AF.)")))
  print(cat(paste0("dim(",var_list$VAR1[i],")")))
  print(cat(paste0("\t")))
  
  print(cat(paste0(var_list$VAR1[i],"_just_abund <- ",var_list$VAR1[i],"[,c(35,21)]")))
  print(cat(paste0("dim(",var_list$VAR1[i],"_just_abund)")))
  print(cat(paste0("Matrix",var_list$VAR3[i]," <- merge(Matrix",var_list$VAR2[i],",",var_list$VAR1[i],"_just_abund,by=\"classification\", all=TRUE)")))
  print(cat(paste0("dim(Matrix",var_list$VAR3[i],")")))
  print(cat(paste0("\t")))
  print(cat(paste0("write.table(Matrix",var_list$VAR3[i],",\"00_Matrix",var_list$VAR3[i],"_just_abund.txt\", sep =\"\\t\",  col.names=TRUE, row.names = FALSE)")))
  print(cat(paste0("Matrix",var_list$VAR3[i],"r = read.table(\"00_Matrix",var_list$VAR3[i],"_just_abund.txt\",header = TRUE, sep = \"\\t\")")))
  print(cat(paste0("dim(Matrix",var_list$VAR3[i],"r)")))
  print(cat(paste0("###############################################################")))
  print(cat(paste0("####### MAY BE DONE JUST AT THE END STEP################################")))
  print(cat(paste0("trans_Matrix",var_list$VAR3[i],"r = as.data.frame(t(Matrix",var_list$VAR3[i],"r))")))
  print(cat(paste0("dim(trans_Matrix",var_list$VAR3[i],"r)")))
  print(cat(paste0("\t")))
  print(cat(paste0("write.table(trans_Matrix",var_list$VAR3[i],"r,\"00_tr_Matrix",var_list$VAR3[i],"_just_abund.txt\", sep =\"\\t\",  col.names=FALSE, row.names = TRUE)")))
  print(cat(paste0("\t")))
  print(cat(paste0("###############################################################")))
}




## OK
var_list <- list(
  VAR1=c("BABY_CONTROL_D148", "BABY_CONTROL_D154"),
  VAR2=c("7r","8r"), 
  VAR3=c("8","9"))


for (i in 1:length(var_list$VAR1)) {
  print(cat(paste0("################  ADD NEXT SAMPLE:  ",var_list$VAR1[i],"###############################################")))
  print(cat(paste0("###############################################################")))
  print(cat(paste0(var_list$VAR1[i],"= read.table(\"C:/Users/perlo/OneDrive - Queensland University of Technology/Documents/00_QUT/005_BIOREACTORS/output_Aviary/",var_list$VAR1[i],"/02_Abund_Taxo_CHeck_",var_list$VAR1[i],".txt\", header = TRUE, sep = \"\\t\")")))
  print(cat(paste0("dim(",var_list$VAR1[i],")")))
  print(cat(paste0("\t")))
  
  print(cat(paste0(var_list$VAR3[i],"$Uniq_TAX_ref = paste(",var_list$VAR3[i],"$classification, ",var_list$VAR3[i],"$closest_placement_reference,",var_list$VAR3[i],"$other_related_references.genome_id.species_name.radius.ANI.AF.)")))
  print(cat(paste0("dim(",var_list$VAR1[i],")")))
  print(cat(paste0("\t")))
  
  print(cat(paste0(var_list$VAR3[i],"_just_abund <- ",var_list$VAR3[i],"[,c(35,21)]")))
  print(cat(paste0("dim(",var_list$VAR1[i],"_just_abund)")))
  
  
  
  print(cat(paste0("Matrix",var_list$VAR3[i]," <- merge(Matrix",var_list$VAR2[i],"_just_abund,",var_list$VAR1[i],"_just_abund,by=\"classification\", all=TRUE)")))
    print(cat(paste0("dim(Matrix",var_list$VAR3[i],")")))
    print(cat(paste0("\t")))
    print(cat(paste0("write.table(Matrix",var_list$VAR3[i],",\"00_Matrix",var_list$VAR3[i],"_just_abund.txt\", sep =\"\\t\",  col.names=TRUE, row.names = FALSE)")))
    print(cat(paste0("Matrix",var_list$VAR3[i],"r = read.table(\"00_Matrix",var_list$VAR3[i],"_just_abund.txt\",header = TRUE, sep = \"\\t\")")))
    print(cat(paste0("dim(Matrix",var_list$VAR3[i],"r)")))
    print(cat(paste0("###############################################################")))
    print(cat(paste0("####### MAY BE DONE JUST AT THE END STEP################################")))
    print(cat(paste0("trans_Matrix",var_list$VAR3[i],"r = as.data.frame(t(Matrix",var_list$VAR3[i],"r))")))
    print(cat(paste0("dim(trans_Matrix",var_list$VAR3[i],"r)")))
    print(cat(paste0("\t")))
    print(cat(paste0("write.table(trans_Matrix",var_list$VAR3[i],"r,\"00_tr_Matrix",var_list$VAR3[i],"_just_abund.txt\", sep =\"\\t\",  col.names=FALSE, row.names = TRUE)")))
    print(cat(paste0("\t")))
    print(cat(paste0("###############################################################")))
}


## OK MONO
var_list <- list(
  VAR1=c("baby_mono_All","baby_mono_d64","baby_mono_d66","baby_mono_d70","baby_mono_d77","baby_mono_d106","baby_mono_d108","baby_mono_d112","baby_mono_d148","baby_mono_d150","baby_mono_d154"),
  VAR2=c(,"9r","10r","11r","12r","13r","14r","15r","16r","17r","18r","19r"), 
  VAR3=c("10","11","12","13","14","15","16","17","18","19","20"))


for (i in 1:length(var_list$VAR1)) {
  print(cat(paste0("################  ADD NEXT SAMPLE:  ",var_list$VAR1[i],"###############################################")))
  print(cat(paste0("###############################################################")))
  print(cat(paste0(var_list$VAR1[i],"= read.table(\"C:/Users/perlo/OneDrive - Queensland University of Technology/Documents/00_QUT/005_BIOREACTORS/output_Aviary/",var_list$VAR1[i],"/02_Abund_Taxo_CHeck_",var_list$VAR1[i],".txt\", header = TRUE, sep = \"\\t\")")))
  print(cat(paste0("dim(",var_list$VAR1[i],")")))
  print(cat(paste0("\t")))
  print(cat(paste0("Matrix",var_list$VAR3[i]," <- merge(Matrix",var_list$VAR2[i],",",var_list$VAR1[i],",by=\"classification\", all=TRUE)")))
  print(cat(paste0("dim(Matrix",var_list$VAR3[i],")")))
  print(cat(paste0("\t")))
  print(cat(paste0("write.table(Matrix",var_list$VAR3[i],",\"00_Matrix",var_list$VAR3[i],".txt\", sep =\"\\t\",  col.names=TRUE, row.names = FALSE)")))
  print(cat(paste0("Matrix",var_list$VAR3[i],"r = read.table(\"00_Matrix",var_list$VAR3[i],".txt\",header = TRUE, sep = \"\\t\")")))
  print(cat(paste0("dim(Matrix",var_list$VAR3[i],"r)")))
  print(cat(paste0("###############################################################")))
  print(cat(paste0("####### MAY BE DONE JUST AT THE END STEP################################")))
  print(cat(paste0("trans_Matrix",var_list$VAR3[i],"r = as.data.frame(t(Matrix",var_list$VAR3[i],"r))")))
  print(cat(paste0("dim(trans_Matrix",var_list$VAR3[i],"r)")))
  print(cat(paste0("\t")))
  print(cat(paste0("write.table(trans_Matrix",var_list$VAR3[i],"r,\"00_tr_Matrix",var_list$VAR3[i],".txt\", sep =\"\\t\",  col.names=FALSE, row.names = TRUE)")))
  print(cat(paste0("\t")))
  print(cat(paste0("###############################################################")))
}


## OK POLY
var_list <- list(
  VAR1=c("baby_poly_All","baby_poly_d64","baby_poly_d66","baby_poly_d70","baby_poly_d77","baby_poly_d106","baby_poly_d108","baby_poly_d112","baby_poly_d148","baby_poly_d150","baby_poly_d154"),
  VAR2=c("20r","21r","22r","23r","24r","25r","26r","27r","28r","29r","30r"), 
  VAR3=c("21","22","23","24","25","26","27","28","29","30","31"))


for (i in 1:length(var_list$VAR1)) {
  print(cat(paste0("################  ADD NEXT SAMPLE:  ",var_list$VAR1[i],"###############################################")))
  print(cat(paste0("###############################################################")))
  print(cat(paste0(var_list$VAR1[i],"= read.table(\"C:/Users/perlo/OneDrive - Queensland University of Technology/Documents/00_QUT/005_BIOREACTORS/output_Aviary/",var_list$VAR1[i],"/02_Abund_Taxo_CHeck_",var_list$VAR1[i],".txt\", header = TRUE, sep = \"\\t\")")))
  print(cat(paste0("dim(",var_list$VAR1[i],")")))
  print(cat(paste0("\t")))
  print(cat(paste0("Matrix",var_list$VAR3[i]," <- merge(Matrix",var_list$VAR2[i],",",var_list$VAR1[i],",by=\"classification\", all=TRUE)")))
  print(cat(paste0("dim(Matrix",var_list$VAR3[i],")")))
  print(cat(paste0("\t")))
  print(cat(paste0("write.table(Matrix",var_list$VAR3[i],",\"00_Matrix",var_list$VAR3[i],".txt\", sep =\"\\t\",  col.names=TRUE, row.names = FALSE)")))
  print(cat(paste0("Matrix",var_list$VAR3[i],"r = read.table(\"00_Matrix",var_list$VAR3[i],".txt\",header = TRUE, sep = \"\\t\")")))
  print(cat(paste0("dim(Matrix",var_list$VAR3[i],"r)")))
  print(cat(paste0("###############################################################")))
  print(cat(paste0("####### MAY BE DONE JUST AT THE END STEP################################")))
  print(cat(paste0("trans_Matrix",var_list$VAR3[i],"r = as.data.frame(t(Matrix",var_list$VAR3[i],"r))")))
  print(cat(paste0("dim(trans_Matrix",var_list$VAR3[i],"r)")))
  print(cat(paste0("\t")))
  print(cat(paste0("write.table(trans_Matrix",var_list$VAR3[i],"r,\"00_tr_Matrix",var_list$VAR3[i],".txt\", sep =\"\\t\",  col.names=FALSE, row.names = TRUE)")))
  print(cat(paste0("\t")))
  print(cat(paste0("###############################################################")))
}

## OK feed and parents
var_list <- list(
  VAR1=c("feed_d63","parent_d0","parent_d3","parent_d63","parent_d64","parent_d66","parent_d70","parent_d77","parent_d105","parent_d106","parent_d108","parent_d112","parent_d147","parent_d148","parent_d150","parent_d154","parent_d182"),
  VAR2=c("31r","32r","33r","34r","35r","36r","37r","38r","39r","40r","41r","42r","43r","44r","45r","46r","47r"), 
  VAR3=c("32","33","34","35","36","37","38","39","40","41","42","43","44","45","46","47","48"))


for (i in 1:length(var_list$VAR1)) {
  print(cat(paste0("################  ADD NEXT SAMPLE:  ",var_list$VAR1[i],"###############################################")))
  print(cat(paste0("###############################################################")))
  print(cat(paste0(var_list$VAR1[i],"= read.table(\"C:/Users/perlo/OneDrive - Queensland University of Technology/Documents/00_QUT/005_BIOREACTORS/output_Aviary/",var_list$VAR1[i],"/02_Abund_Taxo_CHeck_",var_list$VAR1[i],".txt\", header = TRUE, sep = \"\\t\")")))
  print(cat(paste0("dim(",var_list$VAR1[i],")")))
  print(cat(paste0("\t")))
  print(cat(paste0("Matrix",var_list$VAR3[i]," <- merge(Matrix",var_list$VAR2[i],",",var_list$VAR1[i],",by=\"classification\", all=TRUE)")))
  print(cat(paste0("dim(Matrix",var_list$VAR3[i],")")))
  print(cat(paste0("\t")))
  print(cat(paste0("write.table(Matrix",var_list$VAR3[i],",\"00_Matrix",var_list$VAR3[i],".txt\", sep =\"\\t\",  col.names=TRUE, row.names = FALSE)")))
  print(cat(paste0("Matrix",var_list$VAR3[i],"r = read.table(\"00_Matrix",var_list$VAR3[i],".txt\",header = TRUE, sep = \"\\t\")")))
  print(cat(paste0("dim(Matrix",var_list$VAR3[i],"r)")))
  print(cat(paste0("###############################################################")))
  print(cat(paste0("####### MAY BE DONE JUST AT THE END STEP################################")))
  print(cat(paste0("trans_Matrix",var_list$VAR3[i],"r = as.data.frame(t(Matrix",var_list$VAR3[i],"r))")))
  print(cat(paste0("dim(trans_Matrix",var_list$VAR3[i],"r)")))
  print(cat(paste0("\t")))
  print(cat(paste0("write.table(trans_Matrix",var_list$VAR3[i],"r,\"00_tr_Matrix",var_list$VAR3[i],".txt\", sep =\"\\t\",  col.names=FALSE, row.names = TRUE)")))
  print(cat(paste0("\t")))
  print(cat(paste0("###############################################################")))
}
