set.seed(101011)
x1<-2*(2*rbinom(11,1,.5)-1)
x2<-2*(2*rbinom(101,1,.5)-1)
y1<-5+filter(x1,sides=1,filter=c(1,-.5))[-1]
y2<-5+filter(x2,sides=1,filter=c(1,-.5))[-1]
tsplot(y1,lag.max=4,plot=FALSE)
acf(y1,lag.max=4,plot=FALSE)
acf(y2,lag.max=4,plot=FALSE)
