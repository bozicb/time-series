rec.yw = ar.yw(rec, order=2)
rec.yw$x.mean # mean estimate
rec.yw$ar # parameter estimates
sqrt(diag(rec.yw$asy.var.coef)) # their standard errors
rec.yw$var.pred # error variance estimate
