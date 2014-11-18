NEI <- readRDS("summarySCC_PM25.rds")
by_year <- tapply(NEI$Emissions, NEI$year, sum)
plot(names(by_year), by_year, type="l",
     xlab="Year", ylab= "Total PM 2.5 emissions (Tons)",
     main="Total US PM 2.5 Emissions by Year")