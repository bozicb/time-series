x = diff(log(varve))
# Evaluate Sc on a Grid
c(0) -> w -> z
c() -> Sc -> Sz -> Szw
num = length(x)
th = seq(-.3,-.94,-.01)
for (p in 1:length(th)){
for (i in 2:num){ w[i] = x[i]-th[p]*w[i-1] }
Sc[p] = sum(w^2) }
plot(th, Sc, type="l", ylab=expression(S[c](theta)), xlab=expression(theta),
lwd=2)
# Gauss-Newton Estimation
r = acf(x, lag=1, plot=FALSE)$acf[-1]
rstart = (1-sqrt(1-4*(r^2)))/(2*r) # from (3.105)
c(0) -> w -> z
c() -> Sc -> Sz -> Szw -> para
niter = 12
para[1] = rstart
for (p in 1:niter){
for (i in 2:num){ w[i] = x[i]-para[p]*w[i-1]
z[i] = w[i-1]-para[p]*z[i-1] }
Sc[p] = sum(w^2)
Sz[p] = sum(z^2)
Szw[p] = sum(z*w)
para[p+1] = para[p] + Szw[p]/Sz[p] }
round(cbind(iteration=0:(niter-1), thetahat=para[1:niter] , Sc , Sz ), 3)
abline(v = para[1:12], lty=2)
points(para[1:12], Sc[1:12], pch=16)
