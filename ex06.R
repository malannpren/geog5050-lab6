setwd("E:\\FA20\\Stats\\Exercise 6")
library(stats)

vote_table <- read.csv("E:\\FA20\\Stats\\Exercise 6\\vote2_table.csv")
attach(vote_table)

urbanlm <- lm(E2016_RPct2 ~ Pct_Urban)
plot(E2016_RPct2 ~ Pct_Urban, cex = .5, pch = 19, xlab = 'Percent Urban (%)',
     ylab = 'Population Voting Republican in 2016 Election (%)',
     main = '2016 Republican Voting and Urban Areas')
summary(urbanlm)
