#install.packages("Metrics")
library(Metrics)
#install.packages("ggplot2")
library(ggplot2)
#install.packages("BBmisc")
library(BBmisc)

#alle Fehlertabellen einlesen Verkehr und Zeit

setwd("C:/Users/nick1/OneDrive - uni-muenster.de/UNI/Bachelorarbeit/Paper")
getwd()
Fehler_CO2_Zeit_test=read.csv("Daten/Verkehr_Zeit/Fehler_CO2_Zeit_test.csv", sep=" ")
Fehler_CO2_Verkehr_test=read.csv("Daten/Verkehr_Zeit/Fehler_CO2_Verkehr_test.csv", sep=" ")
Fehler_NH3_Zeit_test=read.csv("Daten/Verkehr_Zeit/Fehler_NH3_Zeit_test.csv", sep=" ")
Fehler_NH3_Verkehr_test=read.csv("Daten/Verkehr_Zeit/Fehler_NH3_Verkehr_test.csv", sep=" ")
Fehler_NO_Zeit_test=read.csv("Daten/Verkehr_Zeit/Fehler_NO_Zeit_test.csv", sep=" ")
Fehler_NO_Verkehr_test=read.csv("Daten/Verkehr_Zeit/Fehler_NO_Verkehr_test.csv", sep=" ")
Fehler_NOx_Verkehr_test=read.csv("Daten/Verkehr_Zeit/Fehler_NOx_Verkehr_test.csv", sep=" ")
Fehler_O3_Zeit_test=read.csv("Daten/Verkehr_Zeit/Fehler_O3_Zeit_test.csv", sep=" ")
Fehler_O3_Verkehr_test=read.csv("Daten/Verkehr_Zeit/Fehler_O3_Verkehr_test.csv", sep=" ")
Fehler_PM1_Zeit_test=read.csv("Daten/Verkehr_Zeit/Fehler_PM1_Zeit_test.csv", sep=" ")
Fehler_PM1_Verkehr_test=read.csv("Daten/Verkehr_Zeit/Fehler_PM1_Verkehr_test.csv", sep=" ")
Fehler_PM2.5_Zeit_test=read.csv("Daten/Verkehr_Zeit/Fehler_PM2.5_Zeit_test.csv", sep=" ")
Fehler_PM2.5_Verkehr_test=read.csv("Daten/Verkehr_Zeit/Fehler_PM2.5_Verkehr_test.csv", sep=" ")
Fehler_PM10_Zeit_test=read.csv("Daten/Verkehr_Zeit/Fehler_PM10_Zeit_test.csv", sep=" ")
Fehler_PM10_Verkehr_test=read.csv("Daten/Verkehr_Zeit/Fehler_PM10_Verkehr_test.csv", sep=" ")
Fehler_PN10_Zeit_test=read.csv("Daten/Verkehr_Zeit/Fehler_PN10_Zeit_test.csv", sep=" ")
Fehler_PN10_Verkehr_test=read.csv("Daten/Verkehr_Zeit/Fehler_PN10_Verkehr_test.csv", sep=" ")
#bis 20er-Werte
Fehler_NO2_Verkehr_test=read.csv("Daten/Verkehr_Zeit/bis_20/Fehler_NO2_Verkehr_test.csv", sep=" ")
Fehler_NO2_Zeit_test=read.csv("Daten/Verkehr_Zeit/bis_20/Fehler_NO2_Zeit_test.csv", sep=" ")
Fehler_NOx_Zeit_test=read.csv("Daten/Verkehr_Zeit/bis_20/Fehler_NOx_Zeit_test.csv", sep=" ")
#-------------------------------------------------

Fehler_CO2_Schall_test=read.csv("Daten/Schall/Fehler_CO2_test.csv", sep=" ")
Fehler_NO2_Schall_test=read.csv("Daten/Schall/Fehler_NO2_mitlNOx_test.csv", sep=" ")
Fehler_NO_Schall_test=read.csv("Daten/Schall/Fehler_NO_mitlNOx_test.csv", sep=" ")
Fehler_O3_Schall_test=read.csv("Daten/Schall/Fehler_O3_test.csv", sep=" ")
Fehler_PM1_Schall_test=read.csv("Daten/Schall/Fehler_PM1_test.csv", sep=" ")
Fehler_PM2.5_Schall_test=read.csv("Daten/Schall/Fehler_PM2.5_test.csv", sep=" ")
Fehler_PM10_Schall_test=read.csv("Daten/Schall/Fehler_PM10_test.csv", sep=" ")
Fehler_PN10_Schall_test=read.csv("Daten/Schall/Fehler_PN10_test.csv", sep=" ")
#bis 20er Werte 

Fehler_NH3_Schall_test=read.csv("Daten/Schall/bis_20/Fehler_NH3_test.csv", sep=" ")
Fehler_NOx_Schall_test=read.csv("Daten/Schall/bis_20/Fehler_NOx_test.csv", sep=" ")
#-----------------------------------------------------------------------------------------------------------------------
#-----------------------------------------------------------------------------------------------------------------------
###########
#        ##
#  RMSE  ##
#        ##
###########



#Schall
RMSE_test_Schall=data.frame(matrix(nrow=8, ncol=21))

RMSE_test_Schall[1,]=apply(Fehler_CO2_Schall_test[,3:23], MARGIN=2, FUN =rmse, actual=Fehler_CO2_Schall_test[,2])
RMSE_test_Schall[2,]=apply(Fehler_NO_Schall_test[,3:23], MARGIN=2, FUN =rmse, actual=Fehler_NO_Schall_test[,2])
RMSE_test_Schall[3,]=apply(Fehler_NO2_Schall_test[,3:23], MARGIN=2, FUN =rmse, actual=Fehler_NO2_Schall_test[,2])
RMSE_test_Schall[4,]=apply(Fehler_O3_Schall_test[,3:23], MARGIN=2, FUN =rmse, actual=Fehler_O3_Schall_test[,2])
RMSE_test_Schall[5,]=apply(Fehler_PM1_Schall_test[,3:23], MARGIN=2, FUN =rmse, actual=Fehler_PM1_Schall_test[,2])
RMSE_test_Schall[6,]=apply(Fehler_PM2.5_Schall_test[,3:23], MARGIN=2, FUN =rmse, actual=Fehler_PM2.5_Schall_test[,2])
RMSE_test_Schall[7,]=apply(Fehler_PM10_Schall_test[,3:23], MARGIN=2, FUN =rmse, actual=Fehler_PM10_Schall_test[,2])
RMSE_test_Schall[8,]=apply(Fehler_PN10_Schall_test[,3:23], MARGIN=2, FUN =rmse, actual=Fehler_PN10_Schall_test[,2])
RMSE_test_Schall=round(RMSE_test_Schall, digits=3)
rownames(RMSE_test_Schall)=c("CO2", "NO", "NO2", "O3", "PM1", "PM2.5", "PM10", "PN10")
colnames(RMSE_test_Schall)=c("hyp_1", "hyp_2", "hyp_3", "hyp_4", "hyp_5", "hyp_6", "hyp_7", 
                      "hyp_8", "hyp_9", "hyp_10", " ", "log_1", "log_2", "log_3", "log_4", "log_5", "log_6", 
                      "log_7", "log_8", "log_9", "log_10")
write.table(RMSE_test_Schall, file="RMSE_test_Schall.csv")

#bis 20er-Werte
RMSE_test_Schall_20=data.frame(matrix(nrow=2, ncol=21))
RMSE_test_Schall_20[1,]=apply(Fehler_NH3_Schall_test[,3:23], MARGIN=2, FUN =rmse, actual=Fehler_NH3_Schall_test[,2])
RMSE_test_Schall_20[2,]=apply(Fehler_NOx_Schall_test[,3:23], MARGIN=2, FUN =rmse, actual=Fehler_NOx_Schall_test[,2])
RMSE_test_Schall_20=round(RMSE_test_Schall_20, digits=3)
rownames(RMSE_test_Schall_20)=c("NH3", "NOx")
colnames(RMSE_test_Schall_20)=c("hyp_11", "hyp_12", "hyp_13", "hyp_14", "hyp_15", "hyp_16", "hyp_17", 
                                "hyp_18", "hyp_19", "hyp_20", " ", "log_11", "log_12", "log_13", "log_14", 
                                "log_15", "log_16", "log_17", "log_18", "log_19", "log_20")

write.table(RMSE_test_Schall_20, file="RMSE_test_Schall_20.csv")
#Zeitdaten
RMSE_test_Zeit=data.frame(matrix(nrow=8, ncol=21))
RMSE_test_Zeit[1,]=apply(Fehler_CO2_Zeit_test[,3:23], MARGIN=2, FUN =rmse, actual=Fehler_CO2_Zeit_test[,2])
RMSE_test_Zeit[2,]=apply(Fehler_NH3_Zeit_test[,3:23], MARGIN=2, FUN =rmse, actual=Fehler_NH3_Zeit_test[,2])
RMSE_test_Zeit[3,]=apply(Fehler_NO_Zeit_test[,3:23], MARGIN=2, FUN =rmse, actual=Fehler_NO_Zeit_test[,2])
RMSE_test_Zeit[4,]=apply(Fehler_O3_Zeit_test[,3:23], MARGIN=2, FUN =rmse, actual=Fehler_O3_Zeit_test[,2])
RMSE_test_Zeit[5,]=apply(Fehler_PM1_Zeit_test[,3:23], MARGIN=2, FUN =rmse, actual=Fehler_PM1_Zeit_test[,2])
RMSE_test_Zeit[6,]=apply(Fehler_PM2.5_Zeit_test[,3:23], MARGIN=2, FUN =rmse, actual=Fehler_PM2.5_Zeit_test[,2])
RMSE_test_Zeit[7,]=apply(Fehler_PM10_Zeit_test[,3:23], MARGIN=2, FUN =rmse, actual=Fehler_PM10_Zeit_test[,2])
RMSE_test_Zeit[8,]=apply(Fehler_PN10_Zeit_test[,3:23], MARGIN=2, FUN =rmse, actual=Fehler_PN10_Zeit_test[,2])
RMSE_test_Zeit=round(RMSE_test_Zeit, digits=3)
colnames(RMSE_test_Zeit)=c("hyp_1", "hyp_2", "hyp_3", "hyp_4", "hyp_5", "hyp_6", "hyp_7", 
                           "hyp_8", "hyp_9", "hyp_10", " ", "log_1", "log_2", "log_3", "log_4", "log_5", "log_6", 
                           "log_7", "log_8", "log_9", "log_10")
rownames(RMSE_test_Zeit)=c("CO2" ,"NH3" ,"NO", "O3", "PM1", "PM2.5", "PM10", "PN10")
write.table(RMSE_test_Zeit, file="RMSE_test_Zeit.csv")

#bis 20er-Werte
RMSE_test_Zeit_20=data.frame(matrix(nrow=2, ncol=21))
RMSE_test_Zeit_20[1,]=apply(Fehler_NO2_Zeit_test[,3:23], MARGIN=2, FUN =rmse, actual=Fehler_NO2_Zeit_test[,2])
RMSE_test_Zeit_20[2,]=apply(Fehler_NOx_Zeit_test[,3:23], MARGIN=2, FUN =rmse, actual=Fehler_NOx_Zeit_test[,2])
RMSE_test_Zeit_20=round(RMSE_test_Zeit_20, digits=3)
colnames(RMSE_test_Zeit_20)=c("hyp_11", "hyp_12", "hyp_13", "hyp_14", "hyp_15", "hyp_16", "hyp_17", 
                           "hyp_18", "hyp_19", "hyp_20", " ", "log_11", "log_12", "log_13", "log_14", 
                           "log_15", "log_16", "log_17", "log_18", "log_19", "log_20")
rownames(RMSE_test_Zeit_20)=c("NO2" ,"NOx")
write.table(RMSE_test_Zeit_20, file="RMSE_test_Zeit_20.csv")


