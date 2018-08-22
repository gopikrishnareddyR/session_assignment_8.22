#session8_assignment_8.2

library(RcmdrPlugin.IPSUR) 
data(RcmdrTestDrive) 
summary(RcmdrTestDrive)
table(RcmdrTestDrive$gender)

#Perform the below operations:

#1. Compute the measures of central tendency for salary and reduction which variable has highest center? 
Salary<- RcmdrTestDrive$salary


Sal_mean<-mean(Salary)
Sal_median<-median(Salary)
summary(Salary)

hist(Salary,    
     col="blue",  
     main="Sal frequency", 
     xlab="Salary")  

Reduction<-RcmdrTestDrive$reduction
Reduct_mean<-mean(Reduction)
Reduct_median<-median(Reduction)
summary(Reduction)

hist(Reduction,    
     col="red",  
     main="Reduction frequency", 
     xlab="Reduction")   


#2. Which measure of center is more appropriate for before and after? 
library(lawstat)
symmetry.test(RcmdrTestDrive[,"salary"], boot = FALSE)

 # median is appropriate, as it is not effected by outliers, compared to mean and mode