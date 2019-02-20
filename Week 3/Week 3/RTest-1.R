#R Test Number 1

#sequence of integers 6 to 10
integers <- seq(6,10,1)
print(integers)

#twofold repetition of the vector 
vec <- c(2, -5.1, -33)
twovec <- rep(vec,2)
print(twovec)

#vector with a value of the sum 7/42 and 2
val_sum_vector <- c(sum((7/42),2))
print(val_sum_vector)

#combine the three vectors created
final_vec <- c(integers, twovec, val_sum_vector)
print(final_vec)

#extract first and last elements
sec_fv <- c(final_vec[1], tail(final_vec, n=1))
print(sec_fv)

#Form a third vector from the elements not extracted in (a)
third_vec <- final_vec[2:11]
print(third_vec)

#reconstruct the original vector
orig_vec <- append(sec_fv, third_vec, after = 1)
print(orig_vec)






