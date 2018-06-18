par(mfrow=c(3,1))
acf1(soi,48,main="Southern Oscilliation Index")
acf1(rec,48,main="Recruitment")
ccf2(soi,rec,48,main="SOI vs Recruitment")