#Verkehrsdaten
RMSE_test_Verkehr=data.frame(matrix(nrow=9, ncol=21))
RMSE_test_Verkehr[1,]=apply(Fehler_CO2_Verkehr_test[,3:23], MARGIN=2, FUN =rmse, actual=Fehler_CO2_Verkehr_test[,2])
RMSE_test_Verkehr[2,]=apply(Fehler_NH3_Verkehr_test[,3:23], MARGIN=2, FUN =rmse, actual=Fehler_NH3_Verkehr_test[,2])
RMSE_test_Verkehr[3,]=apply(Fehler_NO_Verkehr_test[,3:23], MARGIN=2, FUN =rmse, actual=Fehler_NO_Verkehr_test[,2])
RMSE_test_Verkehr[4,]=apply(Fehler_NOx_Verkehr_test[,3:23], MARGIN=2, FUN =rmse, actual=Fehler_NOx_Verkehr_test[,2])
RMSE_test_Verkehr[5,]=apply(Fehler_O3_Verkehr_test[,3:23], MARGIN=2, FUN =rmse, actual=Fehler_O3_Verkehr_test[,2])
RMSE_test_Verkehr[6,]=apply(Fehler_PM1_Verkehr_test[,3:23], MARGIN=2, FUN =rmse, actual=Fehler_PM1_Verkehr_test[,2])
RMSE_test_Verkehr[7,]=apply(Fehler_PM2.5_Verkehr_test[,3:23], MARGIN=2, FUN =rmse, actual=Fehler_PM2.5_Verkehr_test[,2])
RMSE_test_Verkehr[8,]=apply(Fehler_PM10_Verkehr_test[,3:23], MARGIN=2, FUN =rmse, actual=Fehler_PM10_Verkehr_test[,2])
RMSE_test_Verkehr[9,]=apply(Fehler_PN10_Verkehr_test[,3:23], MARGIN=2, FUN =rmse, actual=Fehler_PN10_Verkehr_test[,2])
RMSE_test_Verkehr=round(RMSE_test_Verkehr, digits=3)
colnames(RMSE_test_Verkehr)=c("hyp_1", "hyp_2", "hyp_3", "hyp_4", "hyp_5", "hyp_6", "hyp_7", 
                              "hyp_8", "hyp_9", "hyp_10", " ", "log_1", "log_2", "log_3", "log_4", "log_5", "log_6", 
                              "log_7", "log_8", "log_9", "log_10")
rownames(RMSE_test_Verkehr)=c("CO2" ,"NH3" ,"NO" , "NOx", "O3", "PM1", "PM2.5", "PM10", "PN10")
write.table(RMSE_test_Verkehr, file="RMSE_test_Verkehr.csv")

#bis 20er-Werte
RMSE_test_Verkehr_20=data.frame(matrix(nrow=1, ncol=21))
RMSE_test_Verkehr_20[1,]=apply(Fehler_NO2_Verkehr_test[,3:23], MARGIN=2, FUN =rmse, actual=Fehler_NO2_Verkehr_test[,2])
RMSE_test_Verkehr_20=round(RMSE_test_Verkehr_20, digits=3)
colnames(RMSE_test_Verkehr_20)=c("hyp_11", "hyp_12", "hyp_13", "hyp_14", "hyp_15", "hyp_16", "hyp_17", 
                                 "hyp_18", "hyp_19", "hyp_20", " ", "log_11", "log_12", "log_13", "log_14", 
                                 "log_15", "log_16", "log_17", "log_18", "log_19", "log_20")
rownames(RMSE_test_Verkehr_20)=c("NO2")
write.table(RMSE_test_Verkehr_20, file="RMSE_test_Verkehr_20.csv")

Fehlerwerttabelle=data.frame(matrix(nrow=30, ncol=8))
rownames(Fehlerwerttabelle)=c("CO2_Sound", "CO2_Traffic", "CO2_Time", "NH3_Sound", 
"NH3_Traffic", "NH3_Time", "NO_Sound", "NO_Traffic", "NO_Time", "NO2_Sound", 
"NO2_Traffic", "NO2_Time", "NOx_Sound", "NOx_Traffic", "NOx_Time", "O3_Sound", 
"O3_Traffic", "O3_Time", "PM1_Sound", "PM1_Traffic", "PM1_Time", "PM2.5_Sound", 
"PM2.5_Traffic", "PM2.5_Time", "PM10_Sound", "PM10_Traffic", "PM10_Time", 
"PN10_Sound", "PN10_Traffic", "PN10_Time")

colnames(Fehlerwerttabelle)=c("RMSE", "Rankcorrellation", "SD'", "SD", "NMB", "R", "NMSD", "MEF")


Fehlerwerttabelle[,1]=c(RMSE_test_Schall[1,6], RMSE_test_Verkehr[1,13], RMSE_test_Zeit[1,20], 
                    RMSE_test_Schall_20[1,5], RMSE_test_Verkehr[2,1],RMSE_test_Zeit[2,12],
                    RMSE_test_Schall[2,6], RMSE_test_Verkehr[3,10], RMSE_test_Zeit[3,10],
                    RMSE_test_Schall[3,3], RMSE_test_Verkehr_20[1,1], RMSE_test_Zeit_20[1,7],
                    RMSE_test_Schall_20[2,13], RMSE_test_Verkehr[4,16], RMSE_test_Zeit_20[2,9],
                    RMSE_test_Schall[4,1], RMSE_test_Verkehr[5,9], RMSE_test_Zeit[4,2],
                    RMSE_test_Schall[5,1], RMSE_test_Verkehr[6,12], RMSE_test_Zeit[5,17],
                    RMSE_test_Schall[6,8], RMSE_test_Verkehr[7,14], RMSE_test_Zeit[6,1],
                    RMSE_test_Schall[7,8], RMSE_test_Verkehr[8,5], RMSE_test_Zeit[7,10],
                    RMSE_test_Schall[8,17], RMSE_test_Verkehr[9,15], RMSE_test_Zeit[8,7])

#-----------------------------------------------------------------------------------------------------------------------
#-----------------------------------------------------------------------------------------------------------------------
######################
#                   ##
# Rankkorrelation   ##
#                   ##
######################
ran_corr=function(x, y){
  cor(x,y, method="spearman")
}  


#Schall
Ran_Schall=data.frame(matrix(nrow=8, ncol=21))
Ran_Schall[1,]=apply(Fehler_CO2_Schall_test[,3:23], MARGIN=2, FUN =ran_corr, Fehler_CO2_Schall_test[,2])
Ran_Schall[2,]=apply(Fehler_NO_Schall_test[,3:23], MARGIN=2, FUN =ran_corr, Fehler_NO_Schall_test[,2])
Ran_Schall[3,]=apply(Fehler_NO2_Schall_test[,3:23], MARGIN=2, FUN =ran_corr, Fehler_NO2_Schall_test[,2])
Ran_Schall[4,]=apply(Fehler_O3_Schall_test[,3:23], MARGIN=2, FUN =ran_corr, Fehler_O3_Schall_test[,2])
Ran_Schall[5,]=apply(Fehler_PM1_Schall_test[,3:23], MARGIN=2, FUN =ran_corr, Fehler_PM1_Schall_test[,2])
Ran_Schall[6,]=apply(Fehler_PM2.5_Schall_test[,3:23], MARGIN=2, FUN =ran_corr, Fehler_PM2.5_Schall_test[,2])
Ran_Schall[7,]=apply(Fehler_PM10_Schall_test[,3:23], MARGIN=2, FUN =ran_corr, Fehler_PM10_Schall_test[,2])
Ran_Schall[8,]=apply(Fehler_PN10_Schall_test[,3:23], MARGIN=2, FUN =ran_corr, Fehler_PN10_Schall_test[,2])
Ran_Schall=round(Ran_Schall, digits=3)
colnames(Ran_Schall)=c("hyp_1", "hyp_2", "hyp_3", "hyp_4", "hyp_5", "hyp_6", "hyp_7", 
                        "hyp_8", "hyp_9", "hyp_10", " ", "log_1", "log_2", "log_3", "log_4", "log_5", "log_6", 
                        "log_7", "log_8", "log_9", "log_10")
rownames(Ran_Schall)=c("CO2" ,"NO", "NO2", "O3", "PM1", "PM2.5", "PM10", "PN10")

write.table(Ran_Schall, file="Rankorr_Schall.csv")

#bis 20er-Werte
Ran_Schall_20=data.frame(matrix(nrow=2, ncol=21))
Ran_Schall_20[1,]=apply(Fehler_NH3_Schall_test[,3:23], MARGIN=2, FUN =ran_corr, Fehler_NH3_Schall_test[,2])
Ran_Schall_20[2,]=apply(Fehler_NOx_Schall_test[,3:23], MARGIN=2, FUN =ran_corr, Fehler_NOx_Schall_test[,2])

Ran_Schall_20=round(Ran_Schall_20, digits=3)
colnames(Ran_Schall_20)=c("hyp_1", "hyp_2", "hyp_3", "hyp_4", "hyp_5", "hyp_6", "hyp_7", 
                           "hyp_8", "hyp_9", "hyp_10", " ", "log_1", "log_2", "log_3", "log_4", "log_5", "log_6", 
                           "log_7", "log_8", "log_9", "log_10")
rownames(Ran_Schall_20)=c("NH3", "NOx")

write.table(Ran_Schall_20, file="Rankorr_Schall_20.csv")

#Zeit 
Ran_Zeit=data.frame(matrix(nrow=8, ncol=21))
Ran_Zeit[1,]=apply(Fehler_CO2_Zeit_test[,3:23], MARGIN=2, FUN =ran_corr, Fehler_CO2_Zeit_test[,2])
Ran_Zeit[2,]=apply(Fehler_NH3_Zeit_test[,3:23], MARGIN=2, FUN =ran_corr, Fehler_NH3_Zeit_test[,2])
Ran_Zeit[3,]=apply(Fehler_NO_Zeit_test[,3:23], MARGIN=2, FUN =ran_corr, Fehler_NO_Zeit_test[,2])
Ran_Zeit[4,]=apply(Fehler_O3_Zeit_test[,3:23], MARGIN=2, FUN =ran_corr, Fehler_O3_Zeit_test[,2])
Ran_Zeit[5,]=apply(Fehler_PM1_Zeit_test[,3:23], MARGIN=2, FUN =ran_corr, Fehler_PM1_Zeit_test[,2])
Ran_Zeit[6,]=apply(Fehler_PM2.5_Zeit_test[,3:23], MARGIN=2, FUN =ran_corr, Fehler_PM2.5_Zeit_test[,2])
Ran_Zeit[7,]=apply(Fehler_PM10_Zeit_test[,3:23], MARGIN=2, FUN =ran_corr, Fehler_PM10_Zeit_test[,2])
Ran_Zeit[8,]=apply(Fehler_PN10_Zeit_test[,3:23], MARGIN=2, FUN =ran_corr, Fehler_PN10_Zeit_test[,2])
Ran_Zeit=round(Ran_Zeit, digits=3)
colnames(Ran_Zeit)=c("hyp_1", "hyp_2", "hyp_3", "hyp_4", "hyp_5", "hyp_6", "hyp_7", 
                         "hyp_8", "hyp_9", "hyp_10", " ", "log_1", "log_2", "log_3", "log_4", "log_5", "log_6", 
                         "log_7", "log_8", "log_9", "log_10")
rownames(Ran_Zeit)=c("CO2" ,"NH3" ,"NO", "O3", "PM1", "PM2.5", "PM10", "PN10")

write.table(Ran_Zeit, file="Rankorr_Zeit.csv")

#bis 20er-Werte
Ran_Zeit_20=data.frame(matrix(nrow=2, ncol=21))
Ran_Zeit_20[1,]=apply(Fehler_NO2_Zeit_test[,3:23], MARGIN=2, FUN =ran_corr, Fehler_NO2_Zeit_test[,2])
Ran_Zeit_20[2,]=apply(Fehler_NOx_Zeit_test[,3:23], MARGIN=2, FUN =ran_corr, Fehler_NOx_Zeit_test[,2])
Ran_Zeit_20=round(Ran_Zeit_20, digits=3)
colnames(Ran_Zeit_20)=c("hyp_1", "hyp_2", "hyp_3", "hyp_4", "hyp_5", "hyp_6", "hyp_7", 
                     "hyp_8", "hyp_9", "hyp_10", " ", "log_1", "log_2", "log_3", "log_4", "log_5", "log_6", 
                     "log_7", "log_8", "log_9", "log_10")
