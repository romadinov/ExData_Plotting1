source ('read_data.R')

png('figure/plot2.png')
with(data, plot(DateTime, Global_active_power, type='l', ylab="Global Active Power (kilowatts)", xlab=""))
dev.off()