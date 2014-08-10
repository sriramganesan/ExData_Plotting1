source("load_data.R")

plot2 <- function() {
  plot2_data = NULL
    plot2_data <- load_data()
  
  png("plot2.png", width=400, height=400)
  
  plot(plot2_data$Time, plot2_data$Global_active_power,
       type="l",
       xlab="",
       ylab="Global Active Power (kilowatts)")
  
  dev.off()
}
