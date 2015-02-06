source ('read_data.R')

png('figure/plot3.png')

with(data, plot(DateTime, Sub_metering_1, type='l', xlab="", ylab="Energy sub metering"))
with(data, lines(DateTime, Sub_metering_2, type="l", col="red"))
with(data, lines(DateTime, Sub_metering_3, type="l", col="blue"))

legend("topright", col=c("black", "red", "blue"), legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1)
dev.off()