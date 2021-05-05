setwd("E:\\FA20\\Stats\\Exercise 6")
library(stats)

vote_table <- read.csv("E:\\FA20\\Stats\\Exercise 6\\vote2_table.csv")
attach(vote_table)

mod.income <- lm(vote_table$E2016_RPct2 ~ vote_table$S_MedEarn2015)
plot(vote_table$E2016_RPct2 ~ vote_table$S_MedEarn2015,
     cex = .5, pch = 19, xlab = 'Median Household Income ($)',
     ylab = 'Population Voting Republican in 2016 Election (%)',
     main = '2016 Republican Voting and Household Income')
summary(mod.income)

mod.poverty <- lm(vote_table$E2016_RPct2 ~ vote_table$P_PctPov)
plot(vote_table$E2016_RPct2 ~ vote_table$P_PctPov,
     cex = .5, pch = 19, xlab = 'People Living in Poverty (%)',
     ylab = 'Population Voting Republican in 2016 Election (%)',
     main = '2016 Republican Voting and Poverty')
summary(mod.poverty)

mod.nonwhite <- lm(vote_table$E2016_RPct2 ~ vote_table$SEth_NWhitePct)
plot(vote_table$E2016_RPct2 ~ vote_table$SEth_NWhitePct,
     cex = .5, pch = 19, xlab = 'Non-White Voters (%)',
     ylab = 'Population Voting Republican in 2016 Election (%)',
     main = '2016 Republican Voting and Non-White Voters')
summary(mod.nonwhite)

model.mvlm <- lm(E2016_RPct2~S_MedEarn2015 + SEth_NWhitePct + P_PctPov, data=vote_table)
summary(model.mvlm, corr=TRUE)
