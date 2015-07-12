plot3 <- function(data) {
  with(data, {
    plot(DateTime, Sub_metering_1, type="n", xlab="", ylab="Energy sub metering")
    lines(DateTime, Sub_metering_1, col="black")
    lines(DateTime, Sub_metering_2, col="red")
    lines(DateTime, Sub_metering_3, col="blue")
    legend("topright", lty=1, col=c("black", "red", "blue"), legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
  })
}