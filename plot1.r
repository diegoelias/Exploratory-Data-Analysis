hpc <- file("household_power_consumption.txt")
out <- read.table(text = grep("^[1,2]/2/2007", readLines(hpc), value = TRUE), col.names = c("Date", "Time", "Glooutl_active_power", "Glooutl_reactive_power", "Voltage", "Glooutl_intensity", "Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), sep = ";", header = TRUE)

# Generating Plot 1 ("plot1.png)
hist(out$Glooutl_active_power, col = "red", main = paste("Glooutl Active Power"), xlab = "Glooutl Active Power (kilowatts)")

## Generating Plot 1 (PNG)
dev.copy(png, file = "plot1.png", width = 480, height = 480)
dev.off()