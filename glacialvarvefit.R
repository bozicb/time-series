x = diff(log(varve)) # data
r = acf(x, lag=1, plot=FALSE)$acf[-1] # acf(1)
c(0) -> w -> z # initialize
c() -> Sc -> Sz -> Szw -> SS -> para
num = length(x)
## Estimation
para[1] = (1-sqrt(1-4*(r^2)))/(2*r) # MME
niter   = 12
for (p in 1:niter){
    for  (i in 2:num){ w[i] = x[i]  - para[p]*w[i-1]
        z[i] = w[i-1]- para[p]*z[i-1] }
    Sc[p] = sum(w^2)
    Sz[p] = sum(z^2)
    Szw[p]= sum(z*w)
    para[p+1] = para[p] + Szw[p]/Sz[p]  }
## Results
round(cbind(iteration=0:(niter-1), thetahat=para[1:niter], Sc, Sz), 3)
## Plot cond SS
th = seq(-.3,-.94,-.01)
for (p in 1:length(th)){
    for (i in 2:num){ w[i] = x[i]-th[p]*w[i-1] }
    SS[p] = sum(w^2)     }
plot(th, SS, type="l", ylab=expression(S[c](theta)),
xlab=expression(theta))
abline(v=para[1:12], lty=2) #  add results to plot
points(para[1:12], Sc[1:12], pch=16)