rownames(Ran_Zeit_20)=c("NO2" ,"NOx")

write.table(Ran_Zeit_20, file="Rankorr_Zeit_20.csv")

#Verkehr
Ran_Verkehr=data.frame(matrix(nrow=9, ncol=21))
Ran_Verkehr[1,]=apply(Fehler_CO2_Verkehr_test[,3:23], MARGIN=2, FUN =ran_corr, Fehler_CO2_Verkehr_test[,2])
Ran_Verkehr[2,]=apply(Fehler_NH3_Verkehr_test[,3:23], MARGIN=2, FUN =ran_corr, Fehler_NH3_Verkehr_test[,2])
Ran_Verkehr[3,]=apply(Fehler_NO_Verkehr_test[,3:23], MARGIN=2, FUN =ran_corr, Fehler_NO_Verkehr_test[,2])
Ran_Verkehr[4,]=apply(Fehler_NOx_Verkehr_test[,3:23], MARGIN=2, FUN =ran_corr, Fehler_NOx_Verkehr_test[,2])
Ran_Verkehr[5,]=apply(Fehler_O3_Verkehr_test[,3:23], MARGIN=2, FUN =ran_corr, Fehler_O3_Verkehr_test[,2])
Ran_Verkehr[6,]=apply(Fehler_PM1_Verkehr_test[,3:23], MARGIN=2, FUN =ran_corr, Fehler_PM1_Verkehr_test[,2])
Ran_Verkehr[7,]=apply(Fehler_PM2.5_Verkehr_test[,3:23], MARGIN=2, FUN =ran_corr, Fehler_PM2.5_Verkehr_test[,2])
Ran_Verkehr[8,]=apply(Fehler_PM10_Verkehr_test[,3:23], MARGIN=2, FUN =ran_corr, Fehler_PM10_Verkehr_test[,2])
Ran_Verkehr[9,]=apply(Fehler_PN10_Verkehr_test[,3:23], MARGIN=2, FUN =ran_corr, Fehler_PN10_Verkehr_test[,2])
Ran_Verkehr=round(Ran_Verkehr, digits=3)
colnames(Ran_Verkehr)=c("hyp_1", "hyp_2", "hyp_3", "hyp_4", "hyp_5", "hyp_6", "hyp_7", 
                     "hyp_8", "hyp_9", "hyp_10", " ", "log_1", "log_2", "log_3", "log_4", "log_5", "log_6", 
                     "log_7", "log_8", "log_9", "log_10")
rownames(Ran_Verkehr)=c("CO2" ,"NH3" ,"NO", "NOx", "O3", "PM1", "PM2.5", "PM10", "PN10")

write.table(Ran_Verkehr, file="Rankorr_Verkehr.csv")

#bis 20er-Werte
Ran_Verkehr_20=data.frame(matrix(nrow=1, ncol=21))
Ran_Verkehr_20[1,]=apply(Fehler_NO2_Verkehr_test[,3:23], MARGIN=2, FUN =ran_corr, Fehler_NO2_Verkehr_test[,2])
Ran_Verkehr_20=round(Ran_Verkehr_20, digits=3)
colnames(Ran_Verkehr_20)=c("hyp_1", "hyp_2", "hyp_3", "hyp_4", "hyp_5", "hyp_6", "hyp_7", 
                        "hyp_8", "hyp_9", "hyp_10", " ", "log_1", "log_2", "log_3", "log_4", "log_5", "log_6", 
                        "log_7", "log_8", "log_9", "log_10")
rownames(Ran_Verkehr_20)=c("NO2")

write.table(Ran_Verkehr_20, file="Rankorr_Verkehr_20.csv")


Fehlerwerttabelle[,2]=c(Ran_Schall[1,6], Ran_Verkehr[1,13], Ran_Zeit[1,20], 
                        Ran_Schall_20[1,5], Ran_Verkehr[2,1],Ran_Zeit[2,12],
                        Ran_Schall[2,6], Ran_Verkehr[3,10], Ran_Zeit[3,10],
                        Ran_Schall[3,3], Ran_Verkehr_20[1,1], Ran_Zeit_20[1,7],
                        Ran_Schall_20[2,13], Ran_Verkehr[4,16], Ran_Zeit_20[2,9],
                        Ran_Schall[4,1], Ran_Verkehr[5,9], Ran_Zeit[4,2],
                        Ran_Schall[5,1], Ran_Verkehr[6,12], Ran_Zeit[5,17],
                        Ran_Schall[6,8], Ran_Verkehr[7,14], Ran_Zeit[6,1],
                        Ran_Schall[7,8], Ran_Verkehr[8,5], Ran_Zeit[7,10],
                        Ran_Schall[8,17], Ran_Verkehr[9,15], Ran_Zeit[8,7])

#-----------------------------------------------------------------------------------------------------------------------
#-----------------------------------------------------------------------------------------------------------------------
##############
#           ##
#     SD'   ##
#           ##
##############

#Pr?fen auf Normalverteilung der Daten
shapiro.test(Fehler_CO2_Schall_test$hyp_6)
shapiro.test(Fehler_CO2_Schall_test$gemessen)
shapiro.test(Fehler_CO2_Verkehr_test$log_2)
shapiro.test(Fehler_CO2_Verkehr_test$gemessen)
shapiro.test(Fehler_CO2_Zeit_test$log_9) #nein
shapiro.test(Fehler_CO2_Zeit_test$gemessen)

shapiro.test(Fehler_NH3_Schall_test$hyp_15)
shapiro.test(Fehler_NH3_Schall_test$gemessen)
shapiro.test(Fehler_NH3_Verkehr_test$hyp_1)
shapiro.test(Fehler_NH3_Verkehr_test$gemessen)
shapiro.test(Fehler_NH3_Zeit_test$log_1)
shapiro.test(Fehler_NH3_Zeit_test$gemessen)

shapiro.test(Fehler_NO_Schall_test$hyp_6)
shapiro.test(Fehler_NO_Schall_test$gemessen)
shapiro.test(Fehler_NO_Verkehr_test$hyp_10)
shapiro.test(Fehler_NO_Verkehr_test$gemessen)
shapiro.test(Fehler_NO_Zeit_test$hyp_10)
shapiro.test(Fehler_NO_Zeit_test$gemessen)

shapiro.test(Fehler_NO2_Schall_test$log_3) #nein
shapiro.test(Fehler_NO2_Schall_test$gemessen)
shapiro.test(Fehler_NO2_Verkehr_test$hyp_11) #nein
shapiro.test(Fehler_NO2_Verkehr_test$gemessen)
shapiro.test(Fehler_NO2_Zeit_test$hyp_17)
shapiro.test(Fehler_NO2_Zeit_test$gemessen)

shapiro.test(Fehler_NOx_Schall_test$log_12)
shapiro.test(Fehler_NOx_Schall_test$gemessen)
shapiro.test(Fehler_NOx_Verkehr_test$log_5)
shapiro.test(Fehler_NOx_Verkehr_test$gemessen)
shapiro.test(Fehler_NOx_Zeit_test$hyp_19)
shapiro.test(Fehler_NOx_Zeit_test$gemessen)

shapiro.test(Fehler_O3_Schall_test$hyp_1)
shapiro.test(Fehler_O3_Schall_test$gemessen) #nein
shapiro.test(Fehler_O3_Verkehr_test$hyp_9) #nein
shapiro.test(Fehler_O3_Verkehr_test$gemessen)
shapiro.test(Fehler_O3_Zeit_test$hyp_2)
shapiro.test(Fehler_O3_Zeit_test$gemessen)

shapiro.test(Fehler_PM1_Schall_test$hyp_1) #nein
shapiro.test(Fehler_PM1_Schall_test$gemessen)
shapiro.test(Fehler_PM1_Verkehr_test$log_1) #nein
shapiro.test(Fehler_PM1_Verkehr_test$gemessen)
shapiro.test(Fehler_PM1_Zeit_test$log_6)
shapiro.test(Fehler_PM1_Zeit_test$gemessen)

shapiro.test(Fehler_PM2.5_Schall_test$hyp_8)
shapiro.test(Fehler_PM2.5_Schall_test$gemessen)
shapiro.test(Fehler_PM2.5_Verkehr_test$log_3)
shapiro.test(Fehler_PM2.5_Verkehr_test$gemessen)
shapiro.test(Fehler_PM2.5_Zeit_test$hyp_1) #nein
shapiro.test(Fehler_PM2.5_Zeit_test$gemessen)

shapiro.test(Fehler_PM10_Schall_test$hyp_8)
shapiro.test(Fehler_PM10_Schall_test$gemessen)
shapiro.test(Fehler_PM10_Verkehr_test$hyp_5) #nein
shapiro.test(Fehler_PM10_Verkehr_test$gemessen)
shapiro.test(Fehler_PM10_Zeit_test$hyp_10) #nein
shapiro.test(Fehler_PM10_Zeit_test$gemessen)

shapiro.test(Fehler_PN10_Schall_test$log_6) #nein
shapiro.test(Fehler_PN10_Schall_test$gemessen)
shapiro.test(Fehler_PN10_Verkehr_test$log_4)
shapiro.test(Fehler_PN10_Verkehr_test$gemessen)
shapiro.test(Fehler_PN10_Zeit_test$hyp_7)
shapiro.test(Fehler_PN10_Zeit_test$gemessen)

#alle Daten logarithmieren, die keine Normalverteilung aufweisen.
#CO2_Zeit, NO2_Schall, NO2_Verkehr, O3_Schall_gemessen, O3_Verkehr, 
# PM1_Schall, PM1_Verkehr, PM2.5_Zeit, PM10_Verkehr, PM10_Zeit, PN10_Schall
log_CO2_Zeit_test=cbind(log(Fehler_CO2_Zeit_test[,2:12]), log(Fehler_CO2_Zeit_test[,14:23]))
log_NO2_Verkehr_test=cbind(log(Fehler_NO2_Verkehr_test[,2:12]), log(Fehler_NO2_Verkehr_test[,14:23]))
log_NO2_Schall_test=cbind(log(Fehler_NO2_Schall_test[,2:12]), log(Fehler_NO2_Schall_test[,14:23]))
log_O3_Verkehr_test=cbind(log(Fehler_O3_Verkehr_test[,2:12]), log(Fehler_O3_Verkehr_test[,14:23]))
log_O3_Schall_test=cbind(log(Fehler_O3_Schall_test[,2:12]), log(Fehler_O3_Schall_test[,14:23]))
log_PM1_Verkehr_test=cbind(log(Fehler_PM1_Verkehr_test[,2:12]), log(Fehler_PM1_Verkehr_test[,14:23]))
log_PM1_Schall_test=cbind(log(Fehler_PM1_Schall_test[,2:12]), log(Fehler_PM1_Schall_test[,14:23]))
log_PM2.5_Zeit_test=cbind(log(Fehler_PM2.5_Zeit_test[,2:12]), log(Fehler_PM2.5_Zeit_test[,14:23]))
log_PM10_Verkehr_test=cbind(log(Fehler_PM10_Verkehr_test[,2:12]), log(Fehler_PM10_Verkehr_test[,14:23]))
log_PM10_Schall_test=cbind(log(Fehler_PM10_Schall_test[,2:12]), log(Fehler_PM10_Schall_test[,14:23]))
log_PN10_Schall_test=cbind(log(Fehler_PN10_Schall_test[,2:12]), log(Fehler_PN10_Schall_test[,14:23]))

#Test auf Normalverteilung nach Logarithmierung
shapiro.test(log_CO2_Zeit_test$log_9) #nein
shapiro.test(log_NO2_Schall_test$log_3)
shapiro.test(log_NO2_Verkehr_test$hyp_11) 
shapiro.test(log_O3_Schall_test$gemessen) 
shapiro.test(log_O3_Verkehr_test$hyp_9) 
shapiro.test(log_PM1_Schall_test$hyp_1) 
shapiro.test(log_PM1_Verkehr_test$log_1) #nein
shapiro.test(log_PM2.5_Zeit_test$hyp_1) #nein
shapiro.test(log_PM10_Verkehr_test$hyp_5) 
shapiro.test(log_PM10_Zeit_test$hyp_10) 
shapiro.test(log_PN10_Schall_test$log_6) 

