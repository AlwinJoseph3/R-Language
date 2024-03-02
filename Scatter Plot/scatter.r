library(ggplot2)
ggplot(iris,aes(x=Petal.Length,y=Petal.Width))+
  geom_point(aes(color=factor(Species)))
  #labs(title="Scatter Plot of Petal Length VS. Petal Width")
print(iris)


















install.packages(ggplot2)
library(ggplot2)

ggplot(iris,aes(x=Sepal.Length,y=Sepal.Width))+
  geom_point(aes(color =factor(Species)))+
labs(title = "Sepalsdjflkamfdnwjkf")


print(iris)













install.packages("ggplot2")
library(ggplot2)
ggplot(iris, aes(x = Sepal.Length, y = Sepal.Width))+
geom_point(aes(color=factor(Species)))+
  labs(title = "Sepal Length VS Sepal Widht" )