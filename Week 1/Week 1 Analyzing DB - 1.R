#read file
mfg_DB <- read.csv(file = "/Users/Zeeshan/Desktop/PREDICT 401/Week 1/ManufacturingDB.csv", header = TRUE, stringsAsFactors = FALSE)

#check structure of file
str(mfg_DB)

#create window
par(mfrow = c(1,1))

#create histogram
hist(mfg_DB$No..Prod..Wkrs.)

#create histrogram using ggplot2
remove.packages(c("ggplot2", "data.table"))

install.packages('ggplot2', dependencies = TRUE)

library(ggplot2)

# Custom color code
myBlue <- "#377EB8"

# Change the fill color to myBlue
hist <- ggplot(mfg_DB, aes(x = mfg_DB$No..Prod..Wkrs.)) +
  geom_histogram(breaks=seq(0, 700, by=100), fill = myBlue) +
  xlab("Number of Production Workers") +
  ylab("Frequency")

hist + ylim(0,100) + xlim(0,700)


