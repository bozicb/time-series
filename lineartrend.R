summary(fit<-lm(chicken~time(chicken))) #regress price on time
tsplot(chicken,ylab="cents per pound")
abline(fit) #add fitted regression line to the plot
