#first loop
for(i in 1:5){
print(i^2)
}

for (i in 2010:2020){
  print(paste("The year is", i))
}


filenames <- c("S151_R5","S151_R6","S152_R5","S152_R6","S153_R5","S153_R6")


for (f in seq_along(filenames)) {
  #  print(filenames[f]) 
  print(paste(filenames[f],"BLABLABLA",filenames[f],"_",filenames[f],"OTHER_BLABLA"))
  
}

############################## Multiple variables
################################################################
var_list <- list(
  var1 = 1:10,          # 1, ..., 10
  var2 = letters[17:26] # q, ..., z
)

for (i in 1:length(var_list$var1)) {
  
  # Process each of var1 and var2
  print(paste(
    'var1:', var_list$var1[i],
    '; var2:', var_list$var2[i]
  ))
  
}
######################################################

setwd("C:/Users/perlo/OneDrive - Queensland University of Technology/Documents/00_QUT/005_BIOREACTORS/02_ANNOTATION_46SAMPLES/04_CAZYs_ANNOTATION/01_ALL CAZY_PER_MAG")
getwd()


All = read.table("01_Final_all_Cazys_uniq.txt",header = FALSE, sep = "\t")

# WORKS
filenames <- read.table("Files_names.txt",header = FALSE, sep = "\t")
class(filenames)
filenames <- as.character(filenames$V1)


for (f in seq_along(filenames)) {
  print(paste("CAZYs = read.table(",filenames[f],",header = FALSE)"))
}



###################################################
TTS1_R1_peaks <- data.frame(max(subset(S1_R1,S1_R1$V1>12.5 & S1_R1$V1<13.8)$V2))
TTS1_R1_peaks

setwd("C:/Users/uqvperlo/Documents/01_Sugarcane_Project/06_Phenotypes_JBEI_Analysis_Chap4/04_Sugars")
getwd()

# doesn't work
#filenames <- read.table("C:/Users/uqvperlo/Documents/01_Sugarcane_Project/06_Phenotypes_JBEI_Analysis_Chap4/04_Sugars/list_658_samples_HPLC.txt",sep="\t", header=FALSE)
#data <- read.table("C:/Users/uqvperlo/Documents/01_Sugarcane_Project/06_Phenotypes_JBEI_Analysis_Chap4/04_Sugars/list_658_samples_HPLC.txt",header=FALSE,row.names=NULL)

IN 2 STEPS

