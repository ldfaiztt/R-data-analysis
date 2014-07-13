#Part 1 Plot the 30-day mortality rates for heart attack
setwd("/Desktop")

#read the outcome dataset into R and look at the first fe
outcome<-read.csv("outcome-of-care-measures.csv",colClasses="character")
head(outcome)

#46 columns in the dataset
ncol(outcome)

#create a histogram of the 30-day death rates from heart attack (column 11)
outcome[, 11] <- as.numeric(outcome[, 11])

#labels = TRUE labels the value of each bar on the histogram
hist(outcome[,11], labels = TRUE, main='Heart attack 30-day Death Rate', xlab='30-day Death Rate')

# extra:
library(googleVis)
gvt = gvisTable(outcome, options = list(showRowNumber = T, height = 800,width=1200))
plot(gvt)

#################################################################################

#Part 2 Plot the 30-day mortality rates for heart attack, heart failure, and pneumonia
setwd("/Desktop")
outcome<-read.csv("outcome-of-care-measures.csv",colClasses="character")

#identify which columns contain the 30-day death rate from heart attack, heart failure, and pneumonia
#column 11 heart attack, column 17 heart failure, column 23 pneumonia
names(outcome)

# Coerce these columns to be numeric using the as.numeric function
outcome[, 11] <- as.numeric(outcome[, 11])
outcome[, 17] <- as.numeric(outcome[, 17])
outcome[, 23] <- as.numeric(outcome[, 23])

# Make histograms of the death rates for each outcome and put the histograms on the same plot window.
# Sets the plot window to 3 rows and 1 column.
par(mfrow=c(3, 1))

#3 plots with the x-axis label as "30-day Death Rate"
hist(outcome[, 11], xlab="30-day Death Rate", main="Heart Attack")
hist(outcome[, 17], xlab="30-day Death Rate", main="Heart Failure")
hist(outcome[, 23], xlab="30-day Death Rate", main="Pneumonia")

#Set all of the histograms to have the same numerical range on the x-axis by using xlim
#You can calculate the range of a vector of numbers by using the range function.
m1 = median(outcome[, 11], na.rm = T)
m2 = median(outcome[, 17], na.rm = T)
m3 = median(outcome[, 23], na.rm = T)
hist(outcome[, 11], xlab= substitute("30-day Death Rate, " * bar(X) == k, list(k = mean(outcome[, 11], na.rm = T))), main = "Heart Attack")
abline(v = m1, lwd = 2, col = "blue")
hist(outcome[, 17], xlab= substitute("30-day Death Rate, " * bar(X) == k, list(k = mean(outcome[, 17], na.rm = T))), main="Heart Failure")
abline(v = m2, lwd = 2, col = "green")
hist(outcome[, 23], xlab= substitute("30-day Death Rate, " * bar(X) == k, list(k = mean(outcome[, 23], na.rm = T))), main="Pneumonia")
abline(v = m3, lwd = 2, col = "red")

#################################################################################################

#Part 3 Plot 30-day death rates by state
#read in the outcome data to R
#and coerce the 30-day death rate for heart attack to be numeric
setwd("/Desktop")
outcome <- read.csv("outcome-of-care-measures.csv", colClasses = "character")
outcome[, 11] <- as.numeric(outcome[, 11])

#use the table function to count the number of hospitals in each states
table(outcome$State)

#Subset the original dataset and exclude states that contain less than 20 hospitals. 
#Name this new subsetted dataset outcome2.
table(outcome$State) < 20
table(outcome$State)[table(outcome$State) < 20]
exclu = c("AK","DC","DE","GU","HI","RI","VI","VT")
outcome2 <- outcome[!outcome$State %in% exclu, ]
table(outcome2$State)

# make a basic boxplot of the death rates by state
# Set the y-axis label to say "30-day Death Rate"
# Set the title of the plot to be "Heart Attack 30-day Death Rate by State"
death <- outcome2[, 11]
state <- outcome2$State
boxplot(death ~ state, ylab="30-day Death Rate", main="Heart Attack 30-day Death Rate by State")

# Sort the states by their median 30-day death rate 
# and plot the boxplots in order of their median rate.
by.m<-reorder(state, death, median, na.rm=T)
boxplot(death ~ by.m, ylab="30-day Death Rate", main="Heart Attack 30-day Death Rate by State", las=2, cex.axix=0.7, xaxt="n")

# Alter the x-axis labels so that they include the number of hospitals in that state 
# eg.Connecticut would be CT (32) 
axis(1, by.m, paste0(by.m,"(",table(outcome2$State)[outcome2$State],")"), las=2, cex.axis=0.7)

###################################################################################################

# Part 4 Plot 30-day death rates and numbers of patients
# read in the outcome data and the hospital data
setwd("/Desktop")
outcome <- read.csv("outcome-of-care-measures.csv", colClasses = "character")
hospital <- read.csv("hospital-data.csv", colClasses = "character")

# merge the two datasets together to match the Hospital.Ownership variable to the death rate data.
outcome.hospital <- merge(outcome, hospital, by = "Provider.Number")

# create the relevant variables that we want to plot
death <- as.numeric(outcome.hospital[, 11]) ## Heart attack outcome
npatient <- as.numeric(outcome.hospital[, 15])
owner <- factor(outcome.hospital$Hospital.Ownership)

# Use the xyplot function in the lattice package to make a plot of the relationship 
# between 30-day death rate for heart attack versus the number of patients seen
# Use the panel.lmline to add a linear regression line highlighting the relationship 
# between number of patients seen and the death rate
library(lattice)
xyplot(death ~ npatient | owner, xlab="Number of Patients Seen", ylab="30-day Death Rate", main="Heart Attack 30-day Death Rate by Ownership",panel = function(x, y, ...){
panel.xyplot(x, y, ...)
panel.lmline(x, y, lwd = 2)
# fit <- lm(y ~ x)
# panel.abline(fit, lwd = 2)
})