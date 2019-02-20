#QS Guide Section 15 Graphics

data("faithful")
pairs(faithful)
plot(faithful)
set.seed(1234)
rand_num <- rnorm(250, mean = 0, sd = 1)

hist(rand_num, main = "Histogram of 250 random normal values \n X ~ N(0, 1)",
     ylab = "Frequency", xlab = "X")

stem(rand_num)