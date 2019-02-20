#QS Guide Section 13 Writing functions
data("trees")
sampVar <- function(x) {
  return(sum((x - mean(x))^2)/(length(x)-1))
}

apply(trees, 2, sampVar)

apply(trees, 2, var)


