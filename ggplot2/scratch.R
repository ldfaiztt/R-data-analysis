# read and make col 11 numeric
outcome <- read.csv('outcome-of-care-measures.csv', colClasses = "character")
outcome[, 11] <- as.numeric(outcome[, 11])

# only use data where hospitals in State >= 20
outcome.allstates <- table(outcome$State)
outcome.cstates <- outcome.allstates >= 20
outcome.states <- names(outcome.allstates[outcome.cstates])
outcome2 <- subset(outcome, outcome$State %in% outcome.states)

# or (one-liner)
outcome2 <- outcome[(table(outcome$State)>=20)[outcome$State],]