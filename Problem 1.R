time=c(75,166,110,144,26,118,131,14,49,153,66,36,32,11,11,15,75,85,100)
#sort(Time)
status=c(rep('1',17),rep('0',2))
dataset=data.frame(time,status)
dataset

library(survival)

km.fit=survfit(Surv(time,status==1)~1,data=dataset)
summary(km.fit)
plot(km.fit)
survival_probability=km.fit$surv[-17]
survival_probability


