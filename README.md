# MechaCar Statistical Analysis
## Summary
 AutosRUs' is experiencing production issues with MechaCar. The manufacturing department has asked to analyze production data for insights in production using MPG test results from 50 prototype MechaCars based on 5 variables - vehicle length, vehicle weight, spoiler angle, ground clearance and powertrain. 

See mpg_table data here, https://github.com/Ninax3/MechaCar_Statistical_Analysis/blob/main/MechaCar_mpg.csv

## Resources
- R Studio: R version 4.2.0
- Tidyverse library 1.3.1 (dplyr 1.0.9)

## Linear Regression to Predict MPG
### Linear Regression Model
![MechaCar_Statistical_Analysis "lm"](https://github.com/Ninax3/MechaCar_Statistical_Analysis/blob/main/lm.png)
### Linear Regression Summary
![MechaCar_Statistical_Analysis "lm_summary"](https://github.com/Ninax3/MechaCar_Statistical_Analysis/blob/main/lm_summary.png)

1.) Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?<br>

Pr(>|t|) value represents the probability that each (variable) coefficient contributes a random amount of variance to the linear model.

Variables:
- mpg: 0 < .05, statistically significant, non-random amount of variance
- vehicle length: 0 < .05, statistically significant, non-random amount of variance
- vehicle weight: .08 > .05 not statistically significant, random amount of variance
- spoiler angle: .31 > .05 not statistically significant, random amount of variance
- ground clearance: 0 < .05 statistically significant, non-random amount of variance
- AWD: .19 > .05 not statistically significant, random amount of variance<br>

2.) Is the slope of the linear model considered to be zero? Why or why not?<br>
 
The slope of the linear model is NOT considered to be zero as the variable coeefficients are not all zero.
The multiple linear regression formula for mpg = -.01 + 6.267(vehicle length)+ .001(vehicle weight)+ .069(spoiler angle)+ 3.546(ground clearance)- 3.411(AWD), which results in a non-zero slope.<br>

3.) Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?<br>

R-squared is .749 and is considered to have a strong correlation to the dataset. However, there may be other variables contributing to the effectiveness of MPG and MechaCar prototypes. 


## Summary Statistics on Suspension Coils
In this dataset, the weight capacities of multiple suspension coils were tested to determine if the manufacturing process is consistent across production lots. 

1.) The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

The overall mean and variance is within the manufacturing accepted limits of 100 pounds per square inch (PSI). However, when examining the variance by lot, lot 3 is outside of the variance limits at 170 PSI and does not meet the standard. 

### Total Manufacturing Summary
![MechaCar_Statistical_Analysis "total_summary"](https://github.com/Ninax3/MechaCar_Statistical_Analysis/blob/main/total_summary.png)
### Lot Summary
![MechaCar_Statistical_Analysis "lot_summary"](https://github.com/Ninax3/MechaCar_Statistical_Analysis/blob/main/lot_summary.png)

## T-tests on Suspension Coils
### T-test
![MechaCar_Statistical_Analysis "ttes"](https://github.com/Ninax3/MechaCar_Statistical_Analysis/blob/main/ttes.png)
- At a significance level of 0.05, we fail to reject the null hypothesis with a p-value = 0.06028. There is no statistical difference between the sample and population mean. 
### T-test Lot 1
![MechaCar_Statistical_Analysis "ttestlot1"](https://github.com/Ninax3/MechaCar_Statistical_Analysis/blob/main/ttestlot1.png)
- At a significance level of 0.05, we fail to reject the null hypothesis with a  p-value = 1. There is no statistical difference between the sample and population mean. 
### T-test Lot 2
![MechaCar_Statistical_Analysis "ttestlot2"](https://github.com/Ninax3/MechaCar_Statistical_Analysis/blob/main/ttestlot2.png)
- At a significance level of 0.05, we fail to reject the null hypothesis with a p-value = 0.6072. There is no statistical difference between the sample and population mean. 
### T-test Lot 3
![MechaCar_Statistical_Analysis "ttestlot3"](https://github.com/Ninax3/MechaCar_Statistical_Analysis/blob/main/ttestlot3.png)
- At a significance level of 0.05, we reject the null hypothesis with a p-value = 0.04168. There is a statistical difference between the sample and population mean. These findings correspond to the summary statistics in the section above. 


## Study Design: MechaCar vs Competition
A statistical study to analyze safety and how MechaCar compares to the competition may prove to be valuable. Consumers are not only interested in MPG (miles per gallon)/fuel efficiency but safety is a top competitive factor important to consumers.<br> 
The analysis would include:
- Metrics: for both MechaCar and Competitor - Insurance Safety Rating as it relates to Weight; MPG (city and highway); Cylinders; Price
- Hypothesis: Null: MechaCar is safer than the competition; Alternative: MechaCar is not safer than the competitiion
- Statistical Test: Linear Regression Model and the T-Test
- Data for Statistical Test: for both MechaCar and Competitor(s) - Insurance Safety Rating; Weight; MPG (city and highway); Cylinders; Price