#filenames <- c("S1_R1","S2_R1","S3_R2R","S3_R1","S4_R2R","S4_R1","S5_R2R","S5_R1","S6_R2R","S6_R1","S7_R2R","S7_R1","S8_R2R","S8_R1","S9_R2R","S9_R1","S10_R2R","S10_R1","S11_R2R","S11_R1","S12_R2R","S12_R1","S13_R2R","S13_R1","S14_R2R","S14_R1","S15_R2R","S15_R1","S16_R2R","S16_R1","S17_R2R","S17_R1","S18_R2R","S18_R1","S19_R2R","S19_R1","S20_R2R","S20_R1","S21_R2R","S21_R1","S22_R2R","S22_R1","S23_R2R","S23_R1","S24_R2R","S24_R1","S25_R2R","S25_R1","S26_R2R","S26_R1","S27_R2R","S27_R1","S28_R2R","S28_R1","S29_R2R","S29_R1","S30_R2R","S30_R1","S31_R2R","S31_R1","S32_R2R","S32_R1","S33_R2R","S33_R1","S34_R2R","S34_R1","S35_R2R","S35_R1","S36_R2R","S36_R1","S37_R2R","S37_R1","S38_R2R","S38_R1","S39_R2R","S39_R1","S40_R2R","S40_R1","S41_R2R","S41_R1","S42_R2R","S42_R1","S43_R2R","S43_R1","S44_R2R","S44_R1","S45_R2R","S45_R1","S46_R2R","S46_R1","S47_R2R","S47_R1","S48_R2R","S48_R1","S49_R2R","S49_R1","S50_R2R","S50_R1","S51_R2R","S51_R1","S52_R2R","S52_R1","S53_R2R","S53_R1","S54_R2R","S54_R1","S55_R2R","S55_R1","S56_R2R","S56_R1","S57_R2R","S57_R1","S58_R2R","S58_R1","S59_R2R","S59_R1","S60_R2R","S60_R1","S61_R3","S61_R4R","S62_R3","S62_R4R","S63_R3","S63_R4R","S64_R3","S64_R4R","S65_R3","S65_R4R","S66_R3","S66_R4R","S67_R3","S67_R4R","S68_R3","S68_R4R","S69_R3","S69_R4R","S70_R3","S70_R4R","S71_R3","S71_R4R","S72_R3","S72_R4R","S73_R3","S73_R4R","S74_R3","S74_R4R","S75_R3","S75_R4R","S76_R3","S76_R4R","S77_R3","S77_R4R","S78_R3","S78_R4R","S79_R3","S79_R4R","S80_R3","S80_R4R","S81_R3","S81_R4R","S82_R3","S82_R4R","S83_R3","S83_R4R","S84_R3","S84_R4R","S85_R3","S85_R4R","S86_R3","S86_R4R","S87_R3","S87_R4R","S88_R3","S88_R4R","S89_R3","S89_R4R","S90_R3","S90_R4R","S91_R3","S91_R4R","S92_R3","S92_R4R","S93_R3","S93_R4R","S94_R3","S94_R4R","S95_R3","S95_R4R","S96_R3","S96_R4R","S97_R3","S97_R4R","S98_R3","S98_R4R","S99_R3","S99_R4R","S100_R3","S100_R4R","S101_R3","S101_R4R","S102_R3","S102_R4R","S103_R3","S103_R4R","S104_R3","S104_R4R","S105_R3","S105_R4R","S106_R3","S106_R4R","S107_R3","S107_R4R","S108_R3","S108_R4R","S109_R3","S109_R4R","S110_R3","S110_R4R","S111_R3","S111_R4R","S112_R3","S112_R4R","S113_R3","S113_R4R","S114_R3","S114_R4R","S115_R3","S115_R4R","S116_R3","S116_R4R","S117_R3","S117_R4R","S118_R3","S118_R4R","S119_R3","S119_R4R","S120_R3","S120_R4R","S121_R5","S121_R6","S122_R5","S122_R6","S123_R5","S123_R6","S124_R5","S124_R6","S125_R5","S125_R6","S126_R5","S126_R6","S127_R5","S127_R6","S128_R5","S128_R6","S129_R5","S129_R6","S130_R5","S130_R6","S131_R5","S131_R6","S132_R5","S132_R6","S133_R5","S133_R6","S134_R5","S134_R6","S135_R5","S135_R6","S136_R5","S136_R6","S137_R5","S137_R6","S138_R5","S138_R6","S139_R5","S139_R6","S140_R5","S140_R6","S141_R5","S141_R6","S142_R5","S142_R6","S143_R5","S143_R6","S144_R5","S144_R6","S145_R5","S145_R6","S146_R5","S146_R6","S147_R5","S147_R6","S148_R5","S148_R6","S149_R5","S149_R6","S150_R5","S150_R6")
filenames <- c("S151_R5","S151_R6","S152_R5","S152_R6","S153_R5","S153_R6","S154_R5","S154_R6","S155_R5","S155_R6","S156_R5","S156_R6","S157_R5","S157_R6","S158_R5","S158_R6","S159_R5","S159_R6","S160_R5","S160_R6","S161_R5","S161_R6","S162_R5","S162_R6","S163_R5","S163_R6","S164_R5","S164_R6","S165_R5","S165_R6","S166_R5","S166_R6","S167_R5","S167_R6","S168_R5","S168_R6","S169_R5","S169_R6","S170_R5","S170_R6","S171_R5","S171_R6","S172_R5","S172_R6","S173_R5","S173_R6","S174_R5","S174_R6","S175_R5","S175_R6","S176_R5","S176_R6","S177_R5","S177_R6","S178_R5","S178_R6","S179_R5","S179_R6","S180_R5","S180_R6","S181_R7","S181_R8R","S182_R7","S182_R8R","S183_R7","S183_R8R","S184_R7","S184_R8R","S185_R7","S185_R8R","S186_R7","S186_R8R","S187_R7","S187_R8R","S188_R7","S188_R8R","S189_R7","S189_R8R","S190_R7","S190_R8R","S191_R7","S191_R8R","S192_R7","S192_R8R","S193_R7","S193_R8R","S194_R7","S194_R8R","S195_R7","S195_R8R","S196_R7","S196_R8R","S197_R7","S197_R8R","S198_R7","S198_R8R","S199_R7","S199_R8R","S200_R7","S200_R8R","S201_R7","S201_R8R","S202_R7","S202_R8R","S203_R7","S203_R8R","S204_R7","S204_R8R","S205_R7","S205_R8R","S206_R7","S206_R8R","S207_R7","S207_R8R","S208_R7","S208_R8R","S209_R7","S209_R8R","S210_R7","S210_R8R","S211_R7","S211_R8R","S212_R7","S212_R8R","S213_R7","S213_R8R","S214_R7","S214_R8R","S215_R7","S215_R8R","S216_R7","S216_R8R","S217_R7","S217_R8R","S218_R7","S218_R8R","S219_R7","S219_R8R","S220_R7","S220_R8R","S221_R7","S221_R8R","S222_R7","S222_R8R","S223_R7","S223_R8R","S224_R7","S224_R8R","S225_R7","S225_R8R","S226_R7","S226_R8R","S227_R7","S227_R8R","S228_R7","S228_R8R","S229_R7","S229_R8R","S230_R7","S230_R8R","S231_R7","S231_R8R","S232_R7","S232_R8R","S233_R7","S233_R8R","S234_R7","S234_R8R","S235_R7","S235_R8R","S236_R7","S236_R8R","S237_R7","S237_R8R","S238_R7","S238_R8R","S239_R7","S239_R8R","S240_R7","S240_R8R","S241_R9","S241_R10R","S242_R9","S242_R10R","S243_R9","S243_R10R","S244_R9","S244_R10R","S245_R9","S245_R10R","S246_R9","S246_R10R","S247_R9","S247_R10R","S248_R9","S248_R10R","S249_R9","S249_R10R","S250_R9","S250_R10R","S251_R9","S251_R10R","S252_R9","S252_R10R","S253_R9","S253_R10R","S254_R9","S254_R10R","S255_R9","S255_R10R","S256_R9","S256_R10R","S257_R9","S257_R10R","S258_R9","S258_R10R","S259_R9","S259_R10R","S260_R9","S260_R10R","S261_R9","S261_R10R","S262_R9","S262_R10R","S263_R9","S263_R10R","S264_R9","S264_R10R","S265_R9","S265_R10R","S266_R9","S266_R10R","S267_R9","S267_R10R","S268_R9","S268_R10R","S269_R9","S269_R10R","S270_R9","S270_R10R","S271_R9","S271_R10R","S272_R9","S272_R10R","S273_R9","S273_R10R","S274_R9","S274_R10R","S275_R9","S275_R10R","S276_R9","S276_R10R","S277_R9","S277_R10R","S278_R9","S278_R10R","S279_R9","S279_R10R","S280_R9","S280_R10R","S281_R9","S281_R10R","S282_R9","S282_R10R","S283_R9","S283_R10R","S284_R9","S284_R10R","S285_R9","S285_R10R","S286_R9","S286_R10R","S287_R9","S287_R10R","S288_R9","S288_R10R","S289_R9","S289_R10R","S290_R9","S290_R10R","S291_R9","S291_R10R","S292_R9","S292_R10R","S293_R9","S293_R10R","S294_R9","S294_R10R","S295_R9","S295_R10R","S296_R9","S296_R10R","S297_R9","S297_R10R","S298_R9","S298_R10R","S299_R9","S299_R10R","S300_R9","S300_R10R","S301_R12R","S302_R12R","S303_R12R","S304_R12R","S305_R12R","S306_R12R","S307_R12R","S308_R12R","S309_R12R","S310_R12R","S311_R12R","S312_R12R","S313_R12R","S314_R12R","S315_R12R","S316_R12R","S317_R12R","S318_R12R","S319_R12R","S320_R12R","S321_R12R","S322_R12R","S323_R12R","S324_R12R","S325_R12R","S326_R12R","S327_R12R","S328_R12R","S329_R12R","S330_R12R","S331_R12R","S332_R12R","S333_R12R","S334_R12R","S335_R12R","S336_R12R","S337_R12R","S338_R12R","S339_R12R","S340_R12R","S341_R12R","S342_R12R","S343_R12R","S344_R12R","S345_R12R","S346_R12R","S347_R12R","S348_R12R","S349_R12R","S350_R12R","S351_R12R","S352_R12R","S353_R12R","S354_R12R","S355_R12R","S356_R12R","S357_R12R","S358_R12R","S359_R12R","S360_R12R")


