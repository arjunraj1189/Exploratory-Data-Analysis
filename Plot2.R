dataFile <- "C:/ASU/Courses/Exploratory Data Analysis/Data Files/data/household_power_consumption.txt"
data<- read.table("C:/ASU/Courses/Exploratory Data Analysis/Data Files/household_power_consumption.txt",
                   header = TRUE, sep=";")
subSetData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

#str(subSetData)
datetime <- strptime(paste(subSetData$Date, subSetData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
globalActivePower <- as.numeric(subSetData$Global_active_power)
png("plot2.png", width=480, height=480)
plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()