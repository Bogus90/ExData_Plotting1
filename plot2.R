data<-read.csv("household_power_consumption.txt", sep=";")
dataSubSet<-data[data$Date=="1/2/2007"|data$Date=="2/2/2007",]
dataSubSet$datetime<-as.POSIXct(paste(dataSubSet$Date, dataSubSet$Time),format="%d/%m/%Y %H:%M:%S")
plot(dataSubSet$datetime,as.numeric(as.character(dataSubSet$Global_active_power)), type="l",xlab="", ylab="Global Active Power (kilowatts)")
dev.copy(png,file="plot2.png")
dev.off()