for (f in seq_along(filenames)) {
  #  print(filenames[f]) 
print(paste(filenames[f],"_peaks <- data.frame(max(subset(",filenames[f],",",filenames[f],"$V1>12.5 &",filenames[f],"$V1<13.8)$V2),max(subset(",filenames[f],",",filenames[f],"$V1>=13.8 &",filenames[f],"$V1<17.1)$V2),max(subset(",filenames[f],",",filenames[f],"$V1>=17.1 &",filenames[f],"$V1<18.5)$V2))"))

}

for (f in seq_along(filenames)) {
  print(paste("colnames(",filenames[f],"_peaks <- c(XXXpeak1XXX, XXXpeak2XXX, XXXpeak3XXX)"))
  print(paste("rownames(",filenames[f],"_peaks <- c(XXX",filenames[f],"XXX)"))
  
  
}
#rownames(S1_R1_peaks) <- c("S1_R1")


filenames <- c("S1_R1","S2_R1")
filenames
for (f in seq_along(filenames)) {
#  print(filenames[f]) 
  
  
#print(paste("hello",filenames[f],filenames[f]))  
print(cat(filenames[f],"_peaks <- data.frame(max(subset(",filenames[f],",",filenames[f],"$V1>12.5 &",filenames[f],"$V1<13.8)$V2),max(subset(",filenames[f],",",filenames[f],"$V1>=13.8 &",filenames[f],"$V1<17.1)$V2),max(subset(",filenames[f],",",filenames[f],"$V1>=17.1 &",filenames[f],"$V1<18.5)$V2))"))
# S2_R1 _peaks <- data.frame(max(subset( S2_R1 , S2_R1 $V1>12.5 & S2_R1 $V1<13.8)$V2),max(subset( S2_R1 , S2_R1 $V1>=13.8 & S2_R1 $V1<17.1)$V2),max(subset( S2_R1 , S2_R1 $V1>=17.1 & S2_R1 $V1<18.5)$V2))
#S2_R1_peaks<-data.frame(max(subset(S2_R1,S2_R1$V1>12.5&S2_R1$V1<13.8)$V2),max(subset(S2_R1,S2_R1$V1>=13.8&S2_R1$V1<17.1)$V2),max(subset(S2_R1,S2_R1$V1>=17.1&S2_R1$V1<18.5)$V2))
#colnames(S1_R1_peaks) <- c("peak1", "peak2", "peak3")
#rownames(S1_R1_peaks) <- c("S1_R1")
#S1_R1_peaks
#S1_R1_peaks <- data.frame(max(subset(S1_R1,S1_R1$V1>12.5 & S1_R1$V1<13.8)$V2),max(subset(S1_R1,S1_R1$V1>=13.8 & S1_R1$V1<17.1)$V2),max(subset(S1_R1,S1_R1$V1>=17.1 & S1_R1$V1<18.5)$V2))


}



