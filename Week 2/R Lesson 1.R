#R Lesson 1 Week 2

#Read file
houses <- read.csv(file = "/Users/Zeeshan/Desktop/PREDICT 401/Week 2/home_prices.csv", header = TRUE, stringsAsFactors = FALSE)

str(houses)

#Question C---------------------------------------------------------------------------------------------------------------------
price <- houses$PRICE

set.seed(9999)
SRS <- sample(price, 12)
SRS

mean(SRS)

#Question D---------------------------------------------------------------------------------------------------------------------
SS <- price[seq(from = 7, to = 117, by = 10)]
print(SS)
mean(SS)

#Question E---------------------------------------------------------------------------------------------------------------------
summary(SRS)
summary(SS)

#Question F---------------------------------------------------------------------------------------------------------------------
boxplot(list(SRS = SRS, SS = SS))
boxplot(SRS, SS, names = c("SRS", "SS"))

#Question G---------------------------------------------------------------------------------------------------------------------
par(mfrow = c(1, 2)) 
hist(SRS)
hist(SS)

par(mfrow = c(1,1))
stem(SRS)
stem(SS)
