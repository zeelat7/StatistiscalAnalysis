#R Test Number 3

#pull in data trees
data(trees)
trees

#find median for three variables
apply(trees,2,median)

#print the row number and values that match the median of trees volume
med_val <- median(trees$Volume)

if (med_val == median(trees$Volume)){
  print(trees[trees$Volume==med_val, ])
}

#calculate diameter
diameter <- trees$Girth/pi
summary(diameter)

#calculate radius
radius <- diameter/2
area <- pi*(radius)^2
summary(area)

#create boxplots
myColor <- "#FF6347"
par(mfrow = c(1,2))
boxplot(diameter, main = "Tree Diameters", notch = TRUE, ylab = "Diameter", col = myColor)
boxplot(area, main = "Tree Areas", notch = TRUE, ylab = "Area", col = "deepskyblue")

#use R as calculator to show that outlier in areas is not an extreme outlier
area
mean(area)
mean(area, trim = .10)




