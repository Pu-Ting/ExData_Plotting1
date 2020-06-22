[1] "C:/Users/Pu-Ting & Jie/Desktop/202006_Coursera_R learning"
> Data_hp <- read.csv("household_power_consumption.txt", header=T, sep=';', na.strings="?",nrows=2075259, check.names=F, stringsAsFactors=F, comment.char="", quote='\"')
> dim(Data_hp)  ##check the dimension
[1] 2075259       9
data_hp <- subset(Data_hp, Date %in% c("1/2/2007", "2/2/2007")) ## subsetting the interested data by "%in%"
data_hp$Date <- as.Date(data_hp$Date, format = "%d%m%Y") ## change into a easily readable format
datetime <- paste(as.Date(data_hp$Date), data_hp$Time)
data_hp$Datetime <- as.POSIXct(datetime)
par(mar=c(4,4,4,4))   ##since the default margin is too small for the following figure, thus changing the margin by "par"

##plot the corresponding plot
with(data1, plot(Global_active_power~Datetime, type = "l", col = "black", lwd = 2, ylab = "Global Active Power (killowatts)", xlab=""))
