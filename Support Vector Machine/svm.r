#install.packages("e1071")
library(e1071)

data(iris)
head(iris)

#iris <- na.omit(iris)

indices <- sample(1:nrow(iris),0.8*nrow(iris))
training_data <- iris[indices,-5]
training_label <- iris$Species[indices]
testing_data <- iris[-indices,-5]
testing_label <- iris$Species[-indices]

svm_model <- svm(training_data,training_label,kernel="radial",cost=1)

svm_predic <- predict(svm_model,testing_data)

confusion_matrix <- table(Actual = testing_label,Predicted = svm_predic)
Accuracy= sum(diag(confusion_matrix))/sum(confusion_matrix)
cat("Confusion Matrix\n",confusion_matrix,"\n")
cat("Accuracy:",Accuracy)



# Load the required libraries
library(e1071)

# Load the Iris dataset
data(iris)
head(iris)

# Split the dataset into training and testing sets
set.seed(123)
indices <- sample(1:nrow(iris), 0.8 * nrow(iris))
train_data <- iris[indices, -5]  # Excluding the target variable
train_labels <- iris$Species[indices]
test_data <- iris[-indices, -5]  # Excluding the target variable
test_labels <- iris$Species[-indices]

# Train an SVM classifier
svm_model <- svm(train_data, train_labels, kernel = "radial", cost = 1)

# Make predictions on the test data
svm_predictions <- predict(svm_model, test_data)

# Evaluate the model's performance
confusion_matrix <- table(Actual = test_labels, Predicted = svm_predictions)
accuracy <- sum(diag(confusion_matrix)) / sum(confusion_matrix)
cat("Confusion Matrix:\n", confusion_matrix, "\n")
cat("Accuracy: ", accuracy, "\n")


































install.packages("e1071")
library(e1071)
data(iris)
head(iris)

indices<-sample(1:nrow(iris),0.8* nrow(iris))
train_data <- iris[indices,-5]
train_label <- iris$Species[indices]
test_data <- iris[-indices,-5]
test_label <- iris$Species[-indices]

model <- svm(train_data,train_label,kernel = "radial",cost=1)
predic <- predict(model,test_data)

confusion_matrix<- table(test_label,predic)
accuracy=sum(diag(confusion_matrix))/sum(confusion_matrix)
cat("Confusion Matrix\n",confusion_matrix,"\n")
cat("Accuracy:",accuracy)