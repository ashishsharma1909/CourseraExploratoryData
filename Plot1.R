# Exploratory Data Analysis - Assignment 2 - Q. #1

# Ashish Sharma 18 Jan 2018

# Reading RDS files and storing the result 

NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

#Agregate Emission per year
aggTotals <- aggregate (Emissions ~ year , NEI, sum)


barplot(
(aggTotals$Emissions)/10^6,
names.arg=aggTotals$year,
  xlab="Year",
  ylab="PM2.5 Emissions (10^6 Tons)",
  main="Total PM2.5 Emissions From All US Sources"
   )
