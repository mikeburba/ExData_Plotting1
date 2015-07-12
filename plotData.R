plotData <- function(data=NULL) {
  # load data 
  if (is.null(data))
    data <- loadData("2007-02-01","2007-02-02")
  
  lapply(c(1:4), function(x) {
    f <- paste0("plot",x)
    png(file=paste0("plot",x,".png"), height=480, width=480)
    do.call(f, list(d=data))
    dev.off()
  })
}