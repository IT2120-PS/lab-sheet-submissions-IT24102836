# Exercise
observed <- c(120, 95, 85, 100)
prob <- c(.25, .25, .25, .25)

# Perform chi-squared test
chisq.test(x = observed, p = prob)

#Since the p-value is 0.08966, which is greater than 5% (0.05) of significance, 
#we can conclude that the probability of customers choosing one of four snacks 
#will be the same which is 0.25.