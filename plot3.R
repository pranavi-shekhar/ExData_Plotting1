#Refer plot2.R for comments
data =  read.table("household_power_consumption.txt",sep = ";" , skip = 66637 , nrows = 2880)
colnames(data) = read.table("household_power_consumption.txt",sep = ";" , nrows = 1)
data$Date = as.Date(data$Date , format = "%d/%m/%Y")
data$DateAndTime = as.POSIXct(paste(data$Date,data$Time))

png(filename = "plot3.png",width = 480,height = 480)
par(mar=(c(4,4,1,1)))
plot(data$DateAndTime,data$Sub_metering_1,type = "l" , xlab = "",ylab = "Energy Sub Metering")
lines(dt , data$Sub_metering_2 ,col="red")
lines(dt , data$Sub_metering_3 ,col="blue")
legend("topright" , col=c("black","red","blue") , legend=c("Sub_Metering_1", "Sub_Metering_2" , "Sub_Metering_3") , lty = 1 ,cex = 0.8)
dev.off()
