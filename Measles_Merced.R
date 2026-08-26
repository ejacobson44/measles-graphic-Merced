


measles <- read.table("Merced_Detections.txt", header = TRUE, sep = ',')

# names(measles)

measles

# update the date data to fill in zero detection dates 

measles$Date <- as.Date(measles$Date) 

names(measles)


plot(measles$Concentration ~ measles$Date, 
    type = 'b', 
    main = 'Measles Detections Merced',  
    xlab = 'Detection Date', 
    ylab = 'Concentration (counts/g)', 
    pch = 19,
    col = '#3e9499' 
    ) 
