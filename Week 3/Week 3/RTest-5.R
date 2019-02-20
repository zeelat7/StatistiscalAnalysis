#R Test Number 5

#generate random samples
set.seed(123)
x <- rnorm(1000, mean = 0, sd = 2)
y <- rnorm(1000, mean = 0, sd = 1)

#create new object
new_obj <- cbind(x,y)

#apply function to find sd
apply(new_obj,2,sd)

#create histograms
par(mfrow = c(2,1))

hist(x, main = "X Values", col = "dodgerblue4", xlim = c(-6,6))
hist(y, main = "Y Values", col = "darkolivegreen1", xlim = c(-6,6))

#create scatter plot for x and y values
par(mfrow = c(1,1))
plot(x,y, main = "X Versus Y Scatterplot", col = "firebrick1")
legend("bottomleft", legend=c(print(paste("x sd = ", round(sd(x), digits = 4), print(paste("y sd = ", round(sd(y), digits = 4)))))), cex = 0.75)

