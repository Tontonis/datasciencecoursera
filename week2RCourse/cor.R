corr <- function(directory, threshold=0) {
  myPath <- paste(directory,list.files(directory), sep="")
  listThreshTest <- complete(directory)
  compVals <- listThreshTest$X117L
  listAbovThresh <- listThreshTest$X1L[compVals>threshold]
  corDat <- data.frame()
  for(i in listAbovThresh) {
    print(myPath[i])
    dataTest <- read.csv(myPath[i], header=TRUE)
    corDat <- rbind(corDat, cor(dataTest$sulfate, dataTest$nitrate))
  }
}


cr <- corr("~/Documents/datasciencecoursera/specdata/", 150)
head(cr)
summary(cr)

cr <- corr("~/Documents/datasciencecoursera/specdata/", 400)
head(cr)
summary(cr)

cr <- corr("~/Documents/datasciencecoursera/specdata/", 5000)
head(cr)
summary(cr)