## Course Project 1, Plot 1

## Read in the data and subset desired dates
data <- read.table("household_power_consumption.txt", na.string = "?", sep = ";", header = TRUE)
data_new <- subset(data, Date == "1/2/2007" | Date == "2/2/2007")

## Construct Plot 1 and save to PNG
plot1 <- hist(data_new$Global_active_power, xlab = "Global Active Power (kilowatts)", main = "Global Active Power", col = "Red")
dev.copy(png, file = "plot1.png")
dev.off()