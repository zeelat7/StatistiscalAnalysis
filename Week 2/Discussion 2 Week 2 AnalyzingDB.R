#Discussion Week 2 - Chapter 3 Number 5 - Analyzing the Databases  
#read file
Hosp_DB <- read.csv(file = "/Users/Zeeshan/Desktop/PREDICT 401/Week 2/Hospital.csv", header = TRUE, stringsAsFactors = FALSE)

#check structure of file
str(Hosp_DB)

#create window
par(mfrow = c(1,1))

#create plot
boxplot(Hosp_DB$Births, data = Hosp_DB, main = "Births at Hospitals", ylab = "Number of Births")

#create plot with ggplot
library(ggplot2)
births <- data.frame(Hosp_DB$Births)

myColor <- "#FF6347"
birthbox <- ggplot(births) +
  aes(x = births, y = births) +
  geom_boxplot(fill = myColor) +
  xlab("Number of Births")
hist + ylim(0,6000)
print(birthbox)
