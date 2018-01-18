# Exploratory Data Analysis - Assignment 2 - Q. #1

# Ashish Sharma 18 Jan 2018

# Reading RDS files and storing the result 

NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

#Taking NEI tata for Baltimore City, Maryland (fips="24510")
baltimoreNEI <- NEI[NEI$fips=="24510",]

#Agregate Emission per year for Baltimore City, Maryland (fips="24510")
aggTotals <- aggregate (Emissions ~ year , NEI, sum)


#Generate the graph in the same directory as the source code
barplot(
(aggTotals$Emissions/10^2),
names.arg=aggTotals$year,
xlab="Year",
ylab="PM2.5 Emissions ( Tons)",
main="Total PM2.5 Emissions From All Baltimore City Sources"
 )
