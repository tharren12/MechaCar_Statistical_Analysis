library(dplyr)

mecha_table <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

lm(formula = vehicle_length ~ vehicle_weight + spoiler_angle + ground_clearance + AWD + mpg, data = mecha_table)

summary(lm(formula = vehicle_length ~ vehicle_weight + spoiler_angle + ground_clearance + AWD + mpg, data = mecha_table))
