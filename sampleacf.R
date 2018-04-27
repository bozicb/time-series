(r<-round(acf(soi,6,plot=FALSE)$acf[-1],3))
par(mfrow=c(1,2),mar=c(3,3,1,1),mgp=c(1.6,.6,0))
plot(lag(soi,-1),soi);legend('topleft',legend=r[1])
plot(lag(soi,-6),soi);legend('topleft',legend=r[6])
