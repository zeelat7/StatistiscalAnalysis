#R Test Number 2

#create quadratic function
quad_func <- function(x,a,b,c){
   y <- a + b*x + c*(x^2)
   return(y)
}

#create vector of 101 values from -2 to 2
x <- c(seq(-2,2,length=101))
print(x)

#use values provided with quadratic function and use values from vector x
y <- quad_func(x,-1,0,1)
print(y)

#plot y versus x
myColor <- "#FF6347"
plot(x,y,main = "Plot of y versus x", col = myColor)
grid(nx = NULL, ny = NULL, col = "lightgray", lwd = par("lwd"), equilogs = TRUE)

#confirm the roots
which(0.0000 == y)[[1]]
which(0.0000 == y)[[2]]
which(-1.0000 == x)[[1]]
which(1.0000 == x)[[1]]

x[26]
y[26]
x[76]
y[76]
