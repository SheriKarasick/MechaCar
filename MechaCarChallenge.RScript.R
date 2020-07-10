# Read in the data source file for model production analysis
MechaCar_mpg <- read_csv("~/Desktop/Berkeley_Data_Science/MechaCar/Resources/MechaCar_mpg.csv")
View(MechaCar_mpg)
colnames(MechaCar_mpg)  # View column names and rename them for ease of use in formulas
names(MechaCar_mpg)[names(MechaCar_mpg) == "vehicle length"] <- "vehicle_length"
names(MechaCar_mpg)[names(MechaCar_mpg) == "vehicle weight"] <- "vehicle_weight"
names(MechaCar_mpg)[names(MechaCar_mpg) == "spoiler angle"] <- "spoiler_angle"
names(MechaCar_mpg)[names(MechaCar_mpg) == "ground clearance"] <- "ground_clearance"
lm(formula = mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar_mpg) # Complete multiple linear regression
# Load the suspension coil data
Suspension_Coil <- read_csv("~/Desktop/Berkeley_Data_Science/MechaCar/Resources/Suspension_Coil.csv")
View(Suspension_Coil)
summary(Suspension_Coil) #Calculate the summary statistics for suspension coil data
pressure <- Suspension_Coil$PSI  #name PSI-pressure as a variable for easy recall
var(pressure) #Calculate the variance in the pressure variable
sd(pressure) #Calculate the standard deviation of the pressure variable
new_sample_coils <- Suspension_Coil %>% sample_n(50) #take a sample from population data
t.test(log10(pressure),mu=mean(log10(new_sample_coils$PSI))) #complete t test comparing population mean to sample mean