#SD modelliert 
sd=data.frame(matrix(ncol=2, nrow=30))
colnames(sd)=c("modelled", "observed")
rownames(sd)=c("CO2_Schall", "CO2_Verkehr","CO2_Zeit", "NH3_Schall", "NH3_Verkehr","NH3_Zeit", "NO_Schall", "NO_Verkehr", "NO_Zeit", "NO2_Schall", "NO2_Verkehr", "NO2_Zeit","NOx_Schall", "NOx_Verkehr", "NOx_Zeit","O3_Schall", "O3_Verkehr","O3_Zeit", "PM1_Schall", "PM1_Verkehr", "PM1_Zeit","PM2.5_Schall", "PM2.5_Verkehr", "PM2.5_Zeit", "PM10_Schall", "PM10_Verkehr", "PM10_Zeit", "PN10_Schall", "PN10_Verkehr", "PN10_Zeit")

sd[1,1]=sd(Fehler_CO2_Schall_test$hyp_6, na.rm=T)
sd[2,1]=sd(Fehler_CO2_Verkehr_test$log_2)
sd[3,1]="NA"
sd[1,2]=sd(Fehler_CO2_Schall_test$gemessen)
sd[2,2]=sd(Fehler_CO2_Verkehr_test$gemessen)
sd[3,2]=sd(Fehler_CO2_Zeit_test$gemessen)

sd[4,1]=sd(Fehler_NH3_Schall_test$hyp_15)
sd[5,1]=sd(Fehler_NH3_Verkehr_test$hyp_1)
sd[6,1]=sd(Fehler_NH3_Zeit_test$log_1)
sd[4,2]=sd(Fehler_NH3_Schall_test$gemessen)
sd[5,2]=sd(Fehler_NH3_Verkehr_test$gemessen)
sd[6,2]=sd(Fehler_NH3_Zeit_test$gemessen)

sd[7,1]=sd(Fehler_NO_Schall_test$hyp_6)
sd[8,1]=sd(Fehler_NO_Verkehr_test$hyp_10)
sd[9,1]=sd(Fehler_NO_Zeit_test$hyp_10)
sd[7,2]=sd(Fehler_NO_Schall_test$gemessen)
sd[8,2]=sd(Fehler_NO_Verkehr_test$gemessen)
sd[9,2]=sd(Fehler_NO_Zeit_test$gemessen)

sd[10,1]=sd(log_NO2_Schall_test$log_3)
sd[11,1]=sd(log_NO2_Verkehr_test$hyp_11)
sd[12,1]=sd(Fehler_NO2_Zeit_test$hyp_17)
sd[10,2]=sd(Fehler_NO2_Schall_test$gemessen)
sd[11,2]=sd(Fehler_NO2_Verkehr_test$gemessen)
sd[12,2]=sd(Fehler_NO2_Zeit_test$gemessen)

sd[13,1]=sd(Fehler_NOx_Schall_test$log_12)
sd[14,1]=sd(Fehler_NOx_Verkehr_test$log_5)
sd[15,1]=sd(Fehler_NOx_Zeit_test$hyp_19)
sd[13,2]=sd(Fehler_NOx_Schall_test$gemessen)
sd[14,2]=sd(Fehler_NOx_Verkehr_test$gemessen)
sd[15,2]=sd(Fehler_NOx_Zeit_test$gemessen)

sd[16,1]=sd(Fehler_O3_Schall_test$hyp_1)
sd[17,1]=sd(log_O3_Verkehr_test$hyp_9, na.rm=T)
sd[18,1]=sd(Fehler_O3_Zeit_test$hyp_2)
sd[16,2]=sd(log_O3_Schall_test$gemessen, na.rm=T)
sd[17,2]=sd(Fehler_O3_Verkehr_test$gemessen)
sd[18,2]=sd(Fehler_O3_Zeit_test$gemessen)

sd[19,1]=sd(log_PM1_Schall_test$hyp_1)
sd[20,1]="NA"
sd[21,1]=sd(Fehler_PM1_Zeit_test$log_6)
sd[19,2]=sd(Fehler_PM1_Schall_test$gemessen)
sd[20,2]=sd(Fehler_PM1_Verkehr_test$gemessen)
sd[21,2]=sd(Fehler_PM1_Zeit_test$gemessen)

sd[22,1]=sd(Fehler_PM2.5_Schall_test$hyp_8)
sd[23,1]=sd(Fehler_PM2.5_Verkehr_test$log_3)
sd[24,1]="NA"
sd[22,2]=sd(Fehler_PM2.5_Schall_test$gemessen)
sd[23,2]=sd(Fehler_PM2.5_Verkehr_test$gemessen)
sd[24,2]=sd(Fehler_PM2.5_Zeit_test$gemessen)

sd[25,1]=sd(Fehler_PM10_Schall_test$hyp_8)
sd[26,1]=sd(log_PM10_Verkehr_test$hyp_5, na.rm=T)
sd[27,1]=sd(log_PM10_Zeit_test$hyp_10)
sd[25,2]=sd(Fehler_PM10_Schall_test$gemessen)
sd[26,2]=sd(Fehler_PM10_Verkehr_test$gemessen)
sd[27,2]=sd(Fehler_PM10_Zeit_test$gemessen)

sd[28,1]=sd(log_PN10_Schall_test$log_6, na.rm=T)
sd[29,1]=sd(Fehler_PN10_Verkehr_test$log_4)
sd[30,1]=sd(Fehler_PN10_Zeit_test$hyp_7)
sd[28,2]=sd(Fehler_PN10_Schall_test$gemessen)
sd[29,2]=sd(Fehler_PN10_Verkehr_test$gemessen)
sd[30,2]=sd(Fehler_PN10_Zeit_test$gemessen)

class(sd$modelled)
sd$modelled=as.numeric(sd$modelled)
sd$modelled=round(sd$modelled, digits=3)

Fehlerwerttabelle[,3]=sd$modelled

#-----------------------------------------------------------------------------------------------------------------------
#-----------------------------------------------------------------------------------------------------------------------
################
#             ##
#SD gemessen  ##
#             ##
################
class(sd$observed)
sd$observed=as.numeric(sd$observed)
sd$observed=round(sd$observed, digits=3)
Fehlerwerttabelle[,4]=sd$observed
---------------------------------------------------------------------------------------------------------------------
  #-----------------------------------------------------------------------------------------------------------------------


##############
#           ##
#     R     ##
#           ##
##############
#install.packages("openair")
library(openair)

modStats(Fehler_CO2_Schall_test, mod="hyp_6", obs="gemessen", statistic="r")

Fehlerwerttabelle[1,6]=modStats(Fehler_CO2_Schall_test, mod="hyp_6", obs="gemessen", statistic="r")[1,2]
Fehlerwerttabelle[2,6]=modStats(Fehler_CO2_Verkehr_test, mod="log_2", obs="gemessen", statistic="r")[1,2]
Fehlerwerttabelle[3,6]=modStats(Fehler_CO2_Zeit_test, mod="log_9", obs="gemessen", statistic="r")[1,2]
Fehlerwerttabelle[4,6]=modStats(Fehler_NH3_Schall_test, mod="hyp_15", obs="gemessen", statistic="r")[1,2]
Fehlerwerttabelle[5,6]=modStats(Fehler_NH3_Verkehr_test, mod="hyp_1", obs="gemessen", statistic="r")[1,2]
Fehlerwerttabelle[6,6]=modStats(Fehler_NH3_Zeit_test, mod="log_1", obs="gemessen", statistic="r")[1,2]
Fehlerwerttabelle[7,6]=modStats(Fehler_NO_Schall_test, mod="hyp_6", obs="gemessen", statistic="r")[1,2]
Fehlerwerttabelle[8,6]=modStats(Fehler_NO_Verkehr_test, mod="hyp_10", obs="gemessen", statistic="r")[1,2]
Fehlerwerttabelle[9,6]=modStats(Fehler_NO_Zeit_test, mod="hyp_10", obs="gemessen", statistic="r")[1,2]
Fehlerwerttabelle[10,6]=modStats(Fehler_NO2_Schall_test, mod="log_3", obs="gemessen", statistic="r")[1,2]
Fehlerwerttabelle[11,6]=modStats(Fehler_NO2_Verkehr_test, mod="hyp_11", obs="gemessen", statistic="r")[1,2]
Fehlerwerttabelle[12,6]=modStats(Fehler_NO2_Zeit_test, mod="hyp_17", obs="gemessen", statistic="r")[1,2]
Fehlerwerttabelle[13,6]=modStats(Fehler_NOx_Schall_test, mod="log_12", obs="gemessen", statistic="r")[1,2]
Fehlerwerttabelle[14,6]=modStats(Fehler_NOx_Verkehr_test, mod="log_5", obs="gemessen", statistic="r")[1,2]
Fehlerwerttabelle[15,6]=modStats(Fehler_NOx_Zeit_test, mod="hyp_19", obs="gemessen", statistic="r")[1,2]
Fehlerwerttabelle[16,6]=modStats(Fehler_O3_Schall_test, mod="hyp_1", obs="gemessen", statistic="r")[1,2]
Fehlerwerttabelle[17,6]=modStats(Fehler_O3_Verkehr_test, mod="hyp_9", obs="gemessen", statistic="r")[1,2]
Fehlerwerttabelle[18,6]=modStats(Fehler_O3_Zeit_test, mod="hyp_2", obs="gemessen", statistic="r")[1,2]
Fehlerwerttabelle[19,6]=modStats(Fehler_PM1_Schall_test, mod="hyp_1", obs="gemessen", statistic="r")[1,2]
Fehlerwerttabelle[20,6]=modStats(Fehler_PM1_Verkehr_test, mod="log_1", obs="gemessen", statistic="r")[1,2]
Fehlerwerttabelle[21,6]=modStats(Fehler_PM1_Zeit_test, mod="log_6", obs="gemessen", statistic="r")[1,2]
Fehlerwerttabelle[22,6]=modStats(Fehler_PM2.5_Schall_test, mod="hyp_8", obs="gemessen", statistic="r")[1,2]
Fehlerwerttabelle[23,6]=modStats(Fehler_PM2.5_Verkehr_test, mod="log_3", obs="gemessen", statistic="r")[1,2]
Fehlerwerttabelle[24,6]=modStats(Fehler_PM2.5_Zeit_test, mod="hyp_1", obs="gemessen", statistic="r")[1,2]
Fehlerwerttabelle[25,6]=modStats(Fehler_PM10_Schall_test, mod="hyp_8", obs="gemessen", statistic="r")[1,2]
Fehlerwerttabelle[26,6]=modStats(Fehler_PM10_Verkehr_test, mod="hyp_5", obs="gemessen", statistic="r")[1,2]
Fehlerwerttabelle[27,6]=modStats(Fehler_PM10_Zeit_test, mod="hyp_10", obs="gemessen", statistic="r")[1,2]
Fehlerwerttabelle[28,6]=modStats(Fehler_PN10_Schall_test, mod="log_6", obs="gemessen", statistic="r")[1,2]
Fehlerwerttabelle[29,6]=modStats(Fehler_PN10_Verkehr_test, mod="log_4", obs="gemessen", statistic="r")[1,2]
Fehlerwerttabelle[30,6]=modStats(Fehler_PN10_Zeit_test, mod="hyp_7", obs="gemessen", statistic="r")[1,2]


#-----------------------------------------------------------------------------------------------------------------------
#-----------------------------------------------------------------------------------------------------------------------
##############
#           ##
#     NMB   ##
#           ##
##############



