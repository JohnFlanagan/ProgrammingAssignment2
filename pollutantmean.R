pollutantmean <- function(directory, pollutant, id = 1:332) {
        allfiles <- list.files(path=directory, full.names = TRUE)
        alldata <- data.frame()
        for (i in id) {
                alldata <- rbind(alldata, read.csv(allfiles[i]))
        }
        if(pollutant == "nitrate") {
                answer <- mean(alldata$nitrate, na.rm = TRUE)
        } else {
                if(pollutant == "sulfate") {
                        answer <- mean(alldata$sulfate, na.rm = TRUE)
                } else {
                        return ("Variable not recorded")
                }
        }
        return(answer)
}