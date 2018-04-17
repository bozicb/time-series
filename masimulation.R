#Make some noise
noise=rnorm(10000)

#Generate MA(2)
ma_2 <- NULL
for(i in 3:10000){ma_2[i] <- noise[i]+0.7*noise[i-1]+0.2*noise[i-2]}

#Shift data to left by 2 units
moving_average_process <- ma_2[3:10000]

#Put time series structure on a vanilla data
moving_average_process <- ts(moving_average_process)

#Partition output graphics as a multi frame of 2 rows and 1 column
par(mfrow=c(2,1))

#Plot process and scf
plot(moving_average_process,main='A moving average process of order 2',ylab=' ',col='blue')
acf(moving_average_process,main='Correlogram of a moving average process of order 2')
