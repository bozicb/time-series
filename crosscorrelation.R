x<-rnorm(100);y<-lag(x,-5)+rnorm(100)
ccf(y,x,ylab='CCovF',type='covariance')
