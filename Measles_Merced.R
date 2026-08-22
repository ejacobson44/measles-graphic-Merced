


measles <- read.table("measles_data.txt", header = TRUE, sep = ',')

# names(measles)

measles

# update the date data to fill in zero detection dates 

measles$Date <- as.Date(measles$Date) 

names(measles)


plot(measles$Concentration ~ measles$Date, type = 'b') 
