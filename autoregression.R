w=rnorm(550,0,1)
v=filter(w,filter=c(1,-.9),method='recursive')[-(1:50)]
tsplot(v,main='autoregression')
