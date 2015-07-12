plot1 <- function(data) {
  with(data, hist(Global_active_power, main="Global Active Power", xlab="Global Active Power (kilowatts)", col="red", type="n"))
}