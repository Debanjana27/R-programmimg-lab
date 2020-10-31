#Decision Tree

library(caret)   #package for confusion matrix
library(party)
library(datasets)
data(iris)
summary(iris)

index = 1 : nrow ( iris )

testindex = sample ( index, trunc ( length ( index ) / 3 ) )

testset = iris [ testindex , ]

trainset = iris [ - testindex , ]

model = ctree ( Species~. , data = trainset  )
prediction = predict ( model, testset [ , 1 : 4 ] )

tab = table ( pred = prediction, true = testset [ , 5 ] )
confusionMatrix (tab)

#Random Forest

library(caret)   #package for confusion matrix
library(randomForest)
library(datasets)
data(iris)
summary(iris)

index = 1 : nrow ( iris )

testindex = sample ( index, trunc ( length ( index ) / 3 ) )

testset = iris [ testindex , ]

trainset = iris [ - testindex , ]

model = randomForest ( Species~. , data = trainset )
prediction = predict ( model, testset [ , 1 : 4 ] )

tab = table ( pred = prediction, true = testset [ , 5 ] )
confusionMatrix (tab)

#SVM

library(caret)   #package for confusion matrix
library(e1071)   #package for svm
library(datasets)
data(iris)
summary(iris)

index = 1 : nrow ( iris )

testindex = sample ( index, trunc ( length ( index ) / 3 ) )

testset = iris [ testindex , ]

trainset = iris [ - testindex , ]

model = svm ( Species~. , data = trainset )
prediction = predict ( model, testset [ , 1 : 4 ] )

tab = table ( pred = prediction, true = testset [ , 5 ] )
confusionMatrix (tab)

#K Nearest neighbour

library(caret)   #package for confusion matrix
library(FNN)
library(datasets)
data(iris)
summary(iris)

index = 1 : nrow( iris )

testindex = sample ( index, trunc ( length ( index ) / 3 ) )

testset = iris [ testindex , ]

trainset = iris [ - testindex , ]

prediction = knn( trainset [ , 1:4 ] , testset [ , 1:4 ] , trainset [ , 5 ] , 1 )

tab = table ( pred = prediction, true = test [ , 5 ] )

confusionMatrix (tab)
