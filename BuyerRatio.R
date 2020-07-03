Buyerratio<-read.csv(file.choose()) 
View(Buyerratio)
Stacked_Data <- stack(Buyerratio)
View(Stacked_Data)
attach(Stacked_Data)
View(Stacked_Data)
table(ind,values)
chisq.test(table(ind,values))
?chisq.test
