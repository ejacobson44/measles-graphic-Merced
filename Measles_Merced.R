


measles <- read.table("Merced_Detections.txt", header = TRUE, sep = ',')

# names(measles)

measles

# update the date data to fill in zero detection dates 

measles$Date <- as.Date(measles$Date) 

names(measles)


plot(measles$Concentration ~ measles$Date, 
    type = 'o', 
    main = 'Measles Detections Merced',  
    xlab = 'Detection Date', 
    ylab = 'Concentration (counts/g)', 
    pch = 19,
    col = '#3e9499', 
    lwd = 1, # line weight 
    xaxt = 'n'
    # cex = 1, # controls size of points
    ) 

all_months <- seq(from = min(measles$Date), to = max(measles$Date), by = "1 month")

axis.Date(side = 1, 
          at = all_months, 
          format = "%b", 
          # las = 2,     # Rotates the text vertically so they don't smash together
          cex.axis = 0.8 # Shrinks text slightly to help it fit
)


dev.new()

measles <- read.table("Sacramento_Detections.txt", header = TRUE, sep = ',')
measles$Date <- as.Date(measles$Date)


# Plot with no x-axis xaxt = 'n'
plot(measles$Concentration ~ measles$Date, 
    type = 'o', 
    main = 'Measles Detections Sacramento',  
    xlab = 'Detection Date', 
    ylab = 'Concentration (counts/g)', 
    pch = 20,
    col = '#d26a20', 
    lwd = 1,
    xaxt = 'n' 
) 

# Force a tick mark for EVERY month sequentially
all_months <- seq(from = min(measles$Date), to = max(measles$Date), by = "1 month")

axis.Date(side = 1, 
          at = all_months, 
          format = "%b", 
          # las = 2,     # Rotates the text vertically so they don't smash together
          cex.axis = 0.8 # Shrinks text slightly to help it fit
)