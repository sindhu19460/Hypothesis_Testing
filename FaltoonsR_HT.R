fantaloons <- read.csv(file.choose())
View(fantaloons)

head(fantaloons)
str(fantaloons)

library(caret)
dmy <- dummyVars("~.", data = fantaloons, fullRank = T)
trf <- data.frame(predict(dmy, newdata = fantaloons))
chisq.test(trf)
plot(trf)
