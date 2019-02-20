#QS Guide Section 6 Summary Statistics
x <- c(5,9,2,3,4,6,7,0,8,12,2,9) 

x[2] #ans = 9
x[2:4] #ans = 9,2,3
x[c(2,3,6)] #ans = 9,2,6
x[c(1:5, 10:12)] #ans = 5,9,2,3,4 and 12,2,9
x[-(10:12)] #ans = 5,9,2,3,4,6,7,0,8

y <- c(33,44,29,16,25,45,33,19,54,22,21,49,11,24,56)

summary(y[1:3]) #Monday
summary(y[4:6]) #Tuesday
summary(y[7:9]) #Wednesday
summary(y[10:12]) #Thursday
summary(y[13:15]) #Friday

summary(y[c(1,4,7,10,13)]) #shop1
summary(y[c(2,5,8,11,14)]) #shop2
summary(y[c(3,6,9,12,15)]) #shop3

