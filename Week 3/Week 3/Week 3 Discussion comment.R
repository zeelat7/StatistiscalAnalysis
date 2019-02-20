# Week 3 Problem 5.48

#a
pT <- .6
nT <- 25

dbinom(12, size = 25, prob = 0.6)

#b
ppois(18, lambda = 25*0.6, lower.tail = F)

#c

ppois(7, lambda = 25*0.6, lower.tail = T)

# Week 3 Problem 5.55

p = .005
n = 1000
l = n*p
l

#a
x.lessthan.4 <- ppois(3,lambda = l, lower.tail = T)
x.lessthan.4

#b
x.greaterthan.10 <- ppois(11, lambda = l)
x.greaterthan.10

#c
x.equal.0 <- ppois(0,lambda = l, lower.tail = T)
x.equal.0