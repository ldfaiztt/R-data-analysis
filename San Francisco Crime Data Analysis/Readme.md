The updated data set is available [here](https://data.sfgov.org/Public-Safety/SFPD-Incidents-Previous-Three-Months/tmnf-yvry?). 

**crime.r** analyzes and visualizes the trends from 3 months of criminal activities collected by the San Francisco Police Department between June 1st 2014 and August 31st 2014. 

Exploratory data visualization of crime trends:

1. Histogram of frequency for each crime category: ![crimecatHist.png](https://github.com/shngli/R-data-analysis/blob/master/San%20Francisco%20Crime%20Data%20Analysis/crimecatHist.png)
2. Frequency of each crime category distributed by date: **crimecatDate.png**, **crimecatLowDate.png**, **crimecatMedDate.png**, **crimecatHighDate.png**
3. Cumulative count of every crime category: **crimecatCumu.png**, **crimecatLowCumu.png**, **crimecatMedCumu.png**, **crimecatHighCumu.png**
4. Distribution of all crimes by date: **totcrimeDate.png**

**crime.r** primarily answers 4 following questions:

1. Where in San Francisco should you not park your car?
2. Where are the safest locations in San Francisco?
3. Which days and what times are especially dangerous in San Francisco? Output: **crimecatDay.png**, **crimecatLowDay.png**, **crimecatMedDay.png**, **crimecatHighDay.png**, **totcrimeDay.png**, **crimecatTime.png**, **crimecatLowTime.png**, **crimecatMedTime.png**, **crimecatHighTime.png**, **totcrimeTime.png**
4. Are certain types of theft more common in certain areas?
