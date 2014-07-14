# Script to test count.R

setwd("/Desktop")
source("count.R")

count("other")
#[1] 6

num <- count("unknown")
print(num)
#[1] 10
