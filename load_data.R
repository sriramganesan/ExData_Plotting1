
load_data <- function() {
  filename <- "./Exploratory/household_power_consumption.txt"
  df_pc <- read.table(filename,
                   header=TRUE,
                   sep=";",
                   colClasses=c("character", "character", rep("numeric",7)),
                   na="?")
  # convert date and time variables to Date/Time class
  df_pc$Time <- strptime(paste(df_pc$Date, df_pc$Time), "%d/%m/%Y %H:%M:%S")
  df_pc$Date <- as.Date(df$Date, "%d/%m/%Y")
  # only use data from the dates 2007-02-01 and 2007-02-02
  dates <- as.Date(c("2007-02-01", "2007-02-02"), "%Y-%m-%d")
  df_pc <- subset(df_pc, Date %in% dates)
  
  return(df_pc)
  
}