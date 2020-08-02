setwd("C:/Users/nick1/OneDrive - uni-muenster.de/UNI/Bachelorarbeit/Paper")
CO2_Schall=read.csv("Daten/Schall/Fehler_CO2_test.csv", dec=".", sep=" ", header=T)
NO_Schall=read.csv("Daten/Schall/Fehler_NO_mitlNOx_test.csv", dec=".", sep=" ", header=T)
NO2_Schall=read.csv("Daten/Schall/Fehler_NO2_mitlNOx_test.csv", dec=".", sep=" ", header=T)
PM1_Schall=read.csv("Daten/Schall/Fehler_PM1_test.csv", dec=".", sep=" ", header=T)
PM2.5_Schall=read.csv("Daten/Schall/Fehler_PM2.5_test.csv", dec=".", sep=" ", header=T)
PM10_Schall=read.csv("Daten/Schall/Fehler_PM10_test.csv", dec=".", sep=" ", header=T)
PN10_Schall=read.csv("Daten/Schall/Fehler_PN10_test.csv", dec=".", sep=" ", header=T)
O3_Schall=read.csv("Daten/Schall/Fehler_O3_test.csv", dec=".", sep=" ", header=T)


#Bis 20er Werte
NOx_Schall=read.csv("Daten/Schall/bis_20/Fehler_NOx_test.csv", dec=".", sep=" ", header=T)
NH3_Schall=read.csv("Daten/Schall/bis_20/Fehler_NH3_test.csv", dec=".", sep=" ", header=T)

#----------------------------

#VERKEHR UND ZEIT
CO2_Zeit=read.csv("Daten/Verkehr_Zeit/Fehler_CO2_Zeit_test.csv", dec=".", sep=" ", header=T)
CO2_Verkehr=read.csv("Daten/Verkehr_Zeit/Fehler_CO2_Verkehr_test.csv", dec=".", sep=" ", header=T)
NH3_Zeit=read.csv("Daten/Verkehr_Zeit/Fehler_NH3_Zeit_test.csv", dec=".", sep=" ", header=T)
NH3_Verkehr=read.csv("Daten/Verkehr_Zeit/Fehler_NH3_Verkehr_test.csv", dec=".", sep=" ", header=T)
NO_Zeit=read.csv("Daten/Verkehr_Zeit/Fehler_NO_Zeit_test.csv", dec=".", sep=" ", header=T)
NO_Verkehr=read.csv("Daten/Verkehr_Zeit/Fehler_NO_Verkehr_test.csv", dec=".", sep=" ", header=T)
NOx_Verkehr=read.csv("Daten/Verkehr_Zeit/Fehler_NOx_Verkehr_test.csv", dec=".", sep=" ", header=T)
O3_Zeit=read.csv("Daten/Verkehr_Zeit/Fehler_O3_Zeit_test.csv", dec=".", sep=" ", header=T)
O3_Verkehr=read.csv("Daten/Verkehr_Zeit/Fehler_O3_Verkehr_test.csv", dec=".", sep=" ", header=T)
PM1_Zeit=read.csv("Daten/Verkehr_Zeit/Fehler_PM1_Zeit_test.csv", dec=".", sep=" ", header=T)
PM1_Verkehr=read.csv("Daten/Verkehr_Zeit/Fehler_PM1_Verkehr_test.csv", dec=".", sep=" ", header=T)
PM2.5_Zeit=read.csv("Daten/Verkehr_Zeit/Fehler_PM2.5_Zeit_test.csv", dec=".", sep=" ", header=T)
PM2.5_Verkehr=read.csv("Daten/Verkehr_Zeit/Fehler_PM2.5_Verkehr_test.csv", dec=".", sep=" ", header=T)
PM10_Zeit=read.csv("Daten/Verkehr_Zeit/Fehler_PM10_Zeit_test.csv", dec=".", sep=" ", header=T)
PM10_Verkehr=read.csv("Daten/Verkehr_Zeit/Fehler_PM10_Verkehr_test.csv", dec=".", sep=" ", header=T)
PN10_Zeit=read.csv("Daten/Verkehr_Zeit/Fehler_PN10_Zeit_test.csv", dec=".", sep=" ", header=T)
PN10_Verkehr=read.csv("Daten/Verkehr_Zeit/Fehler_PN10_Verkehr_test.csv", dec=".", sep=" ", header=T)

