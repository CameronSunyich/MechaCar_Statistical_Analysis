# Mecha_Statistical_Analysis

# Deliverable 1

## Linear Regression to Predict MPG

<img width="707" alt="Deliverable#1_Summary_Screenshot" src="https://user-images.githubusercontent.com/90425412/149649777-67b07b05-d786-4b6d-907b-fedaa0aa0dc6.png">

After completing the summary, my finding showed possible variance to the "MPG" value in the MechaCar prototype. These variables were "Vehicle Length" at 2.60e-12 and "Vehicle Ground Clearance" at 5.21e-0 for my P-values. These numbers create a non-random impact on the "MPG". However, the P-value being less than 0.05% indicates a non-zero and means possible rejections of our hypothesis. More evidence to support this is the fact our Multiple R-squared is 0.7149. Roughly ~71% of all MPG predictions will be determined by this model. Not a very effective linear model predicts MPG of MechaCar prototypes.

# Deliverable 2

## Summary Statistics on Suspension Coils

Total Summary

<img width="398" alt="Total_Summary_Screenshot" src="https://user-images.githubusercontent.com/90425412/149714250-8f1f9477-3b66-4ff5-a9d4-b0e5b0c7f655.png">

Lot Summary

<img width="558" alt="Lot_Summary_Screenshot" src="https://user-images.githubusercontent.com/90425412/149714272-7d3db0f8-af18-4853-84fd-d5cece1d1d68.png">

Initially, the PSI variance is within the recommended limit of under 100 PSI. This can be seen, in the "Total Summary" under the column "Var_PSI". However, when taking a closer look at all of the Lots there is a humungous difference in Lot 3 when compared to Lot 1 and 2. Lot 3 has a Var_PSI well over the limit of 100 PSI and is reaching just over 170 PSI. Lot 3 creates a disproportionate variation when compared to the other Lots. This data variance can be seen in the "Lot Summary" above. These results, lead me to believe that this inconsistency in Lot 3 should be investigated further as it could affect business.

# Deliverable 3

## T-Tests on Suspension Coils

After completing a random sample of 50 T-test, the data showed the means are statistically similar. The true mean of the sample is 1498.78 PSI. This Mean makes sense as our Total Summary above has the same mean value. Our P-value is also higher than 0.05, at 0.06. Due to this similarity and P-value, there is no evidence to reject the null hypothesis.

Random Sample T-Test

<img width="672" alt="T-test_Total_Screeshot" src="https://user-images.githubusercontent.com/90425412/149715602-ccf0475f-7295-4353-ae0e-c53852eaf19b.png">

Lots T-Test

<img width="590" alt="Lot_T-test_Screenshot" src="https://user-images.githubusercontent.com/90425412/149715639-398aefaa-2fcb-4bbd-8c18-006455aaf3ad.png">

Incidentally, after testing the Lots individually the results are different. As seen above, Lot 1 has the true sample mean of 1500 and a P-Value of 1. Meaning, we cannot reject the null hypothesis that there is no statistical difference between the observed sample mean and the presumed population mean of 1500. Lot 2 has similar results to Lot 1, with a sample mean of 1500.02, and a P-Value of 0.61. Seeing that the sample mean and the population mean of 1500 are statistically similar we cannot reject our null hypothesis of Lot 2 either.
Our results vary in Lot 3, the sample mean is 1496.14 and the P-Value is 0.04, this is lower than the common significance level of 0.05. These numbers that our means are not similar and there is evidence to reject the null hypothesis. This evidence further suggests investigating Lot 3 as this lot seems to have the most manufacturing issue causing production delays.

# DELIVERABLE 4

## Study Design: MechaCar vs Competition
Compare Vehicle Models and their MPG

### Metrics

* MPG (Independent Variable)
* Vehicle Model (Dependent Variable)
* Manufacturer (Independent Variable)
* Current Selling Price (Independent Variable)

### Hypothesis

"There is no stitistical correlation between the MPG and Current Selling Price when compared to similar models to AutosRUs."

### Statistical Test and Importance

Multiple Linear Regression:	P-value less than 0.05 for a given parameter, that parameter is unlikely to be contributing a random amount of variance to the outcome of the model. Coefficient of Determination (R^2) greater than 0.5, the Linear Regression Equation would be suitable to use for making predictions for possible outcomes based on new input variables. This way of testing would best show how AutosRUs models compare to other manufacturers' models and if MPG truly affects the selling price to these similar models. That way AutosRUs can know how they compare to other companies, as well as if there is a need for improvement in MPG.

### Data Source

Data source to test hypothesis and similar linear models can be found in the link below.
https://www.epa.gov/automotive-trends/explore-automotive-trends-data
