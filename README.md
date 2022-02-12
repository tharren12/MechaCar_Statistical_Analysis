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

## Linear Regression to Predict MPG

![Linear_Regression_MPG](https://user-images.githubusercontent.com/92001105/153717392-2a83aea4-898c-4dac-808a-f26a41f03b64.png)

**Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?**
Our analysis of p-values for each variable shows the intercept, vehicle_length and ground_clearance provide a non-random amount of variance to the mpg values in our dataset. These variables show a statistically significant impact on mpg.

**Is the slope of the linear model considered to be zero? Why or why not?**
We can state that the slope of the linear model is not considered to be zero, or we can reject the null hypothesis. This is due to the low p-values, smaller than 0.05% for ground clearance and MPG, and therefore there is come correlation between some of the independent variables.

**Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?**
Lack of significant variables is evidence of overfitting, indicating the model performs well with the current dataset but fails to generalize and predict future data correctly. With six variables and a sample size of 50, our sample dataset is considered to be overfitted by some standards.

Using more than 5 independent variables may result in multicollinearity, where two or more of the variables are highly correlated to one another, impacting the analysis.

Considering the possibility of overfitting and multicollinearity, along with a Multiple R-squared of 0.7119 and an adjusted R-squared of 0.6791, this linear model predicts the mpg of MechaCar prototypes adequately. Additional analysis after addressing sample size and potential multicollinearity should provide more reliable results.


## Summary Statistics on Suspension Coils


