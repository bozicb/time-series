set.seed(666) # not that 666
fit = ar.yw(dex, order=1) # assumes the data were retained
m = fit$x.mean # estimate of mean
phi = fit$ar # estimate of phi
nboot = 500 # number of bootstrap replicates
resids = fit$resid[-1] # the 99 innovations
x.star = dex # initialize x*
phi.star.yw = rep(NA, nboot)
# Bootstrap
for (i in 1:nboot) {
resid.star = sample(resids, replace=TRUE)
for (t in 1:99){ x.star[t+1] = m + phi*(x.star[t]-m) + resid.star[t] }
phi.star.yw[i] = ar.yw(x.star, order=1)$ar
}
# Picture
culer = rgb(.5,.7,1,.5)
hist(phi.star.yw, 15, main="", prob=TRUE, xlim=c(.65,1.05), ylim=c(0,14),
col=culer, xlab=expression(hat(phi)))
lines(density(phi.yw, bw=.02), lwd=2) # from previous simulation
u = seq(.75, 1.1, by=.001) # normal approximation
lines(u, dnorm(u, mean=.96, sd=.03), lty=2, lwd=2)
legend(.65, 14, legend=c('true distribution', 'bootstrap distribution',
'normal approximation'), bty='n', lty=c(1,0,2), lwd=c(2,0,2),
col=1, pch=c(NA,22,NA), pt.bg=c(NA,culer,NA), pt.cex=2.5)
