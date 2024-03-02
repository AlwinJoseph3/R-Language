#importing dataset
library(mlbench)
library(caret)
library(e1071)
dataset <- read.csv("D:\\R\\soybean.csv")

#Preprocessing
soybean <- na.omit(dataset)
preproc <- preProcess(soybean[, -1], method = c("center", "scale"))
soybean[, -1] <- predict(preproc, soybean[, -1])
set.seed(123)  # For reproducibility
splitIndex <- createDataPartition(soybean$Class, p = 0.8, list = FALSE)
training_data <- soybean[splitIndex, ]
testing_data <- soybean[-splitIndex, ]

set.seed(120)
model <- naiveBayes(Class ~ ., data = training_data)


# Predicting on test data
predicted <- predict(model, newdata = testing_data)
predicted <- as.factor(predicted)
testing_data$Class <- as.factor(testing_data$Class)
confusionMatrix(predicted,testing_data$Class)
