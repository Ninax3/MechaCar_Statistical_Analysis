mpg_table <- read.csv(file='MechaCar_mpg.csv', check.names=F, stringsAsFactors=F)
lm(mpg ~ vehicle_length,mpg_table) # Create linear model
lm(mpg ~ vehicle_weight,mpg_table) # Create linear model
lm(mpg ~ spoiler_angle,mpg_table) # Create linear model
lm(mpg ~ ground_clearance,mpg_table) # Create linear model
lm(mpg ~ AWD,mpg_table) # Create linear model
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mpg_table) #generate multiple linear regression model
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mpg_table)) #generate summary of lm

suspension_coil_table <- read.csv(file='Suspension_Coil.csv', check.names=F, stringsAsFactors=F)
total_summary <- suspension_coil_table %>%summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))
lot_summary <- suspension_coil_table %>% group_by(Manufacturing_Lot)%>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))
t.test(suspension_coil_table$PSI, mu=mean(suspension_coil_table$PSI))
t.test(subset(suspension_coil_table$PSI, suspension_coil_table$Manufacturing_Lot =="Lot1"), mu=mean(suspension_coil_table$PSI))
t.test(subset(suspension_coil_table$PSI, suspension_coil_table$Manufacturing_Lot =="Lot2"), mu=mean(suspension_coil_table$PSI))
t.test(subset(suspension_coil_table$PSI, suspension_coil_table$Manufacturing_Lot =="Lot3"), mu=mean(suspension_coil_table$PSI))
