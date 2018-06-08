dummy<-ifelse(soi<0,0,1)
fish<-ts.intersect(rec,soiL6=lag(soi,-6),dL6=lag(dummy,-6),dframe=TRUE)
summary(fit<-lm(rec~soiL6*dL6,data=fish,na.action=NULL))
attach(fish) #so we can use the names of the variables in fish
plot(soiL6,rec)
lines(lowess(soiL6,rec),col=4,lwd=2)
points(soiL6,fitted(fit),pch='+',col=2)
tsplot(resid(fit))
acf(resid(fit))
