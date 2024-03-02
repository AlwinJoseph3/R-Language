#Boosting Using GBM
#install.packages("gbm")

library(gbm)
library(caret)

data(iris)
head(iris)

iris$Species<-as.factor(iris$Species)
iris$Species<-as.numeric(iris$Species)
set.seed(123)

boosted_model<-gbm(Species ~.,data=iris,distribution = "multinomial",
                   n.trees=100,interaction.depth = 3,shrinkage = 0.1)

predictions<-predict(boosted_model,newdata=iris,n.trees=100,type="response")

predicted_labels<-apply(predictions,1,which.max)

predicted_labels<-as.factor(predicted_labels)
iris$Species<-as.factor(iris$Species)


confusionMatrix(predicted_labels,iris$Species)

table(iris$Species,predicted_labels)
























library(gbm)
library(caret)

data(iris)

iris$Species<- as.factor(iris$Species)
iris$Species <- as.numeric(iris$Species)


model<- gbm(Species~.,data = iris,distribution = "multinomial",n.trees=100,interaction.depth = 3,shrinkage=0.1)
predictions<- predict(model, newdata=iris,n.trees=100,type="response")
predicted_labels<- apply(predictions,1,which.max)

predicted_labels<-as.factor(predicted_labels)
iris$Species<-as.factor(iris$Species)
confusionMatrix(predicted_labels,iris$Species)