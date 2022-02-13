# MechaCar Statistical Analysis

## Overview of Project

AutosRUS' newest prototype, the MechaCar, is suffering from production troubles that are blocking the manufcaturing team's progress. Our data analytics teams is being called in to review the production data for insights that may help the manufacturing team by doing the following:

* Perform multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes
* Collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots
* Run t-tests to determine if the manufacturing lots are statistically different from the mean population
* Design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers. For each statistical analysis, you’ll write a summary interpretation of the findings.


## Resources

Data Source: MechaCar_mpg.csv and Suspension_Coil.csv
Data Tools: R, RStudio 2021.09.2


## Results

## Linear Regression to Predict MPG - Deliverable 1

![Linear_Regression_MPG](https://user-images.githubusercontent.com/92001105/153717392-2a83aea4-898c-4dac-808a-f26a41f03b64.png)

**Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?**
Our analysis of p-values for each variable shows the intercept, vehicle_length and ground_clearance provide a non-random amount of variance to the mpg values in our dataset. These variables show a statistically significant impact on mpg.

**Is the slope of the linear model considered to be zero? Why or why not?**
We can state that the slope of the linear model is not considered to be zero, or we can reject the null hypothesis. This is due to the low p-values, smaller than 0.05% for ground clearance and MPG, and therefore there is come correlation between some of the independent variables.

**Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?**
Lack of significant variables is evidence of overfitting, indicating the model performs well with the current dataset but fails to generalize and predict future data correctly. With six variables and a sample size of 50, our sample dataset is considered to be overfitted by some standards.

Using more than 5 independent variables may result in multicollinearity, where two or more of the variables are highly correlated to one another, impacting the analysis.

Considering the possibility of overfitting and multicollinearity, along with a Multiple R-squared of 0.7119 and an adjusted R-squared of 0.6791, this linear model predicts the mpg of MechaCar prototypes adequately. Additional analysis after addressing sample size and potential multicollinearity should provide more reliable results.


## Summary Statistics on Suspension Coils - Deliverable 2

### Total Summary

![Challenge_2_Total_Summary](https://user-images.githubusercontent.com/92001105/153731284-3b15a972-770a-4d09-b6d7-4f18044e06df.png)

Based on the overall summary the mean and median are very closely aligned and the variance is within the allowable range of 100 PSI, being 62 PSI, however a closer look may need to be undertaken.

### Lot Summary


![Challenge_2_Lot_Summary](https://user-images.githubusercontent.com/92001105/153731293-def8ab66-b8ab-4f20-8c00-8e943e6e58f8.png)

Looking into the data further we can see that Lot 1 and Lot 2 are well within the allowable range with very low variances, however Lot 3 is beyond the allowable variance and should be investigated further.


## T-Tests on Suspension Coils - Deliverable 3

One sample t-tests were performed to understand if there is a statistical difference between the means of the sample dataset and a hypothesized, potential population dataset. A population mean of 1,500 PSI was used.

Total dataset: Using a significance level of 0.05 percent, a p-value of 0.06 is above the significance level and therefore there is not sufficient evidence to reject the null hypothesis and the two means are statistically similar.

	One Sample t-test

data:  scoil_table$PSI
t = -1.8931, df = 149, p-value = 0.06028
alternative hypothesis: true mean is not equal to 1500
95 percent confidence interval:
 1497.507 1500.053
sample estimates:
mean of x 
  1498.78 
  
Lot 1: Using a significance level of 0.05 percent, a p-value of 1 is well above significance level. There is not sufficient evidence to reject the null hypothesis.

	One Sample t-test

data:  subset(scoil_table, Manufacturing_Lot == "Lot1")$PSI
t = 0, df = 49, p-value = 1
alternative hypothesis: true mean is not equal to 1500
95 percent confidence interval:
 1499.719 1500.281
sample estimates:
mean of x 
     1500 
     
Lot 2: Using a significance level of 0.05 percent, a p-value of 0.6 is well above significance level. There is not sufficient evidence to reject the null hypothesis.

	One Sample t-test

data:  subset(scoil_table, Manufacturing_Lot == "Lot2")$PSI
t = 0.51745, df = 49, p-value = 0.6072
alternative hypothesis: true mean is not equal to 1500
95 percent confidence interval:
 1499.423 1500.977
sample estimates:
mean of x 
   1500.2 

Lot 3: Using a significance level of 0.05 percent, a p-value of 0.04 is below significance level. There is enough evidence to reject the null hypothesis and conclude the two means are statistically similar.

	One Sample t-test

data:  subset(scoil_table, Manufacturing_Lot == "Lot3")$PSI
t = -2.0916, df = 49, p-value = 0.04168
alternative hypothesis: true mean is not equal to 1500
95 percent confidence interval:
 1492.431 1499.849
sample estimates:
mean of x 
  1496.14 


## Study Design: MechaCar vs Competition

Due to fluctuating and often rising gas prices, fuel efficiency is a very useful metric and is often a consideration of many car buyers.

The null hypothesis is that there is no statistically significant difference between MechaCar's city fuel efficiency and the city fuel efficiency of a similarly sized and powered car that is produced by the competition.

Testing Two-sample t-test, as it enables us to compare MechaCar's city fuel efficiency to the competition's city fuel efficiency and calculate statistical significance.

Data For MechaCar and comparable models, data should include vehicle weight, vehicle length, city miles per gallon, and number of engine cylinders.
