## Course Project 1, Plot 3

## Read in the data and subset desired dates
data <- read.table("household_power_consumption.txt", na.string = "?", sep = ";", header = TRUE)
data_new <- subset(data, Date == "1/2/2007" | Date == "2/2/2007")

## Convert Date and Time variables into POSIXlt objects
Date2 <- paste(data_new$Date, data_new$Time, sep = " ")
Date2 <- strptime(Date2, "%d/%m/%Y %H:%M:%S")

## Construct Plot 3 and save to PNG
plot(Date2, data_new$Sub_metering_1, type = "l", col = "black", xlab = "", ylab = "Energy sub metering")
lines(Date2, data_new$Sub_metering_2, type = "l", col = "red")
lines(Date2, data_new$Sub_metering_3, type = "l", col = "blue")
legend("topright", lwd = 1, col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), cex = 0.5)
dev.copy(png, file = "plot3.png")
dev.off()
