Fine particulate matter (PM2.5) is an air pollutant that is harmful to human health. In the U.S., the Environmental Protection Agency sets national ambient air quality standards for PM2.5 and for tracking the emissions of this pollutant. Every 3 years, the EPA releases its database on emissions of PM2.5, known as the National Emissions Inventory (NEI). For each year and for each type of PM source, the NEI records how many tons of PM2.5 were emitted from that source over the course of the entire year.

Data is available [here](https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2FNEI_data.zip).
The zip file contains two files:

1. PM2.5 Emissions Data (summarySCC_PM25.rds): This file contains a data frame with all of the PM2.5emissions data for 1999, 2002, 2005, and 2008. For each year, the table contains number of tons of PM2.5 emitted from a specific type of source for the entire year.

2. Source Classification Code Table (Source_Classification_Code.rds): This table provides a mapping from the SCC digit strings int he Emissions table to the actual name of the PM2.5 source. The sources are categorized in a few different ways from more general to more specific.

Address the following questions and make a plot for each question in the exploratory analysis:

1.	Have total emissions from PM2.5 decreased in the United States from 1999 to 2008? Make a plot using the baseplotting system to show the total PM2.5 emission from all sources for each of the years 1999, 2002, 2005, and 2008. **Output**: plot1a.png, plot1b.png

2.	Have total emissions from PM2.5 decreased in the Baltimore City, Maryland (fips == "24510") from 1999 to 2008? Use the base plotting system to make a plot answering this question. **Output**: plot2a.png, plot2b.png

3.	Of the four types of sources indicated by the type (point, nonpoint, onroad, nonroad) variable, which of these four sources have seen decreases in emissions from 1999–2008 for Baltimore City? Which have seen increases in emissions from 1999–2008? Use the ggplot2 plotting system to make a plot answer this question. **Output**: plot3a.png, plot3b.png

4.	Across the U.S., how have emissions from coal combustion-related sources changed from 1999–2008? **Output**: plot4a.png, plot4b.png

5.	How have emissions from motor vehicle sources changed from 1999–2008 in Baltimore City? **Output**: plot5a.png, plot5b.png

6.	Compare emissions from motor vehicle sources in Baltimore  with emissions from motor vehicle sources in Los Angeles, California (fips == "06037"). Which city has seen greater changes over time in motor vehicle emissions? **Output**: plot6a.png, plot6b.png
