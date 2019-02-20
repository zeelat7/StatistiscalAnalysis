#QS Guide Section 7 Logical Comparisons
y <- c(33,44,29,16,25,45,33,19,54,22,21,49,11,24,56)

min(y)
max(y)

which.max(y)
which.min(y)

median(y)

less_than <- y[y < median(y)]
greater_than <- y[y > median(y)]
print(less_than)
print(greater_than)