Fehlerwerttabelle[1,5]=modStats(Fehler_CO2_Schall_test, mod="hyp_6", obs="gemessen", statistic="NMB")[1,2]
Fehlerwerttabelle[2,5]=modStats(Fehler_CO2_Verkehr_test, mod="log_2", obs="gemessen", statistic="NMB")[1,2]
Fehlerwerttabelle[3,5]=modStats(Fehler_CO2_Zeit_test, mod="log_9", obs="gemessen", statistic="NMB")[1,2]
Fehlerwerttabelle[4,5]=modStats(Fehler_NH3_Schall_test, mod="hyp_15", obs="gemessen", statistic="NMB")[1,2]
Fehlerwerttabelle[5,5]=modStats(Fehler_NH3_Verkehr_test, mod="hyp_1", obs="gemessen", statistic="NMB")[1,2]
Fehlerwerttabelle[6,5]=modStats(Fehler_NH3_Zeit_test, mod="log_1", obs="gemessen", statistic="NMB")[1,2]
Fehlerwerttabelle[7,5]=modStats(Fehler_NO_Schall_test, mod="hyp_6", obs="gemessen", statistic="NMB")[1,2]
Fehlerwerttabelle[8,5]=modStats(Fehler_NO_Verkehr_test, mod="hyp_10", obs="gemessen", statistic="NMB")[1,2]
Fehlerwerttabelle[9,5]=modStats(Fehler_NO_Zeit_test, mod="hyp_10", obs="gemessen", statistic="NMB")[1,2]
Fehlerwerttabelle[10,5]=modStats(Fehler_NO2_Schall_test, mod="log_3", obs="gemessen", statistic="NMB")[1,2]
Fehlerwerttabelle[11,5]=modStats(Fehler_NO2_Verkehr_test, mod="hyp_11", obs="gemessen", statistic="NMB")[1,2]
Fehlerwerttabelle[12,5]=modStats(Fehler_NO2_Zeit_test, mod="hyp_17", obs="gemessen", statistic="NMB")[1,2]
Fehlerwerttabelle[13,5]=modStats(Fehler_NOx_Schall_test, mod="log_12", obs="gemessen", statistic="NMB")[1,2]
Fehlerwerttabelle[14,5]=modStats(Fehler_NOx_Verkehr_test, mod="log_5", obs="gemessen", statistic="NMB")[1,2]
Fehlerwerttabelle[15,5]=modStats(Fehler_NOx_Zeit_test, mod="hyp_19", obs="gemessen", statistic="NMB")[1,2]
Fehlerwerttabelle[16,5]=modStats(Fehler_O3_Schall_test, mod="hyp_1", obs="gemessen", statistic="NMB")[1,2]
Fehlerwerttabelle[17,5]=modStats(Fehler_O3_Verkehr_test, mod="hyp_9", obs="gemessen", statistic="NMB")[1,2]
Fehlerwerttabelle[18,5]=modStats(Fehler_O3_Zeit_test, mod="hyp_2", obs="gemessen", statistic="NMB")[1,2]
Fehlerwerttabelle[19,5]=modStats(Fehler_PM1_Schall_test, mod="hyp_1", obs="gemessen", statistic="NMB")[1,2]
Fehlerwerttabelle[20,5]=modStats(Fehler_PM1_Verkehr_test, mod="log_1", obs="gemessen", statistic="NMB")[1,2]
Fehlerwerttabelle[21,5]=modStats(Fehler_PM1_Zeit_test, mod="log_6", obs="gemessen", statistic="NMB")[1,2]
Fehlerwerttabelle[22,5]=modStats(Fehler_PM2.5_Schall_test, mod="hyp_8", obs="gemessen", statistic="NMB")[1,2]
Fehlerwerttabelle[23,5]=modStats(Fehler_PM2.5_Verkehr_test, mod="log_3", obs="gemessen", statistic="NMB")[1,2]
Fehlerwerttabelle[24,5]=modStats(Fehler_PM2.5_Zeit_test, mod="hyp_1", obs="gemessen", statistic="NMB")[1,2]
Fehlerwerttabelle[25,5]=modStats(Fehler_PM10_Schall_test, mod="hyp_8", obs="gemessen", statistic="NMB")[1,2]
Fehlerwerttabelle[26,5]=modStats(Fehler_PM10_Verkehr_test, mod="hyp_5", obs="gemessen", statistic="NMB")[1,2]
Fehlerwerttabelle[27,5]=modStats(Fehler_PM10_Zeit_test, mod="hyp_10", obs="gemessen", statistic="NMB")[1,2]
Fehlerwerttabelle[28,5]=modStats(Fehler_PN10_Schall_test, mod="log_6", obs="gemessen", statistic="NMB")[1,2]
Fehlerwerttabelle[29,5]=modStats(Fehler_PN10_Verkehr_test, mod="log_4", obs="gemessen", statistic="NMB")[1,2]
Fehlerwerttabelle[30,5]=modStats(Fehler_PN10_Zeit_test, mod="hyp_7", obs="gemessen", statistic="NMB")[1,2]



---------------------------------------------------------------------------------------------------------------------
#-----------------------------------------------------------------------------------------------------------------------
##############
#           ##
#     NMSD  ##
#           ##
##############

nmsd =function(x,y) {
  (x-y)/y
}

nmsd_Werte= apply(sd[,1, drop=F], MARGIN=2, FUN=nmsd, sd[,2, drop=F])
nmsd_Werte=unlist(nmsd_Werte)
nmsd_Werte=round(nmsd_Werte, digits=3)
Fehlerwerttabelle[,7]=nmsd_Werte

write.csv(Fehlerwerttabelle, file="Fehlerwerttabelle.csv", row.names=T)
#-----------------------------------------------------------------------------------------------------------------------
#-----------------------------------------------------------------------------------------------------------------------
##############
#           ##
#     MEF   ##
#           ##
##############

#install.packages("JBTools")
#library("JBTools")

#Schall
#MEF_Schall=data.frame(matrix(nrow=8, ncol=21))
#MEF_Schall[1,]=apply(Fehler_CO2_Schall_test[,3:23], MARGIN=2, FUN =MEF, Fehler_CO2_Schall_test[,2])
#MEF_Schall[2,]=apply(Fehler_NO_Schall_test[,3:23], MARGIN=2, FUN =MEF, Fehler_NO_Schall_test[,2])
#MEF_Schall[3,]=apply(Fehler_NO2_Schall_test[,3:23], MARGIN=2, FUN =MEF, Fehler_NO2_Schall_test[,2])
#MEF_Schall[4,]=apply(Fehler_O3_Schall_test[,3:23], MARGIN=2, FUN =MEF, Fehler_O3_Schall_test[,2])
#MEF_Schall[5,]=apply(Fehler_PM1_Schall_test[,3:23], MARGIN=2, FUN =MEF, Fehler_PM1_Schall_test[,2])
#MEF_Schall[6,]=apply(Fehler_PM2.5_Schall_test[,3:23], MARGIN=2, FUN =MEF, Fehler_PM2.5_Schall_test[,2])
#MEF_Schall[7,]=apply(Fehler_PM10_Schall_test[,3:23], MARGIN=2, FUN =MEF, Fehler_PM10_Schall_test[,2])
#MEF_Schall[8,]=apply(Fehler_PN10_Schall_test[,3:23], MARGIN=2, FUN =MEF, Fehler_PN10_Schall_test[,2])
#MEF_Schall=round(MEF_Schall, digits=3)
#colnames(MEF_Schall)=c("hyp_1", "hyp_2", "hyp_3", "hyp_4", "hyp_5", "hyp_6", "hyp_7", 
#                       "hyp_8", "hyp_9", "hyp_10", " ", "log_1", "log_2", "log_3", "log_4", "log_5", "log_6", 
#                       "log_7", "log_8", "log_9", "log_10")
#rownames(MEF_Schall)=c("CO2" ,"NO", "NO2", "O3", "PM1", "PM2.5", "PM10", "PN10")
#setwd("\\\\geo/iloek/KLIMA/Klimatologie/klima/Projekte/2019_Masterarbeit_Laura/Auswertung/Statistische_Auswertung_Testdaten/MEF")
#getwd()
#write.table(MEF_Schall, file="MEF_Schall.csv")


#bis 20er-Werte
#MEF_Schall_20=data.frame(matrix(nrow=2, ncol=21))
#MEF_Schall_20[1,]=apply(Fehler_NH3_Schall_test[,3:23], MARGIN=2, FUN =MEF, Fehler_NH3_Schall_test[,2])
#MEF_Schall_20[2,]=apply(Fehler_NOx_Schall_test[,3:23], MARGIN=2, FUN =MEF, Fehler_NOx_Schall_test[,2])

#MEF_Schall_20=round(MEF_Schall_20, digits=3)
#colnames(MEF_Schall_20)=c("hyp_1", "hyp_2", "hyp_3", "hyp_4", "hyp_5", "hyp_6", "hyp_7", 
 #                         "hyp_8", "hyp_9", "hyp_10", " ", "log_1", "log_2", "log_3", "log_4", "log_5", "log_6", 
#                          "log_7", "log_8", "log_9", "log_10")
#rownames(MEF_Schall_20)=c("NH3", "NOx")
#setwd("\\\\geo/iloek/KLIMA/Klimatologie/klima/Projekte/2019_Masterarbeit_Laura/Auswertung/Statistische_Auswertung_Testdaten/MEF")
#getwd()
#write.table(MEF_Schall_20, file="MEF_Schall_20.csv")

#Zeit 
#MEF_Zeit=data.frame(matrix(nrow=8, ncol=21))
#MEF_Zeit[1,]=apply(Fehler_CO2_Zeit_test[,3:23], MARGIN=2, FUN =MEF, Fehler_CO2_Zeit_test[,2])
#MEF_Zeit[2,]=apply(Fehler_NH3_Zeit_test[,3:23], MARGIN=2, FUN =MEF, Fehler_NH3_Zeit_test[,2])
#MEF_Zeit[3,]=apply(Fehler_NO_Zeit_test[,3:23], MARGIN=2, FUN =MEF, Fehler_NO_Zeit_test[,2])
#MEF_Zeit[4,]=apply(Fehler_O3_Zeit_test[,3:23], MARGIN=2, FUN =MEF, Fehler_O3_Zeit_test[,2])
#MEF_Zeit[5,]=apply(Fehler_PM1_Zeit_test[,3:23], MARGIN=2, FUN =MEF, Fehler_PM1_Zeit_test[,2])
#MEF_Zeit[6,]=apply(Fehler_PM2.5_Zeit_test[,3:23], MARGIN=2, FUN =MEF, Fehler_PM2.5_Zeit_test[,2])
#MEF_Zeit[7,]=apply(Fehler_PM10_Zeit_test[,3:23], MARGIN=2, FUN =MEF, Fehler_PM10_Zeit_test[,2])
#MEF_Zeit[8,]=apply(Fehler_PN10_Zeit_test[,3:23], MARGIN=2, FUN =MEF, Fehler_PN10_Zeit_test[,2])
#MEF_Zeit=round(MEF_Zeit, digits=3)
#colnames(MEF_Zeit)=c("hyp_1", "hyp_2", "hyp_3", "hyp_4", "hyp_5", "hyp_6", "hyp_7", 
#                     "hyp_8", "hyp_9", "hyp_10", " ", "log_1", "log_2", "log_3", "log_4", "log_5", "log_6", 
#                     "log_7", "log_8", "log_9", "log_10")
#rownames(MEF_Zeit)=c("CO2" ,"NH3" ,"NO", "O3", "PM1", "PM2.5", "PM10", "PN10")
#setwd("\\\\geo/iloek/KLIMA/Klimatologie/klima/Projekte/2019_Masterarbeit_Laura/Auswertung/Statistische_Auswertung_Testdaten/MEF")
#getwd()
#write.table(MEF_Zeit, file="MEF_Zeit.csv")

#bis 20er-Werte
#MEF_Zeit_20=data.frame(matrix(nrow=2, ncol=21))
#MEF_Zeit_20[1,]=apply(Fehler_NO2_Zeit_test[,3:23], MARGIN=2, FUN =MEF, Fehler_NO2_Zeit_test[,2])
#MEF_Zeit_20[2,]=apply(Fehler_NOx_Zeit_test[,3:23], MARGIN=2, FUN =MEF, Fehler_NOx_Zeit_test[,2])
#MEF_Zeit_20=round(MEF_Zeit_20, digits=3)
#colnames(MEF_Zeit_20)=c("hyp_1", "hyp_2", "hyp_3", "hyp_4", "hyp_5", "hyp_6", "hyp_7", 
#                        "hyp_8", "hyp_9", "hyp_10", " ", "log_1", "log_2", "log_3", "log_4", "log_5", "log_6", 
#                        "log_7", "log_8", "log_9", "log_10")
#rownames(MEF_Zeit_20)=c("NO2" ,"NOx")
#setwd("\\\\geo/iloek/KLIMA/Klimatologie/klima/Projekte/2019_Masterarbeit_Laura/Auswertung/Statistische_Auswertung_Testdaten/MEF")
#getwd()
#write.table(MEF_Zeit_20, file="MEFr_Zeit_20.csv")

