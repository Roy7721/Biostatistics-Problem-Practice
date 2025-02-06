#Step 1: Data and Quantile Calculation
x=c(70,160,105,140,20,113,121,10,44,150,60,30,30,11,11,15)
quantile(x,.632)

#Step 2: Defining Parameters
n=20
t0=180
r=16

library(stats4) #loading package stats4 for mle()

#Step 3: Log-Likelihood Function
logL=function(a,b){
  term1=-r*log(b/a)
  term2=-(b-1)*sum(log(x/a))
  term3=sum((x/a)^b)
  term4=(n-r)*((t0/a)^b)
  term1+term2+term3+term4 ##-log-likelihood function
}

#Step 4: Maximum Likelihood Estimation (MLE)
coefs=coef(mle(minuslogl = logL,start = list(a=quantile(x,0.632),b=1)))
var=vcov(mle(minuslogl = logL,start = list(a=quantile(x,0.632),b=1)))
var
diag(var)
coefs

## 95% CI for scale parameter
lower.tail= coefs[1]-1.96*sqrt(diag(var)[1])
lower.tail
upper.tail= coefs[1]+1.96*sqrt(diag(var)[1])
upper.tail
## 95% CI for shape parameter
lower.tail= coefs[2]-1.96*sqrt(diag(var)[2])
lower.tail
upper.tail= coefs[2]+1.96*sqrt(diag(var)[2])
upper.tail
## Estimated survival probability after time 150 weeks
1-pweibull(150,shape=coefs[2],scale=coefs[1])
## Estimated median
qweibull(0.5,shape=coefs[2],scale=coefs[1])

