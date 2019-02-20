#R Test Number 4

#set up matrix
lin_equat <- matrix(c(1,-1,1,1,1,-1,1,1,1),nrow = 3, byrow = TRUE)
lin_equat

#right side of the equal sign
answers <- matrix(c(1,1,3), nrow = 3, byrow = TRUE)
answers

#use solve to solve the equation
solution <- solve(lin_equat, answers)
solution

#assign values to x y and z
x = solution[1,1] 
y = solution[2,1]
z = solution[3,1]

#test solution
x-y+z
x+y-z
x+y+z



