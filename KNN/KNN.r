library(class)
data(iris)
iris_data<-iris
iris_data
sum(is.na(iris_data))
iris_data<-na.omit(iris_data)
iris_data$Species<-as.factor(iris_data$Species)
set.seed(123)
index <- sample(1:nrow(iris_data), 0.7 * nrow(iris_data))
train_data<-iris_data[index, ]
test_data<-iris_data[-index, ]

k_value<-5

knn_model<-knn(train = train_data[, 1:4], test = test_data[, 1:4], cl = train_data$Species, k = k_value)
accuracy<-sum(knn_model == test_data$Species) / nrow(test_data)

accuracy





























install.packages("class")
library(class)
data(iris)
iris_data <- iris 
iris_data

iris_data <- na.omit(iris_data)
sum(is.na(iris_data))
iris_data$Species <- as.factor(iris_data$Species)

indices <- sample(1:nrow(iris_data),0.7* nrow(iris_data))
train_d <- iris_data[indices, ]
test_d <- iris_data[-indices, ]

knn_model <- knn(train = train_d[,1:4] ,test= test_d[,1:4],cl=train_d$Species,k=5)

accuracy <- sum(knn_model == test_d$Species)/nrow(test_d)
accuracy































#install.packages("class")
library(class)

data(iris)
iris_data <- iris
iris_data
sum(is.na(iris_data))

iris_data <- na.omit(iris_data)
iris_data$Species <- as.factor(iris_data$Species)

index<- sample(1:nrow(iris_data),0.8* nrow(iris_data))
train_data <- iris_data[index, ]
test_data  <- iris_data[-index, ]

knn_mod <- knn(train= train_data[ ,1:4],test= test_data[ ,1:4],cl=train_data$Species,k=5)
accuray <- sum(knn_mod == test_data$Species)/nrow(test_data)
accuracy