#Verkehr
#MEF_Verkehr=data.frame(matrix(nrow=9, ncol=21))
#MEF_Verkehr[1,]=apply(Fehler_CO2_Verkehr_test[,3:23], MARGIN=2, FUN =MEF, Fehler_CO2_Verkehr_test[,2])
#MEF_Verkehr[2,]=apply(Fehler_NH3_Verkehr_test[,3:23], MARGIN=2, FUN =MEF, Fehler_NH3_Verkehr_test[,2])
#MEF_Verkehr[3,]=apply(Fehler_NO_Verkehr_test[,3:23], MARGIN=2, FUN =MEF, Fehler_NO_Verkehr_test[,2])
#MEF_Verkehr[4,]=apply(Fehler_NOx_Verkehr_test[,3:23], MARGIN=2, FUN =MEF, Fehler_NOx_Verkehr_test[,2])
#MEF_Verkehr[5,]=apply(Fehler_O3_Verkehr_test[,3:23], MARGIN=2, FUN =MEF, Fehler_O3_Verkehr_test[,2])
#MEF_Verkehr[6,]=apply(Fehler_PM1_Verkehr_test[,3:23], MARGIN=2, FUN =MEF, Fehler_PM1_Verkehr_test[,2])
#MEF_Verkehr[7,]=apply(Fehler_PM2.5_Verkehr_test[,3:23], MARGIN=2, FUN =MEF, Fehler_PM2.5_Verkehr_test[,2])
#MEF_Verkehr[8,]=apply(Fehler_PM10_Verkehr_test[,3:23], MARGIN=2, FUN =MEF, Fehler_PM10_Verkehr_test[,2])
#MEF_Verkehr[9,]=apply(Fehler_PN10_Verkehr_test[,3:23], MARGIN=2, FUN =MEF, Fehler_PN10_Verkehr_test[,2])
#MEF_Verkehr=round(MEF_Verkehr, digits=3)
#colnames(MEF_Verkehr)=c("hyp_1", "hyp_2", "hyp_3", "hyp_4", "hyp_5", "hyp_6", "hyp_7", 
#                        "hyp_8", "hyp_9", "hyp_10", " ", "log_1", "log_2", "log_3", "log_4", "log_5", "log_6", 
#                        "log_7", "log_8", "log_9", "log_10")
#rownames(MEF_Verkehr)=c("CO2" ,"NH3" ,"NO", "NOx", "O3", "PM1", "PM2.5", "PM10", "PN10")
#setwd("\\\\geo/iloek/KLIMA/Klimatologie/klima/Projekte/2019_Masterarbeit_Laura/Auswertung/Statistische_Auswertung_Testdaten/MEF")
#getwd()
#write.table(MEF_Verkehr, file="MEF_Verkehr.csv")

#bis 20er-Werte
#MEF_Verkehr_20=data.frame(matrix(nrow=1, ncol=21))
#MEF_Verkehr_20[1,]=apply(Fehler_NO2_Verkehr_test[,3:23], MARGIN=2, FUN =MEF, Fehler_NO2_Verkehr_test[,2])
#MEF_Verkehr_20=round(MEF_Verkehr_20, digits=3)
#colnames(MEF_Verkehr_20)=c("hyp_1", "hyp_2", "hyp_3", "hyp_4", "hyp_5", "hyp_6", "hyp_7", 
#                           "hyp_8", "hyp_9", "hyp_10", " ", "log_1", "log_2", "log_3", "log_4", "log_5", "log_6", 
#                           "log_7", "log_8", "log_9", "log_10")
#rownames(MEF_Verkehr_20)=c("NO2")
#setwd("\\\\geo/iloek/KLIMA/Klimatologie/klima/Projekte/2019_Masterarbeit_Laura/Auswertung/Statistische_Auswertung_Testdaten/MEF")
#getwd()
#write.table(MEF_Verkehr_20, file="MEF_Verkehr_20.csv")


#Fehlerwerttabelle[,4]=c(MEF_Schall[1,6], MEF_Verkehr[1,13], MEF_Zeit[1,20], 
#                        MEF_Schall_20[1,5], MEF_Verkehr[2,4],MEF_Zeit[2,1],
#                        MEF_Schall[2,6], MEF_Verkehr[3,10], MEF_Zeit[3,10],
#                        MEF_Schall[3,3], MEF_Verkehr_20[1,1], MEF_Zeit_20[1,7],
#                        MEF_Schall_20[2,2], MEF_Verkehr[4,16], MEF_Zeit[2,9],
#                        MEF_Schall[4,1], MEF_Verkehr[5,9], MEF_Zeit[4,2],
#                        MEF_Schall[5,1], MEF_Verkehr[6,12], MEF_Zeit[5,17],
#                        MEF_Schall[6,8], MEF_Verkehr[7,14], MEF_Zeit[6,1],
#                        MEF_Schall[7,8], MEF_Verkehr[8,5], MEF_Zeit[7,10],
#                        MEF_Schall[8,17], MEF_Verkehr[9,15], MEF_Zeit[8,7])
#colnames(Fehlerwerttabelle)=c("RMSE", "Rankcorrelation", "SD", "MEF")

#setwd("\\\\geo/iloek/KLIMA/Klimatologie/klima/Projekte/2019_Masterarbeit_Laura/Auswertung/Statistische_Auswertung_Testdaten")
#getwd()
#Fehlerwerttabelle=Fehlerwerttabelle[,-5:-8]
#write.csv(Fehlerwerttabelle, file="Fehlerwerttabelle.csv", row.names=T)

#-----------------------------------------------------------------------------------------------------------------------
#-----------------------------------------------------------------------------------------------------------------------
##############
#           ##
#     MQI   ##
#           ##
##############

beta=2

#NO2
U95Oi_NO2= function(x) {
  0.24*sqrt((1-0.2^2)*x^2+0.2^2*110^2)
}


#Schall
#1. Formel
u95oi_NO2_Schall=U95Oi_NO2(Fehler_NO2_Schall_test$gemessen)
u95oi_NO2_Schall
RMSu_NO2_Schall=sqrt(sum(u95oi_NO2_Schall^2)/length(u95oi_NO2_Schall))
RMSu_NO2_Schall
MQI_NO2_Schall1=Fehlerwerttabelle[10,1]/(2*RMSu_NO2_Schall)
MQI_NO2_Schall1
#2. Formel
MQI_NO2_Schall2=Fehlerwerttabelle[10,1]/(2*(0.24*sqrt((1-0.2^2)*(mean(Fehler_NO2_Schall_test$gemessen)^2+Fehlerwerttabelle[10,4]^2)+0.2^2*110^2)))

#Verkehr
#1. Formel
u95oi_NO2_Verkehr=U95Oi_NO2(Fehler_NO2_Verkehr_test$gemessen)
u95oi_NO2_Verkehr
RMSu_NO2_Verkehr=sqrt(sum(u95oi_NO2_Verkehr^2)/length(u95oi_NO2_Verkehr))
RMSu_NO2_Verkehr
MQI_NO2_Verkehr1=Fehlerwerttabelle[11,1]/(2*RMSu_NO2_Verkehr)
#2. Formel
MQI_NO2_Verkehr2=Fehlerwerttabelle[11,1]/(2*(0.24*sqrt((1-0.2^2)*(mean(Fehler_NO2_Verkehr_test$gemessen)^2+Fehlerwerttabelle[11,4]^2)+0.2^2*110^2)))

#Zeit
#1. Formel
u95oi_NO2_Zeit=U95Oi_NO2(Fehler_NO2_Zeit_test$gemessen)
u95oi_NO2_Zeit
RMSu_NO2_Zeit=sqrt(sum(u95oi_NO2_Zeit^2)/length(u95oi_NO2_Zeit))
RMSu_NO2_Zeit
MQI_NO2_Zeit1=Fehlerwerttabelle[12,1]/(2*RMSu_NO2_Zeit)
#2. Formel
MQI_NO2_Zeit2=Fehlerwerttabelle[12,1]/(2*(0.24*sqrt((1-0.2^2)*(mean(Fehler_NO2_Zeit_test$gemessen)^2+Fehlerwerttabelle[12,4]^2)+0.2^2*110^2)))


#O3
U95Oi_O3= function(x) {
  0.18*sqrt((1-0.79^2)*x^2+0.79^2*61.12^2)
}

#Schall
#1. Formel
u95oi_O3_Schall=U95Oi_O3(Fehler_O3_Schall_test$gemessen)
u95oi_O3_Schall
RMSu_O3_Schall=sqrt(sum(u95oi_O3_Schall^2)/length(u95oi_O3_Schall))
RMSu_O3_Schall
MQI_O3_Schall1=Fehlerwerttabelle[16,1]/(2*RMSu_O3_Schall)
#2. Formel
MQI_O3_Schall2=Fehlerwerttabelle[16,1]/(2*(0.18*sqrt((1-0.79^2)*(mean(Fehler_O3_Schall_test$gemessen)^2+Fehlerwerttabelle[16,4]^2)+0.79^2*61.12^2)))

#Verkehr
#1. Formel
u95oi_O3_Verkehr=U95Oi_O3(Fehler_O3_Verkehr_test$gemessen)
u95oi_O3_Verkehr
RMSu_O3_Verkehr=sqrt(sum(u95oi_O3_Verkehr^2)/length(u95oi_O3_Verkehr))
RMSu_O3_Verkehr
MQI_O3_Verkehr1=Fehlerwerttabelle[17,1]/(2*RMSu_O3_Verkehr)
#2. Formel
MQI_O3_Verkehr2=Fehlerwerttabelle[17,1]/(2*(0.18*sqrt((1-0.79^2)*(mean(Fehler_O3_Verkehr_test$gemessen)^2+Fehlerwerttabelle[17,4]^2)+0.79^2*61.12^2)))

#Zeit
#1. Formel
u95oi_O3_Zeit=U95Oi_O3(Fehler_O3_Zeit_test$gemessen)
u95oi_O3_Zeit
RMSu_O3_Zeit=sqrt(sum(u95oi_O3_Zeit^2)/length(u95oi_O3_Zeit))
RMSu_O3_Zeit
MQI_O3_Zeit1=Fehlerwerttabelle[18,1]/(2*RMSu_O3_Zeit)
#2. Formel
MQI_O3_Zeit2=Fehlerwerttabelle[18,1]/(2*(0.18*sqrt((1-0.79^2)*(mean(Fehler_O3_Zeit_test$gemessen)^2+Fehlerwerttabelle[18,4]^2)+0.79^2*61.12^2)))


#PM10
U95Oi_PM10= function(x) {
  0.28*sqrt((1-0.13^2)*x^2+0.13^2*0.05^2)
}

#Schall
#1. Formel
u95oi_PM10_Schall=U95Oi_PM10(Fehler_PM10_Schall_test$gemessen)
u95oi_PM10_Schall
RMSu_PM10_Schall=sqrt(sum(u95oi_PM10_Schall^2)/length(u95oi_PM10_Schall))
RMSu_PM10_Schall
Fehlerwerttabelle[25,1]/(2*RMSu_PM10_Schall)
MQI_PM10_Schall1=Fehlerwerttabelle[25,1]/(2*RMSu_PM10_Schall)
#2. Formel
MQI_PM10_Schall2=Fehlerwerttabelle[25,1]/(2*(0.28*sqrt((1-0.13^2)*(mean(Fehler_PM10_Schall_test$gemessen)^2+Fehlerwerttabelle[25,4]^2)+0.13^2*0.05^2)))

#Verkehr
#1. Formel
u95oi_PM10_Verkehr=U95Oi_PM10(Fehler_PM10_Verkehr_test$gemessen)
u95oi_PM10_Verkehr
RMSu_PM10_Verkehr=sqrt(sum(u95oi_PM10_Verkehr^2)/length(u95oi_PM10_Verkehr))
RMSu_PM10_Verkehr
MQI_PM10_Verkehr1=Fehlerwerttabelle[26,1]/(2*RMSu_PM10_Verkehr)
#2. Formel
MQI_PM10_Verkehr2=Fehlerwerttabelle[26,1]/(2*(0.28*sqrt((1-0.13^2)*(mean(Fehler_PM10_Verkehr_test$gemessen)^2+Fehlerwerttabelle[26,4]^2)+0.13^2*0.05^2)))

