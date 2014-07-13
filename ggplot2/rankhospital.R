# Write a function called rankhospital that takes three arguments: the 2-character abbreviated name of a
# state (state), an outcome (outcome), and the ranking of a hospital in that state for that outcome (num).

rankhospital <- function(state, outcome, num = "best") {
    hdata <- read.csv('outcome-of-care-measures.csv', colClasses = "character")

    # valid outcome?
    if (outcome == "heart attack") {
        colnum <- 11
    } else if (outcome == "heart failure"){
        colnum <- 17
    } else if (outcome == "pneumonia"){ 
        colnum <- 23
    } else {
        stop("invalid outcome")
        return(0)
    }

    # valid state?
    if (!(state %in% names(table(hdata$State)))){
        stop("invalid state")
        return(0)
    }

    # get the data I want
    mydata <- hdata[hdata$State==state, c(7, 2, colnum)]
    mydata[,3] <- mydata[,as.numeric(3)]
    numrows <- nrow(mydata)

    getrow = 1
    # get the order
    if (num == "best"){
        decr <- FALSE
    } else if (num == "worst") {
        decr <- TRUE
    } else {
        decr <- FALSE
        getrow = num
        if (num > numrows) {
            return(NA)
        }
    }

    op = options(warn = (-1))
    ret = mydata[order(
                       as.numeric(mydata[,3]), 
                       mydata[,2], 
                       na.last=NA, 
                       decreasing=decr
                      ),][getrow,]
    return(ret[,2])
    options(op)
}