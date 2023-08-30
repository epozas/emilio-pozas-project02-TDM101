myDF <- read.csv("/anvil/projects/tdm/data/flights/subset/1995.csv")
head(myDF)
tail(myDF)
dim(myDF)
str(myDF)

my_airports <- myDF$Origin
head(my_airports)
class(my_airports)
head(my_airports, 250)
250 - 13

head(my_airports[my_airports == 'IND'])
str(my_airports[my_airports == 'IND'])
str(myDF$Dest[myDF$Dest == 'IND'])
myDF[894,]$Origin
myDF[894,]$Dest
str(myDF$Distance[myDF$Distance<200])

data <- data.frame(
    UniqueCarrier = c(myDF$UniqueCarrier),
    flight = c(myDF$TailNum))
data_table <- table(data$UniqueCarrier)
sort(data_table)
tail(sort(table(data$flight)), 10)

hist(myDF$Distance, 
     main= "Flight Distances",
     xlab= "Distance(miles)",
     ylab= "Count",
     col= "green")