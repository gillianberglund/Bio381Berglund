# Data Simulation Tutorial
# 16 March 2022
# GGB 

library(boot)

# why sim data?
# save time: write parts of code before you have data
# baseline for comparisons: checking assumptions in your data
# Test new stats techniques

# Part 1: Normal distributed data --------------
# Start with groups of data 
# for t-tests or ANOVA

# simulate groups with 20 observations
group1 <- rnorm(n=20, mean = 2, sd = 1)
hist(group1)

# change some parameters:
group2 <- rnorm(n = 20, mean = 5, sd = 1)
group3 <- rnorm(n= 20, mean = 2, sd = 3)

hist(group2)
hist(group3)

# Sim data for a linear regression
# two continuous normal variables 
# start simple: assume an intercept of 0
# call the slope beta1
# x is the predictor variable

# start with constant slope:
beta1 <- 1

# our predictor variable is normally distributed 
x <- rnorm(n=20)

# linear model
y <- beta1*x

# you can play with different slopes:
beta1 <- 1.5
y <- beta1*x

# you can also add an intercept:
beta0 <- 2
y <- beta0 + beta1*x


# Part 2: Abundance/cout data

# option 1: data are normal-ish
# use round() to remove decimals

abund1 <- round(rnorm(n = 20, mean = 50, sd = 10))
hist(abund1)

# option 2: poisson distribution 
abund2 <- rpois(n = 20, lambda = 3) # lambda describes poisson distribution and is like an expected count
barplot(table(abund2)) # table function counts the number of each value

# Sometimes the environment affects counts - 
# to account for that, first create our lambdas 
# then use lambdas to simulate counts 

# use a regression to get initial values 
# x is the environmental affect 
pre.lambda <- beta0 + beta1*x

# use inverse log to make lambdas positive
lambda <- exp(pre.lambda)

# use created lambda values to get counts 
abund3 <- rpois(n=20, lambda = lambda)
hist(abund3)

# Part 3: occupancy, presence/absence data -----------
# option 1: getting probs from a beta distribution 
probs <- rbeta(n=20, shape = 1, shape2 = 1)
occ1 <- rbinom(n=20, size = 1, prob = probs)
print(occ1)

# Option 2: occupancy with a covariate
# similar to above, except we're generating probs, not lambdas

pre.probs <- beta0 + beta1*x
print(pre.probs)

# convert to 0-1 scale:
psi <- inv.logit(pre.probs)

# create new occupancy data:
occ2 <- rbinom(n=20, size = 1, prob = psi)
print(occ2)
