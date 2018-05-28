fit<-lm(chicken~time(chicken),na.action=NULL) # regress chicken on time
par(mfrow=c(2,1))
tsplot(resid(fit),main="detrended")
tsplot(diff(chicken),main="first difference")
par(mfrow=c(3,1)) # plot ACFs
acf1(chicken,48,main="chicken")
acf1(resid(fit),48,main="detrended")
acf1(diff(chicken),48,main="first difference")
