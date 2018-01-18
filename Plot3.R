# Exploratory Data Analysis - Assignment 2 - Q. #1

# Ashish Sharma 18 Jan 2018

# Reading RDS files and storing the result 

NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

#Taking NEI tata for Baltimore City, Maryland (fips="24510")
baltimoreNEI <- NEI[NEI$fips=="24510",]

#Agregate Emission per year for Baltimore City, Maryland (fips="24510")
#aggTotals <- aggregate (Emissions ~ year , NEI, sum)


#Generate the graph in the same directory as the source code
ggp <- ggplot(baltimoreNEI,aes(factor(year),Emissions,fill=type)) +
  geom_bar(stat="identity") +
  theme_bw() + guides(fill=FALSE)+
  facet_grid(.~type,scales = "free",space="free") + 
  labs(x="year", y=expression("Total PM"[2.5]*" Emission (Tons)")) + 
  labs(title=expression("PM"[2.5]*" Emissions, Baltimore City 1999-2008 by Source Type"))

print(ggp)
