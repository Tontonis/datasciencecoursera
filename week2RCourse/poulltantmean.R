pollutantmean <- function(directory, pollutant, id=1:322) {
 myPath <- paste(directory,list.files(directory),sep="")
 myData = data.frame()
 for(i in id) {
   myData <- rbind(myData, read.csv(myPath[i], header=TRUE))
 }
 mean(myData[[pollutant]], na.rm=TRUE)
}