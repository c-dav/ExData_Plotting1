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

png(file="Plot4.png",width=480,height=480)
par(mfrow=c(2,2))
plot(Exploratory_Data$DateTime,Exploratory_Data$Global_active_power,pch=".",ylab="Global Active Power (kilowatts)")
lines(Exploratory_Data$DateTime,Exploratory_Data$Global_active_power)

plot(Exploratory_Data$DateTime,Exploratory_Data$Voltage,pch=".",ylab="Voltage")
lines(Exploratory_Data$DateTime,Exploratory_Data$Voltage)


with(Exploratory_Data,plot(DateTime,Sub_metering_1,pch=".",col="black",ylab="Energy Sub Metering"))
with(Exploratory_Data,points(DateTime,Sub_metering_2,pch=".",col="red"))
with(Exploratory_Data,points(DateTime,Sub_metering_3,pch=".",col="blue"))
with(Exploratory_Data,lines(DateTime,Sub_metering_1,col="black"))
with(Exploratory_Data,lines(DateTime,Sub_metering_2,col="red"))
with(Exploratory_Data,lines(DateTime,Sub_metering_3,col="blue"))
legend("topright",pch=1,col=c("black","red","blue"),legend=c("Sub Metering 1","Sub Metering 2","Sub Metering 3"))

plot(Exploratory_Data$DateTime,Exploratory_Data$Global_reactive_power,pch=".",ylab="Global Reactive Power")
lines(Exploratory_Data$DateTime,Exploratory_Data$Global_reactive_power)

dev.off()

par(mfrow=c(2,2))
plot(Exploratory_Data$DateTime,Exploratory_Data$Global_active_power,pch=".",ylab="Global Active Power (kilowatts)")
lines(Exploratory_Data$DateTime,Exploratory_Data$Global_active_power)

plot(Exploratory_Data$DateTime,Exploratory_Data$Voltage,pch=".",ylab="Voltage")
lines(Exploratory_Data$DateTime,Exploratory_Data$Voltage)


with(Exploratory_Data,plot(DateTime,Sub_metering_1,pch=".",col="black",ylab="Energy Sub Metering"))
with(Exploratory_Data,points(DateTime,Sub_metering_2,pch=".",col="red"))
with(Exploratory_Data,points(DateTime,Sub_metering_3,pch=".",col="blue"))
with(Exploratory_Data,lines(DateTime,Sub_metering_1,col="black"))
with(Exploratory_Data,lines(DateTime,Sub_metering_2,col="red"))
with(Exploratory_Data,lines(DateTime,Sub_metering_3,col="blue"))
legend("topright",pch=1,col=c("black","red","blue"),legend=c("Sub Metering 1","Sub Metering 2","Sub Metering 3"))

plot(Exploratory_Data$DateTime,Exploratory_Data$Global_reactive_power,pch=".",ylab="Global Reactive Power")
lines(Exploratory_Data$DateTime,Exploratory_Data$Global_reactive_power)
