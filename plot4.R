plot4 <- function(data) {
  par(mfrow=c(2,2))
  plot1(data)
  with(data, plot(DateTime,Voltage, type="l"))
  plot3(data)
  with(data, plot(DateTime,Global_reactive_power, type="l"))
}