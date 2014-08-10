source("load_data.R")

plot3 <- function() 
{
  plot3_data <- load_data()
  
  png("plot3.png", width=400, height=400)
  
  plot(plot3_data$Time, plot3_data$Sub_metering_1, type="l", col="black",
       xlab="", ylab="Energy sub metering")
  lines(plot3_data$Time, plot3_data$Sub_metering_2, col="red")
  lines(plot3_data$Time, plot3_data$Sub_metering_3, col="blue")
  legend("topright",
         col=c("black", "red", "blue"),
         c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
         lty=1)
  
  dev.off()
}