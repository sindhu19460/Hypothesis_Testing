cutlets=read.csv(file.choose())
View(cutlets)
library(BSDA)
library(nortest)
ad.test(cutlets$Unit.A)  
ad.test(cutlets$Unit.B)
?ad.test
attach(cutlets)
var.test(Unit.A,Unit.B)
?t.test
t.test(Unit.A,Unit.B,alternative = "greater",conf.level = 0.95,correct = FALSE)

