
z1 = cos(2*pi*1:500/50)
z2 = sin(2*pi*1:500/50)
summary(fit <- lm(x~ 0 + z1 + z2)) # zero to exclude the intercept
par(mfrow=c(2,1))
tsplot(x, margins=.25)
tsplot(x, col=8, margins=.25, ylab=expression(hat(x)))
lines(fitted(fit), col=2)
