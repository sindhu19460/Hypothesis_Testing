
costumer <- read.csv(file.choose())
View(costumer)
head(costumer)
str(costumer)

library(caret)
dmy <- dummyVars("~.", data = costumer, fullRank = T)

tranf <- data.frame(predict(dmy, newdata = costumer))

chisq.test(tranf)
plot(tranf)