S1_R1_peaks<-data.frame(max(subset(S1_R1,S1_R1$V1>12.5&S1_R1$V1<13.8)$V2),max(subset(S1_R1,S1_R1$V1>=13.8&S1_R1$V1<17.1)$V2),max(subset(S1_R1,S1_R1$V1>=17.1&S1_R1$V1<18.5)$V2))
S2_R1_peaks<-data.frame(max(subset(S2_R1,S2_R1$V1>12.5&S2_R1$V1<13.8)$V2),max(subset(S2_R1,S2_R1$V1>=13.8&S2_R1$V1<17.1)$V2),max(subset(S2_R1,S2_R1$V1>=17.1&S2_R1$V1<18.5)$V2))
S3_R2R_peaks<-data.frame(max(subset(S3_R2R,S3_R2R$V1>12.5&S3_R2R$V1<13.8)$V2),max(subset(S3_R2R,S3_R2R$V1>=13.8&S3_R2R$V1<17.1)$V2),max(subset(S3_R2R,S3_R2R$V1>=17.1&S3_R2R$V1<18.5)$V2))
S3_R1_peaks<-data.frame(max(subset(S3_R1,S3_R1$V1>12.5&S3_R1$V1<13.8)$V2),max(subset(S3_R1,S3_R1$V1>=13.8&S3_R1$V1<17.1)$V2),max(subset(S3_R1,S3_R1$V1>=17.1&S3_R1$V1<18.5)$V2))
S4_R2R_peaks<-data.frame(max(subset(S4_R2R,S4_R2R$V1>12.5&S4_R2R$V1<13.8)$V2),max(subset(S4_R2R,S4_R2R$V1>=13.8&S4_R2R$V1<17.1)$V2),max(subset(S4_R2R,S4_R2R$V1>=17.1&S4_R2R$V1<18.5)$V2))
S4_R1_peaks<-data.frame(max(subset(S4_R1,S4_R1$V1>12.5&S4_R1$V1<13.8)$V2),max(subset(S4_R1,S4_R1$V1>=13.8&S4_R1$V1<17.1)$V2),max(subset(S4_R1,S4_R1$V1>=17.1&S4_R1$V1<18.5)$V2))
S5_R2R_peaks<-data.frame(max(subset(S5_R2R,S5_R2R$V1>12.5&S5_R2R$V1<13.8)$V2),max(subset(S5_R2R,S5_R2R$V1>=13.8&S5_R2R$V1<17.1)$V2),max(subset(S5_R2R,S5_R2R$V1>=17.1&S5_R2R$V1<18.5)$V2))
S5_R1_peaks<-data.frame(max(subset(S5_R1,S5_R1$V1>12.5&S5_R1$V1<13.8)$V2),max(subset(S5_R1,S5_R1$V1>=13.8&S5_R1$V1<17.1)$V2),max(subset(S5_R1,S5_R1$V1>=17.1&S5_R1$V1<18.5)$V2))
S6_R2R_peaks<-data.frame(max(subset(S6_R2R,S6_R2R$V1>12.5&S6_R2R$V1<13.8)$V2),max(subset(S6_R2R,S6_R2R$V1>=13.8&S6_R2R$V1<17.1)$V2),max(subset(S6_R2R,S6_R2R$V1>=17.1&S6_R2R$V1<18.5)$V2))

################################################################

