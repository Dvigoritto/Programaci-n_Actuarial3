

library(reshape2)
library (plyr)

features = read.table("./UCI HAR Dataset/features.txt")
activityType = read.table("./UCI HAR Dataset/activity_labels.txt")
subjectTrain = read.table("./UCI HAR Dataset/train/subject_train.txt")
xTrain = read.table("./UCI HAR Dataset/train/x_train.txt")
yTrain = read.table("./UCI HAR Dataset/train/y_train.txt")
subjectTest = read.table("./UCI HAR Dataset/test/subject_test.txt")
xTest = read.table("./UCI HAR Dataset/test/x_test.txt")
yTest = read.table("./UCI HAR Dataset/test/y_test.txt")


colnames(activityType) <- c("activityId", "activityType")
colnames(subjectTrain) <- "subjectId"
colnames(subjectTest) <- "subjectId"
colnames(yTrain) <- "activityId"
colnames(yTest) <- "activityId"
colnames(xTrain) <- features$V2
colnames(xTest) <- features$V2


Training <- cbind(subjectTrain, xTrain, yTrain)
Test <- cbind(subjectTest, xTest, yTest)

TrainingTest <- rbind(Training, Test)


columnas <- colnames(TrainingTest)
colextract <- grepl("-mean\\(", columnas) | grepl("-std", columnas) | grepl("subjectId", columnas) | grepl("activityId", columnas)


MeanStd <- TrainingTest[colextract]

MeanStdFinal <- merge(MeanStd,activityType,by='activityId',all.x=TRUE)

nombres <- names(MeanStdFinal)
nombres <- gsub("\\()","", nombres) 
nombres <- gsub("BodyBody","Body",nombres)
nombres <- gsub("mean","MEAN",nombres)
nombres <- gsub("std","STD",nombres)
nombres <- gsub("bands","Bands",nombres)
nombres <- gsub("angle","Angle",nombres)
nombres <- gsub("min","MIN",nombres)
nombres <- gsub("max","MAX",nombres)
nombres <- gsub("mad","MAD",nombres)
nombres <- gsub("gravity","Gravity",nombres)
nombres <- gsub("[Mm]ag","Magnitude",nombres)
colnames(MeanStdFinal) <- nombres


MeanStdFinal$activityId <- NULL
AverageData <- melt(MeanStdFinal, id=c("activityType", "subjectId"))
Average <- dcast(AverageData, activityType + subjectId ~ variable, mean)


write.table(Average, "./ordenados.txt", row.names = FALSE, quote = FALSE)


head(read.table("./ordenados.txt"))






