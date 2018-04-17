library(astsa)
cs<-2*cos(2*pi*1:500/50+.6*pi) #signal
w<-rnorm(500) #noise
par(mfrow=c(3,1),mar=c(3,2,2,1),cex.main=1.5)
tsplot(cs,main=expression(2*cos(2*pi*t/50+.6*pi)))
tsplot(cs+w,main=expression(2*cos(2*pi*t/50+.6*pi)+N(0,1)))
tsplot(cs+5*w,main=expression(2*cos(2*pi*t/50+.6*pi)+N(0,5^2)))
