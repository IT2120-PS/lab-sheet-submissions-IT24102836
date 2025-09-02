setwd("C:/Users/DASUN/OneDrive/Documents/SLIIT/Y2S1/Labs/PS/Lab 06")

# 1.
# ii. What is the probability that at least 47 students passed the test?
pbinom(47,50,0.85, lower.tail = FALSE)

# 2.
# iii. What is the probability that exactly 15 calls are received in an hour?
dpois(15,12)
