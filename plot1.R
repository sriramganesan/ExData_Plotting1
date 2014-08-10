source("load_data.R")

plot1 <- function() 
{
  plot1_data = NULL
    plot1_data <- load_data()
  
  png("plot1.png", width=400, height=400)
  
  hist(plot1_data$Global_active_power,
       main="Global Active Power",
       xlab="Global Active Power (kilowatts)",
       ylab="Frequency",
       col="red")
  
  dev.off()
}