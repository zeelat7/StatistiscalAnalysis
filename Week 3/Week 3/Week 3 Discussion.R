# Week 3 Discussion Problem

#Problem 4.35
mat <- matrix(c(10, 15, 30, 20, 5, 15), nrow=3, ncol=2)

#create the variables as vectors\
Var1 <- c("A", "B", "C")
Var2 <- c("D", "E")

#Rename the rows and colunms
rownames(mat) <- Var1
colnames(mat) <- Var2
print(mat)

#create sum of the matrix
total <- sum(mat)
print(total)

#a - Probability of E
pE <- sum(mat[,2])/total
pE

#b - Probability of B Union D
sumB <- sum(mat[2,])
sumB
sumD <- sum(mat[,1])
sumD
#subtract 15 since it'll be counted twice
pBUD <- (sum(sumB + sumD) - 15)/total
pBUD

#c - Probability of A Intersect E
pAnE <- mat[1,2]/total
pAnE

#d - Probability of B Given E
pBgE <- mat[2,2]/sum(mat[,2])
pBgE

  
#e - Probability of A Union B
sumB <- sum(mat[2,])
sumB
sumA <- sum(mat[1,])
sumA
#subtract 15 since it'll be counted twice
pAUB <- (sum(sumA + sumB))/total
pAUB