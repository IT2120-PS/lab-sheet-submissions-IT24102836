setwd("C:/Users/it24102836/Desktop/IT24102836")					#set the project directory

#Exercise
#1. Import the dataset (’Exercise – Lab 05.txt’) into R and store it in a data frame called ”Delivery Times”.

Delivery_Times <- read.table("Exercise - Lab 05.txt", header = TRUE)		#import data set
fix(Delivery_Times)								    #view the data set
attach(Delivery_Times)								#call the variables by their names

names(Delivery_Times) <- c("x1")			#rename column as 'X1'


#2. Draw a histogram for deliver times using nine class intervals where the lower limit is 20 and upper limit is 70. Use right open intervals.

histogram = hist(x1, main = "Histogram of Delivery Time in minutes", xlab = "Delivery Times", breaks = seq(20, 70, length = 10), right = FALSE)		#create histogram


#4. Draw a cumulative frequency polygon (ogive) for the data in a separate plot.

breaks <- round(histogram$breaks)	#class limits
freq <- histogram$counts		#frequency
mids <- histogram$mids			#midpoint of each class limit
cum.freq <- cumsum(freq)		#Cumulative frequency

new <- c()				#empty vector

for(i in 1:length(breaks)){		#store each cumulative frequency in the new vector
  if(i==1){
    new[i] = 0
  }
  else{
    new[i] = cum.freq[i-1]
  }
}

plot(breaks, new, type = "l", main = "Cumulative Frequency Polygon for Delivery Time in minutes",
     xlab = "Delivery Time", ylab = "Cumulative Frequency", ylim = c(0,max(cum.freq)))		#create a cumulative frequency polygon
