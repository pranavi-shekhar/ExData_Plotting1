# Read only data with dates betwwen 01/02/2007 - 02/02/2007 which is present between row numbers
# 66637-69517 
data =  read.table("household_power_consumption.txt",sep = ";" , skip = 66637 , nrows = 2880)
colnames(data) = read.table("household_power_consumption.txt",sep = ";" , nrows = 1) #Assign column names from data

png(filename = "plot1.png",width = 480,height = 480) #Plot histogram and store in png
hist(data$Global_active_power , col = "red" , main = "Global Active Power" , xlab = "Global Active Power (kilowatts)")
dev.off()