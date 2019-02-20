#Discussion Week 2 - Chapter 3 Number 1 - Analyzing the Databases  
#read file
mfg_DB <- read.csv(file = "/Users/Zeeshan/Desktop/PREDICT 401/Week 1/ManufacturingDB.csv", header = TRUE, stringsAsFactors = FALSE)

#check structure of file
str(mfg_DB)

summary(mfg_DB$New.Cap..Exp.)
par(mfrow = c(1,2))
hist(mfg_DB$New.Cap..Exp.)
boxplot(mfg_DB$New.Cap..Exp.)

