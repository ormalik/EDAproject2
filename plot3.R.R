library(ggplot2)
library(plyr)
NEI <- readRDS("summarySCC_PM25.rds")
baltimore <- subset(NEI, fips == "24510")
head(baltimore)
baltimore_type <- ddply(baltimore, .(year, type), function(x) sum(x$Emissions))
colnames(baltimore_type)[3] <- "Emissions"
qplot(year, Emissions, data=baltimore_type, color=type, geom="line")+ ggtitle("PM 2.5 Emissions in Baltimore by Type of Source")+xlab("Year")+ylab("Total PM 2.5 Emissions (Tons)")