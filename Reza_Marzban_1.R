
# Reza Marzban

# Data source: http://archive.ics.uci.edu/ml/datasets/Census+Income
# Task: Classification
# ML algorithm used: Naive Bayes


library(naivebayes)

#setting the working directory
setwd(dirname(rstudioapi::getSourceEditorContext()$path))
#importing the data
RawTrainingData <- read.csv(file="adultData.csv", header=TRUE, sep=",")
RawTestingData <- read.csv(file="adultTest.csv", header=TRUE, sep=",")
RawTrainingData=as.data.frame(RawTrainingData)
RawTestingData=as.data.frame(RawTestingData)
#making the education number as a factor
RawTrainingData$education.num <- as.factor(RawTrainingData$education.num)
RawTestingData$education.num <- as.factor(RawTestingData$education.num)
# delet education column, as we have education.num
RawTrainingData = subset(RawTrainingData, select = -c(education) )
RawTestingData = subset(RawTestingData, select = -c(education) )
levels(RawTestingData$label) <- c(" <=50K", " >50K")
#combining two files
total <- rbind(RawTrainingData, RawTestingData)
#creating test, train data with a ratio of 20:80 respectively
index <- sample(2, nrow(total), replace=T, prob=c(0.8,0.2))
train<-total[index==1,]
test<-total[index==2,]
print("Total Data size:")
print(nrow(total))
print("train set size:")
print(nrow(train))
print("test set size:")
print(nrow(test))
print("---------------------------")
#create a naive bayes model and fit it on train set
model <-naive_bayes(label ~ .,data=train, usekernel=T)
p1<-predict(model,train)
tab1<- table(p1, train$label)
#calculate train accuracy by dividing the numbers of correct predictions on total numbers of data points in training set
trainacc=sum(diag(tab1))/sum(tab1)
p2<-predict(model,test)
tab2<- table(p2, test$label)
#calculate test accuracy by dividing the numbers of correct predictions on total numbers of data points in test set
testacc=sum(diag(tab2))/sum(tab2)

print("train accuracy:")
print(trainacc*100)
print("train error:")
print((1-trainacc)*100)
print("---------------------------")
print("test accuracy:")
print(testacc*100)
print("test error:")
print((1-testacc)*100)
print('_________________________________________')