# R for Statistical Analyses

## Summary
This analysis utilizes the valued scientific tool, R, to perform statistical analyses on two datasets.  Relying solely on R, the report contains a variety of statistical tests to demonstrate conceptual competencies in addition to technical competencies using the provided tools. The product being evaluated, the MechaCar, looks as it will be a successful product once a few manufacturing details and specifications are finalized utilizing test data. The test data includes 50 potential prototypes to be considered.

###### Data sets analyzed and resources:
* [R_Script for the analysis](MechaCarChallenge.RScript.R)
* [Multiple dimensions that may influence fuel efficiency](MechaCar_mpg.csv): informing decisions among 50 potential prototype MechaCars
* [Car engine capacity vs make](Suspension_Coil.csv): data from tests of the suspension coils to determine consistency across lots

[View this file as a text download.](MechaCarWriteUp.txt)

### Tests and Outcomes

###### Performing a Multiple Linear Regression Analysis Comparing Contributing Factors
Multiple linear regression tests look at the effect of individual components to the overall outcome of a vehicle's fuel efficiency.  Five concurrent independent variables contributed to the model: length of the vehicle, weight of the vehicle, angle of the spoiler, clearance from the ground, all wheel drive (binary) and the dependent variable: miles per gallon of fuel.


    |summary|   vehicle_length |   vehicle_weight | spoiler_angle | ground_clearance |          AWD     |
    | ------|   ---------------|   ---------------|---------------|----------------- | -----------------| 
    | slope |              6.27|            0.0012|          0.069|              3.55|             -3.41|


* Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
The slope of the linear regression model (m coefficient) for each individual model can inform the impact each of the components to the overall success of the vehicle model being tested. Given the five different variables, m coefficient values indicate that the weight of the vehicle and angle of the spoiler are the variables that cause the greatest influence on the vehicles fuel efficiency.  If MechaCar strives to build vehicles with the environmentally and fiscally important maximum fuel efficiency, they will pay close attention to the combination of these two variables.  

* Is the slope of the linear model considered to be zero? Why or why not?
The slope of the linear model is not considered zero.  For the angle of the spoiler and the weight of the vehicle, the values approximate zero.  

* Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
The lines would intersect the y-axis at -104.0.  This intercept value points to the influence of additional variables that are confounding the results and not considered in these calculations. Therefore, this model fails to provide sufficient information to inform decision about the prototypes.

###### Summary Statistics exploring suspension coil performance

    | summary  |  PSI      |   
    |----------|-----------|   
    | mean     |       1499| 
    | median   |       1500| 
    | variance |       62.3| 
    | std dev  |       7.89| 

* Does the current manufacturing data meet the design specification for suspension coil variance to not exceed 100 pounds? 
Yes, the specifications do match the required specifications.  The variance value is only 62.3 pounds, which is well below the 100 pound limit.

###### T-test to evaluate the suspension coil
T-tests are used to evaluate whether or not relationships between the values are statisically different from the mean, determining the value of the data as evidence of the design efficacy. For a one-sided t-test to be tested we test against a null hypothesis that there is no difference between the tested mean and the population mean.  The alternative hypothesis will assert that there is a notable difference between the sample population and the population mean.

In the case of the suspension coil data, the population mean is calculated to be 3.175361.  The sample that was randomly generated has a calculated mean of 3.175732 with a p value of 0.4076.  The p-value supports that there is not a significantly significant difference between the sample group and the population mean. The null hypothesis cannot be rejected.

###### Original Study Plan

Prior to making manufacturing recommendations to MechaCar, I would strongly recommend that the company invest in market research about the target market for their products.  Market research would inform if their customers are looking for: 
* performance features: (e.g. fast cars, irregardless of fuel economy)
* physical aspects such as vehicle size and color
* vehicle sex appeal which may drive decisions toward cars with positions lower too the ground or spoiler angles that are sportier
* price compoonents: what price point does the target market purchase at and which car has the parameters that will allow for the highest profit per unit

With a clear definition of a target market to inform prioritization in production of potential models, then the company can utilize a multiple linear regression model to identify the features that will most significantly impact the success of the product sales.  Using this model, the features with the most significant impact can be tested with focus groups, using t-tests, to ensure the combination of components are accurately matched to the target audience.






