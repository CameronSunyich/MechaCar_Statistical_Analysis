## CHALLENGE 15
## DELIVERABLE 1

#3) Use the library() function to load the dplyr package
library(dplyr)
library(readr)
library(tidyverse)
library(ggplot2)

#4) Import and read in the MechaCar_mpg.csv file as a dataframe.
mecha_mpg <- read_csv("Desktop/Data_Analysis/MechaCar_Statistical_Analysis/MechaCar_mpg.csv")

#4a) Refactor mpg_data Vectors
mecha_mpg$AWD <- as.logical(mecha_mpg$AWD)

#5) Perform linear regression using the lm() function.
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mecha_mpg)

#6) Using the summary() function, determine the p-value and the r-squared value for the linear regression model.
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mecha_mpg)) 

## DELIVERABLE 2

#2) Import and read in the Suspension_Coil.csv file as a table
mecha_coil <- read.csv(file="Desktop/Data_Analysis/MechaCar_Statistical_Analysis/Suspension_Coil.csv",check.names=F,stringsAsFactors = F) 

#3) Create a total_summary dataframe using the summarize() function to get the mean, median, variance, and standard deviation of the suspension coil’s PSI column.
total_summary <- mecha_coil %>% summarize(Mean_PSI=mean(PSI),
                                          Median_PSI=median(PSI),
                                          Var_PSI=var(PSI),
                                          Std_Dev_PSI=sd(PSI),
                                          .groups = 'keep')

#4) Create a lot_summary dataframe using the group_by() and the summarize() functions to group each manufacturing lot by the mean, median, variance, and standard deviation of the suspension coil’s PSI column.
lot_summary <- mecha_coil  %>% group_by(Manufacturing_Lot) %>% summarize(Mean_PSI=mean(PSI),
                                                                         Median_PSI=median(PSI),
                                                                         Var_PSI=var(PSI),
                                                                         Std_Dev_PSI=sd(PSI),
                                                                         .groups = 'keep')

## DELIVERABLE 3

#1) Use the t.test() function to determine if the PSI across all manufacturing lots is statistically different from the population mean of 1,500 pounds per square inch.
t.test(mecha_coil$PSI,mu=1500)


#2) Write 3 more with subset() to determine if PSI for each manufacturing lot is statistically different from the population mean of 1,500 pounds per square inch.
lot1 <- subset(mecha_coil, Manufacturing_Lot=="Lot1")
lot2 <- subset(mecha_coil, Manufacturing_Lot=="Lot2")
lot3 <- subset(mecha_coil, Manufacturing_Lot=="Lot3")

t.test(lot1$PSI,mu=1500)
t.test(lot2$PSI,mu=1500)
t.test(lot3$PSI,mu=1500)
