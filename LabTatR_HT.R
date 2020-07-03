labtat=read.csv(file.choose())
View(labtat)
#install.packages("BSDA")
library(BSDA)
#install.packages("nortest")
library(nortest)
attach(labtat)
Stacked_Data <- stack(labtat)
?stack
View(Stacked_Data)
attach(Stacked_Data)
?attach
View(Stacked_Data)
plot(Stacked_Data)
ad.test(Stacked_Data$values)
??ad.test
library(car)
leveneTest(Stacked_Data$values~Stacked_Data$ind, data = Stacked_Data)   #Test for equal Variance
Anova_results <- aov(values~ind,data = Stacked_Data)
?aov
summary(Anova_results)
