pollutantmean <- function(directory, pollutant, id=1:322) {
  myPath <- paste(directory, "/",id,".csv")
  myData <- lapply(myPath, read.csv)
  mean(myData[[pollutant]], rm.na=TRUE)
}

