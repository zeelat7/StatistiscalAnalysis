# R lesson 2

# R provides binomial probabilties directly
# dbinom(x, size, prob, log = FALSE)  # density function
# pbinom(q, size, prob, lower.tail = TRUE, log.p = FALSE)  # distribution function
# qbinom(p, size, prob, lower.tail = TRUE, log.p = FALSE)  # quantile function
# rbinom(n, size, prob)  # here n is the number of random variates to generate
# size is number of trials, often labeled as the binomial parameter n
# prob is the binomial parameter p, probability of success
# x is a binomial random variable in [0, n]
# we can compute binomial (n, p) probabilities to four significant digits by
# probability <- dbinom(x, size = n, prob = p)
prob_win_four <- dbinom(x = 4, size = 4, prob = 1/6)
sprintf("%.4f", prob_win_four) # result printed with four places behind decimal

# This is the same as the probability that he/she wins no races: x = 0.
prob_loses_four <- dbinom(x = 0, size = 4, prob = 1/6) 
sprintf("%.4f", prob_loses_four)

prob_wins_exactly_one <- dbinom(x = 1, size = 4, prob = 1/6) 
sprintf("%.4f", prob_wins_exactly_one)

# There are a couple of ways to get at this. One would be to take the union
# of the events that he/she wins 1, 2, 3, or 4 races, use dbinom(), and
# then use the addition rule to get the probability of the union.
# Another way, which we show here, is to take one minus the probability
# that he wins no races, a quantity we had computed in 1) a) ii).

#2------------------------------------------------------------------------------

prob_15_of_20 <- pbinom(q = 15, size = 20, prob = 0.5, lower.tail = FALSE) 
sprintf("%.4f", prob_15_of_20)

# Here we can use a while-loop to find the desired value of n = 2m.
# We continue to have half of the cups with cream first (binomial p = 0.5),
# but now we are looking for a distribution function value in the upper tail
# at or below 0.05. This is the value we get from the pbinom() function. 

target_p_value <- 0.05 # we will stop looking when we meet this target or go under 
# later in the course we will call this a critical value in hypothesis testing 
current_p_value <- 1.00 # initialze for search

n <- 0 # initialize number of cups... we will increase by 2 in each iteration 

while (current_p_value > target_p_value) {
  n <- n + 2 # increase by one for this iteration
# we are talking about consecutive hits greater than or equal to n - 1 
  current_p_value <- pbinom(q = n-1, size = n, prob = 0.5, lower.tail = FALSE) 
# print out intermediate results for each iteration
  cat("\n Number of Consecutive Cups Correctly Identified:", n, "p_value: ", 
  sprintf("%.4f", current_p_value))
}

# when we break out of the while-loop it means that the p_value target has been met 
# at this point we know the value of n... the number of consecutive successes 
cat("\n\nLady Tasting Tea Solution: ", n, "Consecutive Cups Correctly Labeled",
  "\n p-value: ",sprintf("%.4f", current_p_value),"<= 0.05 critical value")

#3--------------------------------------------------------------------------------------------
# Again, we turn to built-in functions in R.
# dpois(x, lambda, log = FALSE) # density function
# ppois(q, lambda, lower.tail = TRUE, log.p = FALSE) # distribution function
# qpois(p, lambda, lower.tail = TRUE, log.p = FALSE) # quantiles
# rpois(n, lambda) # random variate generation
# To answer the question, we set lambda to 4.6 and look at the density function. 
# Let's do it in a for-loop and print out intermediate results

for (x in 0:20)
  cat("\n x:", x, "prob:", sprintf("%.4f", dpois(x, lambda = 4.6)))

# let's plot this probability function
x <- 0:20
prob_x <- dpois(x, lambda = 4.6)
plot(x, prob_x, las = 1, type = "h") 
title("Poisson Probabilities (lambda = 4.6)")


#4-----------------------------------------------------------------------------------------------

# Here, we let n = 100 and p = 0.001, and compute the probability x = 0
sprintf("%.4f", dbinom(x = 0, size = 100, prob = 0.001))

# Let lambda = n * p = 100 * 0.001 = .1
sprintf("%.4f", dpois(0, lambda = 0.1))




