source ('read_data.R')

png('figure/plot1.png')
with(data, hist(Global_active_power, xlab="Global Active Power (kilowatts)", main='Global Active Power', col="red"))
dev.off()