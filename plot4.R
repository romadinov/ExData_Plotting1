source ('read_data.R')

png('figure/plot4.png')

attach(data)

  par(mfcol=c(2,2))

  # Plot 1    
  plot(DateTime, Global_active_power, xlab="", ylab="Global Active Power", type="l")

  # Plot 2
  plot(DateTime, Sub_metering_1, type='l', xlab="", ylab="Energy sub metering")
  lines(DateTime, Sub_metering_2, type="l", col="red")
  lines(DateTime, Sub_metering_3, type="l", col="blue")
  legend("topright", col=c("black", "red", "blue"), legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, bty="n")

  # Plot 3
  plot(DateTime, Voltage, xlab="datetime", ylab="Voltage", type="l")

  # Plot 4
  plot(DateTime, Global_reactive_power, xlab="datetime", type="l", yaxt="n")
  levels<-seq(0,0.5, 0.1)
  axis(2, at=levels, labels=levels)

detach(data)

dev.off()