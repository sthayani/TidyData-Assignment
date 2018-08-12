feat <- read.table("features.txt",header = F)
fcol <- grep("mean|std",feat$V2,ignore.case = T)
train <- read.table(".\\train\\x_train.txt",col.names = feat$V2)
train <- train[,fcol]
subtrain    <- read.table(".\\train\\subject_train.txt",header = F,col.names = "sub")
ytrain <- read.table(".\\train\\y_train.txt",col.names = "act")
trainD <- cbind(subtrain,train,ytrain)
test <- read.table(".\\test\\x_test.txt",col.names = feat$V2)
subtest <- read.table(".\\test\\subject_test.txt",header = F,col.names = "sub")
ytest <- read.table(".\\test\\y_test.txt",col.names = "act")
test <- test[,fcol]
testD <- cbind(subtest,test,ytest)
mainD <- rbind(trainD,testD)
class <- read.table("activity_labels.txt")
ActivityData <- merge(mainD,class,by.x = "act",by.y = "V1")
ActivityData$act <- NULL
names(ActivityData) <- sub("^V2$","activity",names(ActivityData))
names(ActivityData) <- gsub("\\.","",names(ActivityData))
library(dplyr)
ActivityMeanData <- ActivityData %>% group_by(sub,activity) %>% summarise_all(mean)


