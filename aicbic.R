par(mfrow=c(3,1)) #plot the data
tsplot(cmort,main="Cardiovascular Mortality",ylab="")
tsplot(tempr,main="Temperature",ylab="")
tsplot(part,main="Particulates",ylab="")
dev.new() #open a new graphic device
ts.plot(cmort,tempr,part,col=1:3) #all on same plot (not shown)
legend('topright',legend=c('Mortality','Temperature','Pollution'),lty=1,col=1:3)
dev.new()
pairs(cbind(Mortality=cmort,Temperature=tempr,Particulates=part))
temp=tempr-mean(tempr) #center temperature
temp2=temp^2
trend=time(cmort) #time
fit=lm(cmort~trend+temp+temp2+part,na.action=NULL)
summary(fit) #regression results
summary(aov(fit)) #ANOVA table (compare to next line)
summary(aov(lm(cmort~cbind(trend,temp,temp2,part))))
num=length(cmort) #sample size
AIC(fit)/num-log(2*pi)
BIC(fit)/num-log(2*pi)
(AICc=log(sum(resid(fit)^2)/num)+(num+5)/(num-5-2)) 
