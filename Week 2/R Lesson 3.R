#R Lesson 3 Week 2

#Read file
mileage <- read.csv(file = "/Users/Zeeshan/Desktop/PREDICT 401/mileage.csv", header = TRUE, stringsAsFactors = FALSE)
mpg_class <- aggregate(MPG ~ CLASS, mileage, mean)
mpg_class$SD <- aggregate(MPG ~ CLASS, mileage, sd)[, 2] # [, 2] std devs in second column
mpg_class # low variability within classes, large mean differences between classes

hp_class <- aggregate(HP ~ CLASS, mileage, mean) 
hp_class$SD <- aggregate(HP ~ CLASS, mileage, sd)[, 2]
hp_class
