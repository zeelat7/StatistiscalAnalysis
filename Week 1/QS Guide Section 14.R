#QS Guide Section 14 Statistical computation, simulation, random sampling

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
