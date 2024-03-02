#install.packages("mlbench")
#install.packages("caret")
#install.packages("randomForest")
library(mlbench)
library(caret)

#--------------------Pre Processing----------------------------

dataset <- read.csv("D:\\R\\soybean.csv")
sum(is.na(dataset))
soybean <- na.omit(dataset)
sum(is.na(soybean))
soybean
preproc <- preProcess(soybean[, -1], method = c("center", "scale"))
soybean[, -1] <- predict(preproc, soybean[, -1])
set.seed(111)  
splitIndex <- createDataPartition(soybean$Class, p = 0.8, list = FALSE)
training_data <- soybean[splitIndex, ]
testing_data <- soybean[-splitIndex, ]


#--------------------Random Forest----------------------------

library(randomForest)
model <- train(Class ~ ., data = training_data, method = "rf")


predictions <- predict(model, newdata = testing_data)
predictions <- as.factor(predictions)
testing_data$Class<-as.factor(testing_data$Class)
typeof(testing_data$Class)
typeof(predictions)
confusionMatrix(predictions, testing_data$Class)






















#install.packages("randomForest")
#install.packages("mlbench")
#install.packages("caret")

library(mlbench)
library(caret)

soybean <- read.csv("D:\\R\\soybean.csv")
soybean <- na.omit(soybean)
prepro <- preProcess(soybean[,-1],method = c("center","scale"))
soybean[,-1] <- predict(prepro,soybean[ ,-1])

index <- createDataPartition(soybean$Class,p=0.8,list = FALSE)
training_data<-soybean[index,]
testing_data<-soybean[-index,]

library(randomForest)
model <- train(Class ~ .,data=training_data,method="rf")
predicted <- predict(model,newdata = testing_data)
predicted <- as.factor(predicted)
testing_data$Class <- as.factor(testing_data$Class)
confusionMatrix(predicted,testing_data$Class)


