# setwd("./Desktop/R Files")

Power_Consumption<-read.csv("household_power_consumption.txt",sep=";")
Power_Consumption_Frame<-data.frame(Power_Consumption)
Power_Consumption_Frame$Date<-as.Date(Power_Consumption_Frame$Date,"%d/%m/%Y")

Exploratory_Data<-Power_Consumption_Frame[Power_Consumption_Frame$Date >= as.Date("2007-02-01") & Power_Consumption_Frame$Date <= as.Date("2007-02-02"),]
Exploratory_Data$Global_active_power<-as.numeric(levels(Exploratory_Data$Global_active_power)[Exploratory_Data$Global_active_power])
Exploratory_Data$Voltage<-as.numeric(levels(Exploratory_Data$Voltage)[Exploratory_Data$Voltage])
Exploratory_Data$Global_reactive_power<-as.numeric(levels(Exploratory_Data$Global_reactive_power)[Exploratory_Data$Global_reactive_power])

Exploratory_Data$DateTime<-paste(as.character(Exploratory_Data$Date),as.character(Exploratory_Data$Time))
Exploratory_Data$DateTime<-strptime(Exploratory_Data$DateTime,"%Y-%m-%d %H:%M:%S")

Exploratory_Data$Sub_metering_1<-as.numeric(levels(Exploratory_Data$Sub_metering_1)[Exploratory_Data$Sub_metering_1])
Exploratory_Data$Sub_metering_2<-as.numeric(levels(Exploratory_Data$Sub_metering_2)[Exploratory_Data$Sub_metering_2])
# Note that sub_metering_3 is already numeric */ #

png(file="Plot2.png",width=480,height=480)
plot(Exploratory_Data$DateTime,Exploratory_Data$Global_active_power,pch=".",ylab="Global Active Power (kilowatts)")
lines(Exploratory_Data$DateTime,Exploratory_Data$Global_active_power)
dev.off()

plot(Exploratory_Data$DateTime,Exploratory_Data$Global_active_power,pch=".",ylab="Global Active Power (kilowatts)")
lines(Exploratory_Data$DateTime,Exploratory_Data$Global_active_power)