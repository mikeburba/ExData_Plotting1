plot2 <- function(data) {
  with(data, plot(DateTime, Global_active_power, type="l", ylab="Global Active Power (kilowatts)", xlab=""))
}