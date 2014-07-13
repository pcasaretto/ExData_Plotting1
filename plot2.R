source("data_load.R")
png("plot2.png",width=480,height=480,units="px")
plot(data$Date_and_Time, data$Global_active_power, type = "l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()
