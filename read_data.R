library(data.table)

# Workaround for data.table bug with na strings in numeric columns
data <- fread('household_power_consumption.txt', sep=';', 
              colClasses=c('character',
                           'character',
                           'character',
                           'character',
                           'character',
                           'character',
                           'character',
                           'character', 
                           'character'), header=T, na.strings=c("?"))

data[, `:=`(Global_active_power=as.numeric(Global_active_power), 
            Global_reactive_power=as.numeric(Global_reactive_power), 
            Voltage=as.numeric(Voltage), 
            Global_intensity=as.numeric(Global_intensity), 
            Sub_metering_1=as.numeric(Sub_metering_1), 
            Sub_metering_2=as.numeric(Sub_metering_2), 
            Sub_metering_3=as.numeric(Sub_metering_3))]

data[,Date:=as.Date(Date, "%d/%m/%Y")]

data=data[Date>='2007-02-01' & Date<='2007-02-02']

data[,DateTime:=as.POSIXct(strptime(paste(Date,Time), '%Y-%m-%d %H:%M:%S'))]


