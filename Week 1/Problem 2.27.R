#define vectors
class_int <- c("50-under 60", "60-under 70", "70-under 80", "80-under 90", "90-under 100")
freq <- c(13, 27, 43, 31, 9)
print(freq)

#define data frame
prob_df <-data.frame(class_int, freq)
print(prob_df)

par(mfrow=c(1,1))
barplot(freq, class_int)

#install.packages("ggplot2")
#library(ggplot2)
#str(prob_df)

#ggplot(prob_df, aes(class_int)) +
  #geom_histogram(aes(y=..frequency..))


#qplot(class_int, data = freq, geom = "histogram", ylab = "frequency")
#ggplot() + aes(class_int)+ geom_histogram(binwidth=1, colour="black", fill="white")
