setwd("E:/coursera course/Course4- Exploratory Data Analysis/Week1")
electric <- read.table("household_power_consumption.txt", sep = ";", header=TRUE, na.strings="?")
electric$datetime <- strptime(paste(electric$Date, electric$Time, sep = ""), format="%d/%m/%Y %H:%M:%S")
electric$Date <- as.Date(electric$Date, format = "%d/%m/%Y")
mydata <- electric[electric$Date >= as.Date("2007-02-01") & electric$Date <= as.Date("2007-02-02"),]

### plot3 ######

plot (mydata$datetime, mydata$Sub_metering_1, type = "l", ylab = "Energy Sub Metering", xlab = "", col ="black")
lines (mydata$datetime, mydata$Sub_metering_2, col = "red")
lines (mydata$datetime, mydata$Sub_metering_3, col = "blue")
legend ("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
        lty = 1, col = c("black", "red", "blue"), lwd=2,cex=0.7)
dev.off()