#Bis 20er Werte
NO2_Zeit=read.csv("Daten/Verkehr_Zeit/bis_20/Fehler_NO2_Zeit_test.csv", dec=".", sep=" ", header=T)
NO2_Verkehr=read.csv("Daten/Verkehr_Zeit/bis_20/Fehler_NO2_Verkehr_test.csv", dec=".", sep=" ", header=T)
NOx_Zeit=read.csv("Daten/Verkehr_Zeit/bis_20/Fehler_NOx_Zeit_test.csv", dec=".", sep=" ", header=T)#

CO2_gemessen_verkehr = mean(CO2_Verkehr$gemessen)
CO2_gemessen_Schall = mean(CO2_Schall$gemessen)
CO2_gemessen_zeit = mean(CO2_Zeit$gemessen)
CO2_Schall = mean(CO2_Schall$hyp_6)
CO2_Verkehr = mean(CO2_Verkehr$log_2)
CO2_Zeit = mean(CO2_Zeit$log_9)

NO_gemessen_verkehr = mean(NO_Verkehr$gemessen)
NO_gemessen_Schall = mean(NO_Schall$gemessen)
NO_gemessen_zeit = mean(NO_Zeit$gemessen)
NO_Schall = mean(NO_Schall$hyp_6)
NO_Verkehr = mean(NO_Verkehr$hyp_10)
NO_Zeit = mean(NO_Zeit$hyp_10)

PM10_gemessen_verkehr = mean(PM10_Verkehr$gemessen)
PM10_gemessen_Schall = mean(PM10_Schall$gemessen)
PM10_gemessen_zeit = mean(PM10_Zeit$gemessen)
PM10_Schall = mean(PM10_Schall$hyp_8)
PM10_Verkehr = mean(PM10_Verkehr$hyp_5)
PM10_Zeit = mean(PM10_Zeit$hyp_10)

PN10_gemessen_verkehr = mean(PN10_Verkehr$gemessen)
PN10_gemessen_Schall = mean(PN10_Schall$gemessen)
PN10_gemessen_zeit = mean(PN10_Zeit$gemessen)
PN10_Schall = mean(PN10_Schall$log_6)
PN10_Verkehr = mean(PN10_Verkehr$log_4)
PN10_Zeit = mean(PN10_Zeit$hyp_7)

PM1_gemessen_verkehr = mean(PM1_Verkehr$gemessen)
PM1_gemessen_Schall = mean(PM1_Schall$gemessen)
PM1_gemessen_zeit = mean(PM1_Zeit$gemessen)
PM1_Schall = mean(PM1_Schall$hyp_1)
PM1_Verkehr = mean(PM1_Verkehr$log_1)
PM1_Zeit = mean(PM1_Zeit$log_6)

O3_gemessen_verkehr = mean(O3_Verkehr$gemessen)
O3_gemessen_Schall = mean(O3_Schall$gemessen)
O3_gemessen_zeit = mean(O3_Zeit$gemessen)
O3_Schall = mean(O3_Schall$hyp_1)
O3_Verkehr = mean(O3_Verkehr$hyp_9)
O3_Zeit = mean(O3_Zeit$hyp_2)

NOx_gemessen_verkehr = mean(NOx_Verkehr$gemessen)
NOx_gemessen_Schall = mean(NOx_Schall$gemessen)
NOx_gemessen_zeit = mean(NOx_Zeit$gemessen)
NOx_Schall = mean(NOx_Schall$log_12)
NOx_Verkehr = mean(NOx_Verkehr$log_5)
NOx_Zeit = mean(NOx_Zeit$hyp_19)

NH3_gemessen_verkehr = mean(NH3_Verkehr$gemessen)
NH3_gemessen_Schall = mean(NH3_Schall$gemessen)
NH3_gemessen_zeit = mean(NH3_Zeit$gemessen)
NH3_Schall = mean(NH3_Schall$hyp_15)
NH3_Verkehr = mean(NH3_Verkehr$hyp_1)
NH3_Zeit = mean(NH3_Zeit$log_1)

PM2.5_gemessen_verkehr = mean(PM2.5_Verkehr$gemessen)
PM2.5_gemessen_Schall = mean(PM2.5_Schall$gemessen)
PM2.5_gemessen_zeit = mean(PM2.5_Zeit$gemessen)
PM2.5_Schall = mean(PM2.5_Schall$hyp_8)
PM2.5_Verkehr = mean(PM2.5_Verkehr$log_3)
PM2.5_Zeit = mean(PM2.5_Zeit$hyp_1)

NO2_gemessen_verkehr = mean(NO2_Verkehr$gemessen)
NO2_gemessen_Schall = mean(NO2_Schall$gemessen)
NO2_gemessen_zeit = mean(NO2_Zeit$gemessen)
NO2_Schall = mean(NO2_Schall$log_3)
NO2_Verkehr = mean(NO2_Verkehr$hyp_11)
NO2_Zeit = mean(NO2_Zeit$hyp_17)

