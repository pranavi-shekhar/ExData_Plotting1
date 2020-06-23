# Read only data with dates betwwen 01/02/2007 - 02/02/2007 which is present between row numbers
# 66637-69517 
data =  read.table("household_power_consumption.txt",sep = ";" , skip = 66637 , nrows = 2880)
colnames(data) = read.table("household_power_consumption.txt",sep = ";" , nrows = 1)#Assign col names from data

data$Date = as.Date(data$Date , format = "%d/%m/%Y")#Convert dates in data to Date format
data$DateAndTime = as.POSIXct(paste(data$Date,data$Time)) #Generate date and time together in POSIXct format

png(filename = "plot2.png",width = 480,height = 480) #Plot the line graph and store in png

plot(data$DateAndTime,data$Global_active_power,type = "l" , xlab = "" , ylab = "Global Active Power (kilowatts)")

dev.off()