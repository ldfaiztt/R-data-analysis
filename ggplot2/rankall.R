#Write a function called rankall that takes two arguments: an outcome name (outcome) and a hospital 
#ranking (num). The function reads the outcome-of-care-measures.csv and returns a 2-column data frame
#containing the hospital in each state that has the ranking specified in num.

rankall <- function(outcome, num = "best") {
    hdata <- read.csv('outcome-of-care-measures.csv', colClasses = "character")
    #hdata <- read.csv('outcome-of-care-measures.csv')
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

    states <- names(table(hdata$State))
    
    #op = options(warn) 

    retdata <- data.frame()
    for (state in states) {
        # get the data I want for that state
        mydata <- hdata[hdata$State==state, c(7, 2, colnum)]
        mydata[,3] <- mydata[,as.numeric(3)]
        numrows <- nrow(mydata)
        if (num == "best") {
            decr <- FALSE
            getrow <- 1
        } else if (num == "worst") {
            decr <- TRUE
            getrow <- 1
        } else { 
            decr <- FALSE
            getrow <- num
        }
        if (is.numeric(num) && (num > numrows)) {
            ret <- NA
        } else {
            ret <- mydata[order(
                       as.numeric(mydata[,3]), 
                       mydata[,2], 
                       na.last=NA, 
                       decreasing=decr
                      ),][getrow,2]
        }
        rd <- data.frame(hospital = ret, state = state)
        retdata <- rbind(retdata, rd)
        #print(sprintf("%s -> %s", state, ret))
    }
    #names(retdata) <- c("hospital", "state")
    return(retdata)
    #options(op)
}