#Zeit
#1. Formel
u95oi_PM10_Zeit=U95Oi_PM10(Fehler_PM10_Zeit_test$gemessen)
u95oi_PM10_Zeit
RMSu_PM10_Zeit=sqrt(sum(u95oi_PM10_Zeit^2)/length(u95oi_PM10_Zeit))
RMSu_PM10_Zeit
MQI_PM10_Zeit1=Fehlerwerttabelle[27,1]/(2*RMSu_PM10_Zeit)
#2. Formel
MQI_PM10_Zeit2=Fehlerwerttabelle[27,1]/(2*(0.28*sqrt((1-0.13^2)*(mean(Fehler_PM10_Zeit_test$gemessen)^2+Fehlerwerttabelle[27,4]^2)+0.13^2*0.05^2)))


#PM2.5
U95Oi_PM2.5= function(x) {
  0.36*sqrt((1-0.30^2)*x^2+0.30^2*0.025^2)
}

#Schall
#1. Formel
u95oi_PM2.5_Schall=U95Oi_PM2.5(Fehler_PM2.5_Schall_test$gemessen)
u95oi_PM2.5_Schall
RMSu_PM2.5_Schall=sqrt(sum(u95oi_PM2.5_Schall^2)/length(u95oi_PM2.5_Schall))
RMSu_PM2.5_Schall
MQI_PM2.5_Schall1=Fehlerwerttabelle[22,1]/(2*RMSu_PM2.5_Schall)
#2. Formel
MQI_PM2.5_Schall2=Fehlerwerttabelle[22,1]/(2*(0.36*sqrt((1-0.30^2)*(mean(Fehler_PM10_Schall_test$gemessen)^2+Fehlerwerttabelle[22,4]^2)+0.30^2*0.025^2)))

#Verkehr
#1. Formel
u95oi_PM2.5_Verkehr=U95Oi_PM2.5(Fehler_PM2.5_Verkehr_test$gemessen)
u95oi_PM2.5_Verkehr
RMSu_PM2.5_Verkehr=sqrt(sum(u95oi_PM2.5_Verkehr^2)/length(u95oi_PM2.5_Verkehr))
RMSu_PM2.5_Verkehr
MQI_PM2.5_Verkehr1=Fehlerwerttabelle[23,1]/(2*RMSu_PM2.5_Verkehr)
MQI_PM2.5_Verkehr1
#2. Formel
MQI_PM2.5_Verkehr2=Fehlerwerttabelle[23,1]/(2*(0.36*sqrt((1-0.30^2)*(mean(Fehler_PM2.5_Verkehr_test$gemessen)^2+Fehlerwerttabelle[23,4]^2)+0.30^2*0.025^2)))



PM2.5_umgerechnet=Fehler_PM2.5_Verkehr_test$gemessen
PM2.5_umgerechnet=PM2.5_umgerechnet*1000

PM2.5_modelled_umgerechnet=Fehler_PM2.5_Verkehr_test$log_3*1000
RMSE_umgerechnet=rmse(PM2.5_umgerechnet, PM2.5_modelled_umgerechnet)

u95oi_PM2.5_Verkehr=U95Oi_PM2.5(PM2.5_umgerechnet)
u95oi_PM2.5_Verkehr
RMSu_PM2.5_Verkehr=sqrt(sum(u95oi_PM2.5_Verkehr^2)/length(u95oi_PM2.5_Verkehr))
RMSu_PM2.5_Verkehr
MQI_PM2.5_Verkehr1=Fehlerwerttabelle[23,1]/(2*RMSu_PM2.5_Verkehr)


write.csv(Fehler_PM2.5_Verkehr_test, file="PM2.5.csv", row.names=F)




#Zeit
#1. Formel
u95oi_PM2.5_Zeit=U95Oi_PM2.5(Fehler_PM2.5_Zeit_test$gemessen)
u95oi_PM2.5_Zeit
RMSu_PM2.5_Zeit=sqrt(sum(u95oi_PM2.5_Zeit^2)/length(u95oi_PM2.5_Zeit))
RMSu_PM2.5_Zeit
MQI_PM2.5_Zeit1=Fehlerwerttabelle[24,1]/(2*RMSu_PM2.5_Zeit)
#2. Formel
MQI_PM2.5_Zeit2=Fehlerwerttabelle[24,1]/(2*(0.36*sqrt((1-0.30^2)*(mean(Fehler_PM2.5_Zeit_test$gemessen)^2+Fehlerwerttabelle[24,4]^2)+0.30^2*0.025^2)))


#MQI=data.frame(matrix(nrow=1, ncol=30))
#colnames(MQI)=c("CO2_Schall", "CO2_Verkehr", "CO2_Zeit", "NH3_Schall", "NH3_Verkehr", "NH3_Zeit", "NO_Schall", "NO_Verkehr", "NO_Zeit",
#                "NO2_Schall", "NO2_Verkehr", "NO2_Zeit", "NOx_Schall", "NOx_Verkehr", "NOx_Zeit", "O3_Schall", "O3_Verkehr", "O3_Zeit",
#                "PM1_Schall", "PM1_Verkehr", "PM1_Zeit", "PM2.5_Schall", "PM2.5_Verkehr", "PM2.5_Zeit", "PM10_Schall", "PM10_Verkehr", "PM10_Zeit",
#                "PN10_Schall", "PN10_Verkehr", "PN10_Zeit")

#row.names(MQI)=c("MQI")
#MQI[1,10]=MQI_NO2_Schall1
#MQI[1,11]=MQI_NO2_Verkehr1
#MQI[1,12]=MQI_NO2_Zeit1
#MQI[1,16]=MQI_O3_Schall1
#MQI[1,17]=MQI_O3_Verkehr1
#MQI[1,18]=MQI_O3_Zeit1
#MQI[1,22]=MQI_PM2.5_Schall1
#MQI[1,23]=MQI_PM2.5_Verkehr1
#MQI[1,24]=MQI_PM2.5_Zeit1
#MQI[1,25]=MQI_PM10_Schall1
#MQI[1,26]=MQI_PM10_Verkehr1
#MQI[1,27]=MQI_PM10_Zeit1
MQI=data.frame(matrix(nrow=1, ncol=12))
colnames(MQI)=c("NO2_Schall", "NO2_Verkehr", "NO2_Zeit", "O3_Schall", "O3_Verkehr", "O3_Zeit",
                "PM2.5_Schall", "PM2.5_Verkehr", "PM2.5_Zeit", "PM10_Schall", "PM10_Verkehr", "PM10_Zeit")
row.names(MQI)=c("MQI")
MQI[1,1]=MQI_NO2_Schall1
MQI[1,2]=MQI_NO2_Verkehr1
MQI[1,3]=MQI_NO2_Zeit1
MQI[1,4]=MQI_O3_Schall1
MQI[1,5]=MQI_O3_Verkehr1
MQI[1,6]=MQI_O3_Zeit1
MQI[1,7]=MQI_PM2.5_Schall1
MQI[1,8]=MQI_PM2.5_Verkehr1
MQI[1,9]=MQI_PM2.5_Zeit1
MQI[1,10]=MQI_PM10_Schall1
MQI[1,11]=MQI_PM10_Verkehr1
MQI[1,12]=MQI_PM10_Zeit1

MQI=round(MQI, digits=3)
MQI

write.csv(MQI, file="MQI.csv", row.names=F)
#----------------------------------------------------------------------------------------------------------------------------------------
#----------------------------------------------------------------------------------------------------------------------------------------
#----------------------------------------------------------------------------------------------------------------------------------------


#Barplot fuer RMSE- Fehlerwerte
#----------------------------------------------
#Test, ob auch alle Ergebnisse richtig sind.
#normierung_rmse=function(x,y){
#  rmse(actual=((x- min(c(x,y))) / (max(c(x,y))-min(c(x,y)))), predicted=((y- min(c(x,y))) / (max(c(x,y))-min(c(x,y)))))
#}

#RMSE_norm=data.frame(matrix(ncol=1, nrow=30))

#RMSE_norm[1,1]=normierung_rmse(x=Fehler_CO2_Schall_test$gemessen, y=Fehler_CO2_Schall_test$hyp_6)
#RMSE_norm[2,1]=normierung_rmse(x=Fehler_CO2_Verkehr_test$gemessen, y=Fehler_CO2_Verkehr_test$log_2)
#RMSE_norm[3,1]=normierung_rmse(x=Fehler_CO2_Zeit_test$gemessen, y=Fehler_CO2_Zeit_test$log_9)

#------------------------------------------------

# Ich habe einen data-frame. Die zweite Spalte ist immer ein gemessener Wert, Spalte 3:23 sind modellierte. 
# Ich moechte die Spalten 3:23 normieren und dabei aber die Maxima und Minima als das Maximum/Minimum der gemessenen und 
# der zu normierenden Spalte gemeinsam setzen.

#Beide Spalten sollen nach diesem Muster normiert werden und aus den normierten Werten soll der RMSE berechnet werden. 

normierung_rmse=function(x,y){
 rmse(predicted=((y- min(c(x,y))) / (max(c(x,y))-min(c(x,y)))), actual=((x- min(c(x,y))) / (max(c(x,y))-min(c(x,y)))))
}

RMSE_test_Schall_norm=data.frame(matrix(nrow=8, ncol=21))
RMSE_test_Schall_norm[1,]= apply(Fehler_CO2_Schall_test[,3:23], MARGIN=2, FUN=normierung_rmse, Fehler_CO2_Schall_test[,2])
RMSE_test_Schall_norm[2,]= apply(Fehler_NO_Schall_test[,3:23], MARGIN=2, FUN=normierung_rmse, Fehler_NO_Schall_test[,2])
RMSE_test_Schall_norm[3,]= apply(Fehler_NO2_Schall_test[,3:23], MARGIN=2, FUN=normierung_rmse, Fehler_NO2_Schall_test[,2])
RMSE_test_Schall_norm[4,]= apply(Fehler_O3_Schall_test[,3:23], MARGIN=2, FUN=normierung_rmse, Fehler_O3_Schall_test[,2])
RMSE_test_Schall_norm[5,]= apply(Fehler_PM1_Schall_test[,3:23], MARGIN=2, FUN=normierung_rmse, Fehler_PM1_Schall_test[,2])
RMSE_test_Schall_norm[6,]= apply(Fehler_PM2.5_Schall_test[,3:23], MARGIN=2, FUN=normierung_rmse, Fehler_PM2.5_Schall_test[,2])
RMSE_test_Schall_norm[7,]= apply(Fehler_PM10_Schall_test[,3:23], MARGIN=2, FUN=normierung_rmse, Fehler_PM10_Schall_test[,2])
RMSE_test_Schall_norm[8,]= apply(Fehler_PN10_Schall_test[,3:23], MARGIN=2, FUN=normierung_rmse, Fehler_PN10_Schall_test[,2])

RMSE_test_Schall_norm=round(RMSE_test_Schall_norm, digits=3)
rownames(RMSE_test_Schall_norm)=c("CO2", "NO", "NO2", "O3", "PM1", "PM2.5", "PM10", "PN10")
colnames(RMSE_test_Schall_norm)=c("hyp_1", "hyp_2", "hyp_3", "hyp_4", "hyp_5", "hyp_6", "hyp_7", 
                             "hyp_8", "hyp_9", "hyp_10", " ", "log_1", "log_2", "log_3", "log_4", "log_5", "log_6", 
                             "log_7", "log_8", "log_9", "log_10")


write.table(RMSE_test_Schall_norm, file="RMSE_test_Schall_norm.csv")


