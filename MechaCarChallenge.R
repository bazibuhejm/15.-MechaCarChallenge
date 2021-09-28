getwd()
MechaCarChallenge <-read.csv("MechaCar_mpg.csv")
head(MechaCarChallenge)
library(dplyr)
Linearmodel <-lm(mpg~vehicle_length + vehicle_weight+spoiler_angle+ ground_clearance+AWD,data=MechaCarChallenge)
summary(Linearmodel)
options(scipen = 999)
#####################    deliverable 2
Suspension_Coil <-read.csv("Suspension_Coil.csv",stringsAsFactors = F, check.names = F)
head(Suspension_Coil)
#table_summary<-summarize(Suspension_Coil$PSI)
#table_summary<-Suspension_Coil %>% summarize(Mean=mean(PSI),Meadian=median(PSI),SD=sd(PSI),Variance(PSI), .groups = 'keep') #create summary table
table_summary<-Suspension_Coil %>% summarise(Mean=mean(PSI),Meadian=median(PSI),SD=sd(PSI),Variance=var(PSI))
lot_summary<-Suspension_Coil %>% group_by(Manufacturing_Lot)%>% summarise(Mean=mean(PSI),Meadian=median(PSI),SD=sd(PSI),Variance=var(PSI))
var
#> summarize_demo <- demo_table2 %>% group_by(condition) %>% summarize(Mean_Mileage=mean(odometer), .groups = 'keep') #create summary table
table_summary
lot_summary
t.test(Suspension_Coil$PSI, mu=1500)
t.test(Suspension_Coil$PSI, mu=1500)
t.test(subset(Suspension_Coil , Manufacturing_Lot=="Lot1")$PSI, mu = 1500)
t.test(subset(Suspension_Coil , Manufacturing_Lot=="Lot2")$PSI, mu = 1500)
t.test(subset(Suspension_Coil , Manufacturing_Lot=="Lot3")$PSI, mu = 1500)


