# MechaCar

## Summary
This analysis utilizes the valued scientific tool, R, to perform statistical analyses on two datasets.  Relying solely on R, the report contains a variety of statistical tests to demonstrate conceptual competencies in addition to technical competencies using the provided tools. The product being evaluated, the MechaCar, looks as it will be a succesful product once a few manufacturing details and specifications are finalized utilizing test data. The test data includes 50 potential prototypes to be considered.

###### Data sets analyzed: 
* [Multiple dimensions that may influence fuel efficiency](MechaCar_mpg.csv): informing decisions among 50 potential prototype MechaCars
* [Car engine capacity vs make](Suspension_Coil.csv): data from tests of the suspension coils to determine consistency across lots

### Tests and Outcomes

###### Performing a Multiple Linear Regression Analysis Comparing Contributing Factors
Multiple linear regression tests look at the effect of individual components to the overall outcome of a vehicle's fuel efficiency.  Five concurrent independent variables contributed to the model: length of the vehicle, weight of the vehicle, angle of the spoiler, clearance from the ground, all wheel drive (binary) and the dependent variable: miles per gallon of fuel.


|summary|   vehicle_length |   vehicle_weight |    spoiler_angle | ground_clearance |          AWD     |
 ------   ----------------   ----------------   ----------------   -----------------  ----------------- 
|  slope|              6.27|            0.0012|             0.069|              3.55|             -3.41|


* Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
The slope of the linear regression model (m coefficient) for each individual model can inform the impact each of the components to the overall success of the vehicle model being tested. Given the five different variables, m coefficient values indicate that the weight of the vehicle and angle of the spoiler are the variables that cause the greatest influence on the vehicles fuel efficiency.  If MechaCar strives to build vehicles with the environmentally and fiscally important maximum fuel efficiency, they will pay close attention to the combination of these two variables.  

* Is the slope of the linear model considered to be zero? Why or why not?
The slope of the linear model is not considered zero.  For the angle of the spoiler and the weight of the vehicle, the values approximate zero.  

* Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
The lines would intersect the y-axis at -104.0.  This intercept value points to the influence of additional variables that are confounding the results and not considered in these calculations. Therefore, this model fails to provide sufficient information to inform decision about the prototypes.

