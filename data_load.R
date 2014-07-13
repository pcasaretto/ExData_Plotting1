data = read.csv(pipe('grep -E "(^1/2/2007)|(^2/2/2007)" household_power_consumption.txt'), sep = ";", na.strings = c("?"))
header = read.csv(pipe('head -n 1 household_power_consumption.txt'), sep = ";")
colnames(data) = colnames(header)
data$Date_and_Time = strptime(paste(data$Date,data$Time), "%d/%m/%Y %H:%M:%S")
