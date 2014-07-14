# Script to test agecount.R

setwd("/Desktop")
source("agecount.R")

agecount(3)
#[1] 0

num <- agecount(21)
print(num)
#[1] 60
