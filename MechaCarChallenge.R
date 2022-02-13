# Challenge 1

library(dplyr)

mecha_table <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

lm(formula = vehicle_length ~ vehicle_weight + spoiler_angle + ground_clearance + AWD + mpg, data = mecha_table)

summary(lm(formula = vehicle_length ~ vehicle_weight + spoiler_angle + ground_clearance + AWD + mpg, data = mecha_table))



# Challenge 2

scoil_table <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)

total_summary <- scoil_table %>% summarize(Mean_PSI=mean(PSI),
                                          Median_PSI=median(PSI),
                                          Var_PSI=var(PSI),
                                          Std_Dev_PSI=sd(PSI),
                                          Num_Coil=n(), .groups = 'keep') 

lot_summary <- scoil_table  %>% group_by(Manufacturing_Lot) %>% summarize(Mean_PSI=mean(PSI),
                                                                         Median_PSI=median(PSI),
                                                                         Var_PSI=var(PSI),
                                                                         Std_Dev_PSI=sd(PSI),
                                                                         Num_Coil=n(), .groups = 'keep')


# Challenge 3

t.test(scoil_table$PSI,mu = 1500)

#script 1
t.test(subset(scoil_table,Manufacturing_Lot=="Lot1")$PSI,mu = 1500)
#script 2
t.test(subset(scoil_table,Manufacturing_Lot=="Lot2")$PSI,mu = 1500)
#script 3
t.test(subset(scoil_table,Manufacturing_Lot=="Lot3")$PSI,mu = 1500)
