setwd("E:/coursera course/Course4- Exploratory Data Analysis/Week1")
electric <- read.table("household_power_consumption.txt", sep = ";", header=TRUE, na.strings="?")
electric$datetime <- strptime(paste(electric$Date, electric$Time, sep = ""), format="%d/%m/%Y %H:%M:%S")
electric$Date <- as.Date(electric$Date, format = "%d/%m/%Y")
electric$Time <- as.ti(electric$Time, format = "%H:%M:%S")
mydata <- electric[electric$Date >= as.Date("2007-02-01") & electric$Date <= as.Date("2007-02-02"),]

# plot2 #
plot(mydata$datetime, as.numeric(as.character(mydata$Global_active_power)), type = "l", ylab = "Global Active Power (kilowatts)")
dev.off()
