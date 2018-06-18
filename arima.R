par(mfrow=c(2,1))
tsplot(arima.sim(list(order=c(1,0,0), ar=.9), n=100), ylab="x",
main=(expression(AR(1)~~~phi==+.9)))
tsplot(arima.sim(list(order=c(1,0,0), ar=-.9), n=100), ylab="x",
main=(expression(AR(1)~~~phi==-.9)))

par(mfrow = c(2,1))
tsplot(arima.sim(list(order=c(0,0,1), ma=.9),  n=100), ylab="x",
main=(expression(MA(1)~~~theta==+.5)))
tsplot(arima.sim(list(order=c(0,0,1), ma=-.9), n=100), ylab="x",
main=(expression(MA(1)~~~theta==-.5)))