sd=data.frame(matrix(ncol=10, nrow=9))
colnames(sd)=c("CO2", "NH3", "NO", "NO2", "NOx", "O3", "PM1", "PM2.5", "PM10", "PN10")
rownames(sd)=c("gemessen_Schall", "gemessen_Verkehr","gemessen_Zeit", "Schall", "Verkehr","Zeit", "scaleMin", "ScaleMAx", "Einheit")


sd[1,1]= CO2_gemessen_Schall
sd[2,1]= CO2_gemessen_verkehr
sd[3,1]= CO2_gemessen_zeit
sd[4,1]= CO2_Schall
sd[5,1]= CO2_Verkehr
sd[6,1]= CO2_Zeit
sd[7,1]= 16
sd[8,1]= 20
sd[9,1]= "mmol m-3"

sd[1,2]= NH3_gemessen_Schall
sd[2,2]= NH3_gemessen_verkehr
sd[3,2]= NH3_gemessen_zeit
sd[4,2]= NH3_Schall
sd[5,2]= NH3_Verkehr
sd[6,2]= NH3_Zeit
sd[7,2]= 0
sd[8,2]= 40
sd[9,2]= "ppb"

sd[1,3]= NO_gemessen_Schall
sd[2,3]= NO_gemessen_verkehr
sd[3,3]= NO_gemessen_zeit
sd[4,3]= NO_Schall
sd[5,3]= NO_Verkehr
sd[6,3]= NO_Zeit
sd[7,3]= 0
sd[8,3]= 50
sd[9,3]= "ppb"

sd[1,4]= NO2_gemessen_Schall
sd[2,4]= NO2_gemessen_verkehr
sd[3,4]= NO2_gemessen_zeit
sd[4,4]= NO2_Schall
sd[5,4]= NO2_Verkehr
sd[6,4]= NO2_Zeit
sd[7,4]= 0
sd[8,4]= 30
sd[9,4]= "ppb"

sd[1,5]= NOx_gemessen_Schall
sd[2,5]= NOx_gemessen_verkehr
sd[3,5]= NOx_gemessen_zeit
sd[4,5]= NOx_Schall
sd[5,5]= NOx_Verkehr
sd[6,5]= NOx_Zeit
sd[7,5]= 0
sd[8,5]= 80
sd[9,5]= "ppb"

sd[1,6]= O3_gemessen_Schall
sd[2,6]= O3_gemessen_verkehr
sd[3,6]= O3_gemessen_zeit
sd[4,6]= O3_Schall
sd[5,6]= O3_Verkehr
sd[6,6]= O3_Zeit
sd[7,6]= 0
sd[8,6]= 30
sd[9,6]= "ppb"

sd[1,7]= PM1_gemessen_Schall
sd[2,7]= PM1_gemessen_verkehr
sd[3,7]= PM1_gemessen_zeit
sd[4,7]= PM1_Schall
sd[5,7]= PM1_Verkehr
sd[6,7]= PM1_Zeit
sd[7,7]= 0
sd[8,7]= 0.04
sd[9,7]= "mg m-3"

sd[1,8]= PM2.5_gemessen_Schall
sd[2,8]= PM2.5_gemessen_verkehr
sd[3,8]= PM2.5_gemessen_zeit
sd[4,8]= PM2.5_Schall
sd[5,8]= PM2.5_Verkehr
sd[6,8]= PM2.5_Zeit
sd[7,8]= 0
sd[8,8]= 0.04
sd[9,8]= "mg m-3"

sd[1,9]= PM10_gemessen_Schall
sd[2,9]= PM10_gemessen_verkehr
sd[3,9]= PM10_gemessen_zeit
sd[4,9]= PM10_Schall
sd[5,9]= PM10_Verkehr
sd[6,9]= PM10_Zeit
sd[7,9]= 0
sd[8,9]= 0.15
sd[9,9]= "mg m-3"

sd[1,10]= PN10_gemessen_Schall
sd[2,10]= PN10_gemessen_verkehr
sd[3,10]= PN10_gemessen_zeit
sd[4,10]= PN10_Schall
sd[5,10]= PN10_Verkehr
sd[6,10]= PN10_Zeit
sd[7,10]= 0
sd[8,10]= 40000
sd[9,10]= "n m-3"
write.csv(sd, file="GemittelteWerte.csv", row.names=T, col.names=T)
sd2 = read.csv("GemittelteWerte.csv", dec=".", sep=",", header=T)
