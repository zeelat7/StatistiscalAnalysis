#QS Guide Section 11 aggregate and table functions

data(ToothGrowth)
with(ToothGrowth, aggregate(len, by = list(supp, dose), median))

with(ToothGrowth, addmargins(table(supp, dose)))
