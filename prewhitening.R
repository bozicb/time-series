set.seed(1492);num<-120;t<-1:num
X<-ts(2*cos(2*pi*t/12)+rnorm(num),freq=12)
Y<-ts(2*cos(2*pi*(t+5)/12)+rnorm(num),freq=12)
Yw<-resid(lm(Y~cos(2*pi*t/12)+sin(2*pi*t/12),na.action=NULL))
par(mfrow=c(3,2),mgp=c(1.6,.6,0),mar=c(3,3,1,1))
plot(X);plot(Y)
acf1(X,48);acf1(Y,48)
ccf2(X,Y,24);ccf2(X,Yw,24,ylim=c(-.6,.6))

