par(mfrow=c(2,2), mar=c(2.5,2.5,0,0)+.5, mgp=c(1.6,.6,0)) # set up
for (i in 1:4){
    x = ts(cumsum(rnorm(500,.01,1))) # data
    regx = lm(x~0+time(x), na.action=NULL) # regression
    tsplot(x, ylab='Random Walk w Drift', col='darkgray') # plots
    abline(a=0, b=.01, col=2, lty=2) # true mean (red - dashed)
    abline(regx, col=4)   } # fitted line (blue - straight)
