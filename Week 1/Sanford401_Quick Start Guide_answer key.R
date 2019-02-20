## Quick Start Guide

## 5. Working with Vectors
# Exercises
# 1. Define

x <- c(4, 2, 6)
y <- c(1, 0, -1)

length(x) # (a) 3
sum(x)    # (b) 12
sum(x ^ 2)# (c) 56
x + y     # (d) 5, 2, 5
x * y     # (e) 4, 0, -6
x - 2     # (f) 2, 0, 4
x ^ 2     # (g) 16, 4, 36

# 2. Decide what the following sequences are and use R to check your answers:

seq(2, 9)               # (a) 2, 3, 4, 5, 6, 7, 8, 9
seq(4, 10, by = 2)      # (b) 4, 6, 8, 10
seq(3, 30, length = 10) # (c) 3, 6, 9, 12, 15, 18, 21, 24, 27, 30
seq(6, -4, by = -2)     # (d) 6, 4, 2, 0, -2, -4

# 3. Determine what the result will be of the following R expressions,
#    and then use R to check you are right:

rep(2,4)            # (a) 2, 2, 2, 2
rep(c(1,2),4)       # (b) 1, 2, 1, 2, 1, 2, 1, 2
rep(c(1,2),c(4,4))  # (c) 1, 1, 1, 1, 2, 2, 2, 2
rep(1:4,4)          # (d) 1, 2, 3, 4, 1, 2, 3, 4, 1, 2, 3, 4, 1, 2, 3, 4
rep(1:4,rep(3,4))   # (e) 1, 1, 1, 2, 2, 2, 3, 3, 3, 4, 4, 4

# 4. Use the rep function to define simply the following vectors in R. 

rep(6, 6)              # (a) 6,6,6,6,6,6
rep(c(5, 8), 4)        # (b) 5,8,5,8,5,8,5,8
rep(c(5, 8), each = 4) # (c) 5,5,5,5,8,8,8,8


## 6. Summary Statistics
# Exercises
# 1. If x <- c(5, 9, 2, 3, 4, 6, 7, 0, 8, 12, 2, 9) decide what each of the
#    following is and use R to check your answers:

x[2]             # (a) 9
x[2:4]           # (b) 9, 2, 3
x[c(2, 3, 6)]    # (c) 9, 2, 6
x[c(1:5, 10:12)] # (d) 5, 9, 2, 3, 4, 12, 2, 9
x[-(10:12)]      # (e) 5, 9, 2, 3, 4, 6, 7, 0, 8

# 2. The data, y <-c(33, 44, 29, 16, 25, 45, 33, 19, 54, 22, 21, 49, 11, 24, 56),
#    contain sales of  milk in litres for 5 days in three different shops (the
#    first 3 values are for shops 1,2 and 3 on Monday, etc.) Produce a
#    statistical summary of the sales for each day of the week and also for
#    each shop.

y <-c(33, 44, 29, 16, 25, 45, 33, 19, 54, 22, 21, 49, 11, 24, 56)
summary(y[1:3])   # Monday
# Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
# 29.00   31.00   33.00   35.33   38.50   44.00 

summary(y[4:6])   # Tuesday 
# Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
# 16.00   20.50   25.00   28.67   35.00   45.00 

summary(y[7:9])   # Wednesday
# Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
# 19.00   26.00   33.00   35.33   43.50   54.00 

summary(y[10:12]) # Thursday
# Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
# 21.00   21.50   22.00   30.67   35.50   49.00 

summary(y[13:15]) # Friday
# Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
# 11.00   17.50   24.00   30.33   40.00   56.00 


summary(y[c(1, 4, 7, 10, 13)]) # Shop 1
# Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
# 11      16      22      23      33      33 

summary(y[c(2, 5, 8, 11, 14)]) # Shop 2
# Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
# 19.0    21.0    24.0    26.6    25.0    44.0 

summary(y[c(3, 6, 9, 12, 15)]) # Shop 3
# Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
# 29.0    45.0    49.0    46.6    54.0    56.0


## 7. Logical Comparisons
# Exercises
# 1. For the data y <-c(33, 44, 29, 16, 25, 45, 33, 19, 54, 22, 21, 49, 11, 24, 56),
# find the minimum and maximum of y their location in the vector.

y <-c(33, 44, 29, 16, 25, 45, 33, 19, 54, 22, 21, 49, 11, 24, 56)
min(y) # [1] 11
max(y) # [1] 56
which.min(y) # [1] 13
which.max(y) # [1] 15

# 2. Find the median of y and use logicals to split y into two subsets. One subset
# will have all values in y strictly less than the median, and the other subset
# all values strictly greater than the median. Print the resulting subsets.

median(y) # [1] 29

less_than <- y[y < median(y)]
greater_than <- y[y > median(y)]
print(less_than)
print(greater_than)


## 8. Matrices
# Exercises
# Create in R matrices x ... and y.
# Calculate the following and check your ansers in R.

x <- matrix(data = c(3, 2, -1, 1), nrow = 2, ncol = 2, byrow = TRUE)
x
#      [,1] [,2]
# [1,]    3    2
# [2,]   -1    1

y <- matrix(c(1, 0, 4, 1), nrow = 2)
y
#      [,1] [,2]
# [1,]    1    4
# [2,]    0    1


2 * x    # (a)
#      [,1] [,2]
# [1,]    6    4
# [2,]   -2    2

x * x    # (b)
#      [,1] [,2]
# [1,]    9    4
# [2,]    1    1

