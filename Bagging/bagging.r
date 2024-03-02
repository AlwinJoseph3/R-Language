#Bagging
install.packages("ipred")

library(ipred)
library(caret)

data(iris)
set.seed(123)

bagged_model<-bagging(Species ~ ., data = iris, nbagg = 50)
predictions<-predict(bagged_model,newdata = iris)

table(predictions,iris$Species)
#OR
confusionMatrix(predictions,iris$Species)

