#QS Guide Section 8 Matrices
mat_x <- matrix(c(3,2,-1,1), nrow = 2, byrow = TRUE)
mat_y <- matrix(c(1,4,0,1), nrow = 2, byrow = TRUE)
mat_x
mat_y

2 * mat_x 
mat_x * mat_x
mat_x %*% mat_x
mat_x %*% mat_y
solve(mat_x)
mat_x[1,]
mat_x[,2]
