## Course Project 1, Plot 2

## Read in the data and subset desired dates
data <- read.table("household_power_consumption.txt", na.string = "?", sep = ";", header = TRUE)
data_new <- subset(data, Date == "1/2/2007" | Date == "2/2/2007")

## Convert Date and Time variables into POSIXlt objects
Date2 <- paste(data_new$Date, data_new$Time, sep = " ")
Date2 <- strptime(Date2, "%d/%m/%Y %H:%M:%S")
      
## Construct Plot 2 and save to PNG
GAP <- as.numeric(data_new$Global_active_power)
plot2 <- plot(Date2, GAP, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")
dev.copy(png, file = "plot2.png")
dev.off()