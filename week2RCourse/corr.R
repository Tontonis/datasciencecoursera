corr <- function(directory, threshold=0) {
  myPath <- paste(directory,list.files(directory), sep="")
  listThreshTest <- complete(directory)
  compVals <- listThreshTest$nobs
  listAbovThresh <- listThreshTest$ID[compVals>threshold]
  corDat <- numeric(0)
  for(i in listAbovThresh) {
    dataTest <- read.csv(myPath[i], header=TRUE)
    corDat <- rbind(corDat, cor(x=dataTest$sulfate, y=dataTest$nitrate, use="pairwise.complete.obs"))
  }
  # colnames(corDat) <- NULL
  corDat
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