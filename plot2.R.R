NEI <- readRDS("summarySCC_PM25.rds")
baltimore <- subset(NEI, fips == "24510")
head(baltimore)
baltimorepm25 <- tapply(baltimore$Emissions, baltimore$year, sum)
plot(names(baltimorepm25), baltimorepm25, type="l",
     xlab="Year", ylab="Total PM 2.5 Emissions (tons)",
     main="Total Emissions of PM 2.5 in Baltimore")
     