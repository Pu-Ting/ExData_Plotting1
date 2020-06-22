Data_hp <- read.csv("household_power_consumption.txt", header=T, sep=';', na.strings="?", 
+                       nrows=2075259, check.names=F, stringsAsFactors=F, comment.char="", quote='\"')
> data_hp <- subset(Data_hp, Date %in% c("1/2/2007","2/2/2007"))
> data1$Date <- as.Date(data_hp$Date, format="%d/%m/%Y")
> datetime <- paste(as.Date(data_hp$Date), data_hp$Time)
> data_hp$Datetime <- as.POSIXct(datetime)
> 
> with(data_hp, {
+     plot(Sub_metering_1~Datetime, type="l", lwd = 2
+          ylab="Global Active Power (kilowatts)", xlab="")
+     lines(Sub_metering_2~Datetime,col='Red')   ##line function is different from abline and aiming at adding information to current plot.
+     lines(Sub_metering_3~Datetime,col='Blue')
+ })
> legend("topright", col=c("black", "red", "blue"), lty=1, lwd=2, 
+        legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
> 