#bis 20er-Werte
RMSE_test_Schall_20_norm=data.frame(matrix(nrow=2, ncol=21))
RMSE_test_Schall_20_norm[1,]=apply(Fehler_NH3_Schall_test[,3:23], MARGIN=2, FUN =normierung_rmse, Fehler_NH3_Schall_test[,2])
RMSE_test_Schall_20_norm[2,]=apply(Fehler_NOx_Schall_test[,3:23], MARGIN=2, FUN =normierung_rmse, Fehler_NOx_Schall_test[,2])
RMSE_test_Schall_20_norm=round(RMSE_test_Schall_20_norm, digits=3)
rownames(RMSE_test_Schall_20_norm)=c("NH3", "NOx")
colnames(RMSE_test_Schall_20_norm)=c("hyp_11", "hyp_12", "hyp_13", "hyp_14", "hyp_15", "hyp_16", "hyp_17", 
                                "hyp_18", "hyp_19", "hyp_20", " ", "log_11", "log_12", "log_13", "log_14", 
                                "log_15", "log_16", "log_17", "log_18", "log_19", "log_20")

write.table(RMSE_test_Schall_20_norm, file="RMSE_test_Schall_20_norm.csv")




#Zeitdaten
RMSE_test_Zeit_norm=data.frame(matrix(nrow=8, ncol=21))
RMSE_test_Zeit_norm[1,]=apply(Fehler_CO2_Zeit_test[,3:23], MARGIN=2, FUN =normierung_rmse, Fehler_CO2_Zeit_test[,2])
RMSE_test_Zeit_norm[2,]=apply(Fehler_NH3_Zeit_test[,3:23], MARGIN=2, FUN =normierung_rmse, Fehler_NH3_Zeit_test[,2])
RMSE_test_Zeit_norm[3,]=apply(Fehler_NO_Zeit_test[,3:23], MARGIN=2, FUN =normierung_rmse, Fehler_NO_Zeit_test[,2])
RMSE_test_Zeit_norm[4,]=apply(Fehler_O3_Zeit_test[,3:23], MARGIN=2, FUN =normierung_rmse, Fehler_O3_Zeit_test[,2])
RMSE_test_Zeit_norm[5,]=apply(Fehler_PM1_Zeit_test[,3:23], MARGIN=2, FUN =normierung_rmse, Fehler_PM1_Zeit_test[,2])
RMSE_test_Zeit_norm[6,]=apply(Fehler_PM2.5_Zeit_test[,3:23], MARGIN=2, FUN =normierung_rmse, Fehler_PM2.5_Zeit_test[,2])
RMSE_test_Zeit_norm[7,]=apply(Fehler_PM10_Zeit_test[,3:23], MARGIN=2, FUN =normierung_rmse, Fehler_PM10_Zeit_test[,2])
RMSE_test_Zeit_norm[8,]=apply(Fehler_PN10_Zeit_test[,3:23], MARGIN=2, FUN =normierung_rmse, Fehler_PN10_Zeit_test[,2])
RMSE_test_Zeit_norm=round(RMSE_test_Zeit_norm, digits=3)
colnames(RMSE_test_Zeit_norm)=c("hyp_1", "hyp_2", "hyp_3", "hyp_4", "hyp_5", "hyp_6", "hyp_7", 
                           "hyp_8", "hyp_9", "hyp_10", " ", "log_1", "log_2", "log_3", "log_4", "log_5", "log_6", 
                           "log_7", "log_8", "log_9", "log_10")
rownames(RMSE_test_Zeit_norm)=c("CO2" ,"NH3" ,"NO", "O3", "PM1", "PM2.5", "PM10", "PN10")

write.table(RMSE_test_Zeit_norm, file="RMSE_test_Zeit_norm.csv")

#bis 20er-Werte
RMSE_test_Zeit_20_norm=data.frame(matrix(nrow=2, ncol=21))
RMSE_test_Zeit_20_norm[1,]=apply(Fehler_NO2_Zeit_test[,3:23], MARGIN=2, FUN =normierung_rmse, Fehler_NO2_Zeit_test[,2])
RMSE_test_Zeit_20_norm[2,]=apply(Fehler_NOx_Zeit_test[,3:23], MARGIN=2, FUN =normierung_rmse, Fehler_NOx_Zeit_test[,2])
RMSE_test_Zeit_20_norm=round(RMSE_test_Zeit_20_norm, digits=3)
colnames(RMSE_test_Zeit_20_norm)=c("hyp_11", "hyp_12", "hyp_13", "hyp_14", "hyp_15", "hyp_16", "hyp_17", 
                              "hyp_18", "hyp_19", "hyp_20", " ", "log_11", "log_12", "log_13", "log_14", 
                              "log_15", "log_16", "log_17", "log_18", "log_19", "log_20")
rownames(RMSE_test_Zeit_20_norm)=c("NO2" ,"NOx")

write.table(RMSE_test_Zeit_20_norm, file="RMSE_test_Zeit_20_norm.csv")


#Verkehrsdaten
RMSE_test_Verkehr_norm=data.frame(matrix(nrow=9, ncol=21))
RMSE_test_Verkehr_norm[1,]=apply(Fehler_CO2_Verkehr_test[,3:23], MARGIN=2, FUN =normierung_rmse, Fehler_CO2_Verkehr_test[,2])
RMSE_test_Verkehr_norm[2,]=apply(Fehler_NH3_Verkehr_test[,3:23], MARGIN=2, FUN =normierung_rmse, Fehler_NH3_Verkehr_test[,2])
RMSE_test_Verkehr_norm[3,]=apply(Fehler_NO_Verkehr_test[,3:23], MARGIN=2, FUN =normierung_rmse, Fehler_NO_Verkehr_test[,2])
RMSE_test_Verkehr_norm[4,]=apply(Fehler_NOx_Verkehr_test[,3:23], MARGIN=2, FUN =normierung_rmse, Fehler_NOx_Verkehr_test[,2])
RMSE_test_Verkehr_norm[5,]=apply(Fehler_O3_Verkehr_test[,3:23], MARGIN=2, FUN =normierung_rmse, Fehler_O3_Verkehr_test[,2])
RMSE_test_Verkehr_norm[6,]=apply(Fehler_PM1_Verkehr_test[,3:23], MARGIN=2, FUN =normierung_rmse, Fehler_PM1_Verkehr_test[,2])
RMSE_test_Verkehr_norm[7,]=apply(Fehler_PM2.5_Verkehr_test[,3:23], MARGIN=2, FUN =normierung_rmse, Fehler_PM2.5_Verkehr_test[,2])
RMSE_test_Verkehr_norm[8,]=apply(Fehler_PM10_Verkehr_test[,3:23], MARGIN=2, FUN =normierung_rmse, Fehler_PM10_Verkehr_test[,2])
RMSE_test_Verkehr_norm[9,]=apply(Fehler_PN10_Verkehr_test[,3:23], MARGIN=2, FUN =normierung_rmse, Fehler_PN10_Verkehr_test[,2])
RMSE_test_Verkehr_norm=round(RMSE_test_Verkehr_norm, digits=3)
colnames(RMSE_test_Verkehr_norm)=c("hyp_1", "hyp_2", "hyp_3", "hyp_4", "hyp_5", "hyp_6", "hyp_7", 
                              "hyp_8", "hyp_9", "hyp_10", " ", "log_1", "log_2", "log_3", "log_4", "log_5", "log_6", 
                              "log_7", "log_8", "log_9", "log_10")
rownames(RMSE_test_Verkehr_norm)=c("CO2" ,"NH3" ,"NO" , "NOx", "O3", "PM1", "PM2.5", "PM10", "PN10")

write.table(RMSE_test_Verkehr_norm, file="RMSE_test_Verkehr_norm.csv")

#bis 20er-Werte
RMSE_test_Verkehr_20_norm=data.frame(matrix(nrow=1, ncol=21))
RMSE_test_Verkehr_20_norm[1,]=apply(Fehler_NO2_Verkehr_test[,3:23], MARGIN=2, FUN =normierung_rmse, Fehler_NO2_Verkehr_test[,2])
RMSE_test_Verkehr_20_norm=round(RMSE_test_Verkehr_20_norm, digits=3)
colnames(RMSE_test_Verkehr_20_norm)=c("hyp_11", "hyp_12", "hyp_13", "hyp_14", "hyp_15", "hyp_16", "hyp_17", 
                                 "hyp_18", "hyp_19", "hyp_20", " ", "log_11", "log_12", "log_13", "log_14", 
                                 "log_15", "log_16", "log_17", "log_18", "log_19", "log_20")
rownames(RMSE_test_Verkehr_20_norm)=c("NO2")

write.table(RMSE_test_Verkehr_20_norm, file="RMSE_test_Verkehr_20_norm.csv")


Fehlerwerttabelle_norm=data.frame(matrix(nrow=30, ncol=1))
rownames(Fehlerwerttabelle_norm)=c("CO2_Sound", "CO2_Traffic", "CO2_Time", "NH3_Sound", 
                              "NH3_Traffic", "NH3_Time", "NO_Sound", "NO_Traffic", "NO_Time", "NO2_Sound", 
                              "NO2_Traffic", "NO2_Time", "NOx_Sound", "NOx_Traffic", "NOx_Time", "O3_Sound", 
                              "O3_Traffic", "O3_Time", "PM1_Sound", "PM1_Traffic", "PM1_Time", "PM2.5_Sound", 
                              "PM2.5_Traffic", "PM2.5_Time", "PM10_Sound", "PM10_Traffic", "PM10_Time", 
                              "PN10_Sound", "PN10_Traffic", "PN10_Time")


Fehlerwerttabelle_norm[,1]=c(RMSE_test_Schall_norm[1,6], RMSE_test_Verkehr_norm[1,13], RMSE_test_Zeit_norm[1,20], 
                        RMSE_test_Schall_20_norm[1,5], RMSE_test_Verkehr_norm[2,1],RMSE_test_Zeit_norm[2,12],
                        RMSE_test_Schall_norm[2,6], RMSE_test_Verkehr_norm[3,10], RMSE_test_Zeit_norm[3,10],
                        RMSE_test_Schall_norm[3,3], RMSE_test_Verkehr_20_norm[1,1], RMSE_test_Zeit_20_norm[1,7],
                        RMSE_test_Schall_20_norm[2,13], RMSE_test_Verkehr_norm[4,16], RMSE_test_Zeit_20_norm[2,9],
                        RMSE_test_Schall_norm[4,1], RMSE_test_Verkehr_norm[5,9], RMSE_test_Zeit_norm[4,2],
                        RMSE_test_Schall_norm[5,1], RMSE_test_Verkehr_norm[6,12], RMSE_test_Zeit_norm[5,17],
                        RMSE_test_Schall_norm[6,8], RMSE_test_Verkehr_norm[7,14], RMSE_test_Zeit_norm[6,1],
                        RMSE_test_Schall_norm[7,8], RMSE_test_Verkehr_norm[8,5], RMSE_test_Zeit_norm[7,10],
                        RMSE_test_Schall_norm[8,17], RMSE_test_Verkehr_norm[9,15], RMSE_test_Zeit_norm[8,7])



#-------------------------------------
RMSE_tab=data.frame(matrix(ncol=3, nrow=30))
RMSE_tab[,3]=Fehlerwerttabelle_norm[,1]
RMSE_tab[,2]=rep(c("Sound", "Traffic", "Time"),10)
RMSE_tab[,1]=rep(c("CO2", "NH3", "NO", "NO2", "NOx", "O3", "PM1", "PM2.5", "PM10", "PN10"), each=3)
colnames(RMSE_tab)=c("Pollutant", "Predictor", "RMSE_normalized")

#install.packages("ggplot2")
library(ggplot2)

class(RMSE_tab$Pollutant)
class(RMSE_tab$Predictor)
class(RMSE_tab$RMSE_normalized)
RMSE_tab$Pollutant=factor(RMSE_tab$Pollutant, levels= unique(RMSE_tab$Pollutant))
class(RMSE_tab$Pollutant)
RMSE_tab$Predictor=factor(RMSE_tab$Predictor, levels= unique(RMSE_tab$Predictor))
class(RMSE_tab$Predictor)



ggplot(RMSE_tab, aes(x = Pollutant, y = RMSE_normalized, fill = Predictor)) + 
  geom_bar(stat = "identity", position = "dodge") +
  theme(legend.position = "bottom") +
  theme_bw()+
  scale_fill_manual(values=c("#339999", "#336666", "#003366"))+
  labs(x= "Pollutant", y= "RMSE normalised")

