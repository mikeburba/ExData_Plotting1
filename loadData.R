loadData <- function(startDate=NULL,endDate=NULL,nrows=-1) {
  zip <- "hh_power_consumption.zip"
  if ( ! file.exists(zip)) {
    download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip",
                  "hh_power_consumption.zip",
                  method="curl")
    
    unzip(zip)
  }
  
  file <- "household_power_consumption.txt"
  data <- read.table(file,header=T,sep=";",na.strings=c("?"), stringsAsFactors=F,nrows=nrows)
  
  library(dplyr)
  data <- data %>% 
    mutate(DateTime=as.POSIXct(paste(Date, Time), format="%d/%m/%Y %H:%M:%S")) %>%
    mutate(Date=as.Date(Date, format="%d/%m/%Y"))

  if ( ! is.null(startDate) && ! is.null(endDate)) {
    startDate <- as.Date(startDate)
    endDate <- as.Date(endDate)
    data <- data %>% dplyr::filter(Date >= startDate & Date <= endDate)
  } else {

    if ( ! is.null(startDate) ) {
      startDate <- as.Date(startDate)
      data <- data %>% dplyr::filter(Date >= startDate)
    }
    
    if ( ! is.null(endDate)) {
      endDate <- as.Date(endDate)
      data <- data %>% dplyr::filter(Date <= endDate)
    }
  }
  
  data
}