z = c(1,-1.5,.75) # coefficients of the polynomial
(a = polyroot(z)[1]) # print one root: 1+0.57735i = 1 + i/sqrt(3)
arg = Arg(a)/(2*pi) # arg in cycles/pt
1/arg # = 12,  the pseudo period

set.seed(8675309)
ar2 = arima.sim(list(order=c(2,0,0), ar=c(1.5,-.75)), n = 144)
plot(ar2, axes=FALSE, xlab="Time")
axis(2);  axis(1, at=seq(0,144,by=12));  box()
abline(v=seq(0,144,by=12), lty=2)

ACF = ARMAacf(ar=c(1.5,-.75), ma=0, 50)
plot(ACF, type="h", xlab="lag")
abline(h=0)
