SCC <- readRDS("Source_Classification_Code.rds")
source_coal <- grep("coal", SCC$Short.Name, ignore.case = T)
source_coal <- SCC[source_coal, ]
NEI <- readRDS("summarySCC_PM25.rds")
source_coal <- NEI[NEI$SCC %in% source_coal$SCC, ]
source_coal_emissions <- aggregate(source_coal$Emissions, list(source_coal$year), FUN="sum")
head(source_coal_emissions)
plot(source_coal_emissions, type="l", xlab="Year", ylab="Total PM 2.5 Emissions from Coal (Tons)", main="Emissions of PM 2.5 from Coal Sources - 1999-2008")