x %*% x  # (c)
#      [,1] [,2]
# [1,]    7    8
# [2,]   -4   -1

x %*% y  # (d)
#      [,1] [,2]
# [1,]    3   14
# [2,]   -1   -3

solve(x) # (e)
#      [,1] [,2]
# [1,]  0.2 -0.4
# [2,]  0.2  0.6

x[1, ]   # (f)  [1] 3 2
x[, 2]   # (g)  [1] 2 1


## 9. Accessing Example Datasets
# Exercises
# 1. Use the dataset mtcars and find the mean weight and mean fuel consumption for
#    vehicles in the dataset. (type: help(mtcars) for a description of the variables
#    available.

data(mtcars)
mean(mtcars$wt)  # mean weight [1] 3.21725
mean(mtcars$mpg) # mean fuel comsumption  [1] 20.09062


## 10. The apply() function
# Exercises
# 1. Repeat the analyses of the datasets quakes and mtcars using the function apply()
#    to simplify the calculations.

data(quakes)
apply(quakes, 2, mean)
#       lat      long     depth       mag  stations 
# -20.64275 179.46202 311.37100   4.62040  33.41800 

data(mtcars)
apply(mtcars, 2, mean)
#        mpg        cyl       disp         hp       drat         wt       qsec 
#  20.090625   6.187500 230.721875 146.687500   3.596563   3.217250  17.848750 
#         vs         am       gear       carb 
#   0.437500   0.406250   3.687500   2.812500 


## 11. The aggregate() and table() functions
# Exercises
# 1. Use aggregate() to determine the median len for each combination of supp
# and dose

data(ToothGrowth)
with(ToothGrowth, aggregate(len, by = list(supp, dose), median))
#   Group.1 Group.2     x
# 1      OJ     0.5 12.25
# 2      VC     0.5  7.15
# 3      OJ     1.0 23.45
# 4      VC     1.0 16.50
# 5      OJ     2.0 25.95
# 6      VC     2.0 25.95

# 2. Use with() and addmargins() to produce the table of counts for the
# ToothGrowth data.

with(ToothGrowth, addmargins(table(supp, dose)))
#      dose
# supp  0.5  1  2 Sum
#   OJ   10 10 10  30
#   VC   10 10 10  30
#   Sum  20 20 20  60


## 12. Loops
# Exercises
# 1. Write a "for" loop to compute the value of a factorial for integers
# greater than zero. Execute the loop for an integer equal to 5, and print
# the factorials for 1, 2, 3, 4 and 5. Repeat the above, but with a "while"
# loop.

x <- 5
for(i in 1:x) {
	print(factorial(i))
}

# [1] 1
# [1] 2
# [1] 6
# [1] 24
# [1] 120

y <- 1
while(y <= 5) {
	print(factorial(y))
	y <- y + 1
}

# [1] 1
# [1] 2
# [1] 6
# [1] 24
# [1] 120


## 13. Writing Functions
# Exercises
# 1. Write a simple function that computes the sample variance for a vector of
# numeric values. Use this function with apply() to compute the sample variance
# for the dimensions in the trees data.

sampVar <- function(x) {
	return(sum((x - mean(x))^2)/(length(x)-1))
}

apply(trees, 2, sampVar)
#      Girth     Height     Volume 
#   9.847914  40.600000 270.202796 

# Compare your results to those computed with var().
apply(trees, 2, var)
#      Girth     Height     Volume 
#   9.847914  40.600000 270.202796 


## 14. Statistical Computation, Simulation and Random Sampling
# Exercises
# 1. Suppose X ~ N(2, 0.25). Denote by f and F the density and distribution functions
#    of X respectively. Use R to calculate

dnorm(0.5, mean = 2, sd = sqrt(0.25))  # (a) [1] 0.008863697
pnorm(2.5, mean = 2, sd = sqrt(0.25))  # (b) [1] 0.8413447
qnorm(0.95, mean = 2, sd = sqrt(0.25)) # (c) [1] 2.822427

pnorm(3, mean = 2, sd = sqrt(0.25)) - pnorm(1, mean = 2, sd = sqrt(0.25))
# (d) [1] 0.9544997

# 2. Repeat question 1 in the case that X has a t-distribution with 5 degrees of freedom
dt(0.5, df = 5)   # (a) [1] 0.3279185
pt(2.5, df = 5)   # (b) [1] 0.972755
qt(0.95, df = 5)  # (c) [1] 2.015048

pt(3, df = 5) - pt(1, df = 5)  # (d) [1] 0.1665591

# 3. Use the function rpois to simulate 10000 values from a Poisson distribution with a
#    parameter of your own choice. Produce a statistical summary of the result and
#    check that the mean and variance are in reasonable agreement with the true
#    population values.

set.seed(1234)
poisVector <- rpois(10000, lambda = 0.5)
mean(poisVector)  # [1] 0.4973
var(poisVector)   # [1] 0.4934421


## 15. Graphics
# Exercises
# 1. Use the dataset "faithful" and create a scatter plot matrix of the variables.
data(faithful)
plot(faithful)

# 2. Use x <- rnorm(250) to generate 250 standard normal random variables. Produce
# the histogram and compare to a stem-and-leaf plot of the data. The function stem()
# will produce the stem-and-leaf plot.

set.seed(1234)
normVector <- rnorm(250, mean = 0, sd = 1)

hist(normVector, main = "Histogram of 250 random normal values \n X ~ N(0, 1)",
	ylab = "Frequency", xlab = "X")

stem(normVector)