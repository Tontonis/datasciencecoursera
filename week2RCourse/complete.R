complete <- function(directory, id=1:322) {
  myPath <- paste(directory,list.files(directory),sep="")
  count <- data.frame()
  for(i in id) {
    myData <-read.csv(myPath[i])
    count <- rbind(count, c(i, sum(complete.cases(myData))))
  }
  colnames(count) <- c("ID", "nobs")
  count
}

complete('~/Documents/datasciencecoursera/specdata/', 30:25)
complete('~/Documents/datasciencecoursera/specdata/', 1)
complete('~/Documents/datasciencecoursera/specdata/', c(2, 4, 8, 10, 12))
complete('~/Documents/datasciencecoursera/specdata/', 3)