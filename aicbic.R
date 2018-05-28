par(mfrow=c(3,1)) #plot the data
tsplot(cmort,main="Cardiovascular Mortality",ylab="")
tsplot(tempr,main="Temperature",ylab="")
tsplot(part,main="Particulates",ylab="")
dev.new() #open a new graphic device
ts.plot(cmort,tempr,part,col=1:3) #all on same plot (not shown)
legend('topright',legend=c('Mortality','Temperature','Pollution'),lty=1,col=1:3)
