#Test 1

#Number 4
data_1 <- c(18,18,18,9,15,5,10,5,15)

summary(data_1)
sd(data_1)

#Number 5
precip <- c(3.5,3.9,3.7,2.7,1.6,1.0,2.2,0.4,2.4,3.6,1.5,3.7,3.7,4.2,4.2,2.0,4.1,3.4,3.4,3.6)
summary(precip)

#Number 7
cov <- c(159,150,186,105,197,130,172,121,116,125)
summary(cov)
mean(cov)
sd(cov)

#Number 9
restA <- c(120, 67, 89, 97, 124, 68, 72, 96)
restB <- c(115, 126, 49, 56, 98, 76, 78, 95)

max(restA) - min(restA)
var(restA)
sd(restA)

max(restB) - min(restB)
var(restB)
sd(restB)

#Number 10
women <- c(67,61,68,64,64,75,61,67,65,60,64,59,70,64,67,68,62,65,63,71)
mean(women, trim = 0.10)
mean(women)
mean(women, trim = 0.20)
mean(women, trim = 0.15)
mean(women, trim = 0.30)















