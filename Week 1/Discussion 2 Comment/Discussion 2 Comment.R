#install.packages("ggplot2")
library(ggplot2)
ring_wt <- c(51,53,41,44,57,47,51,44,57,53,53,44,46,51,52,38,55,49,56,42,52,41,54,53,49,43,50,57,56,52,63,46,50,52,44,46,50,69,42,36,62,43,47,55,57,53,47,58,39,42)
ring_df <- data.frame(ring_wt)
myColor <- "#FF6347"
ring_hist <- ggplot(ring_df) +
  aes(x = ring_df) +
  geom_histogram(breaks=seq(30, 70, by=5), fill = myColor) +
  xlab("Ring Weights") +
  ylab("Frequency")

hist + ylim(0,20) + xlim(30,70)
print(ring_hist)
