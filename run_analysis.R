library(data.table)
# For the first dataset
#Check if the file already exists,else create a new directory.
if(!file.exists("./data"){
    dir.create("./data")
} 
   
#Download the dataset from the web and unzip the files. 
 
url<-"https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip" 
download.file(url,destfile="./data/Dataset.zip")
unzip(zipfile="./data/Dataset.zip",exdir = "./data")

#Creating variables for reading the testing tables.
subject_test<-read.table("./data/UCI HAR Dataset/test/subject_test.txt")              
x_test<-read.table("./data/UCI HAR Dataset/test/X_test.txt")
y_test<-read.table("./data/UCI HAR Dataset/test/y_test.txt")

#Creating variables for reading the training tables.
subject_train<-read.table("./data/UCI HAR Dataset/train/subject_train.txt")              
x_train<-read.table("./data/UCI HAR Dataset/train/X_train.txt")
y_train<-read.table("./data/UCI HAR Dataset/train/y_train.txt")

#Reading the feature and activity labels.
activityLabels<-read.table("./data/UCI HAR Dataset/activity_labels.txt")              
features<-read.table("./data/UCI HAR Dataset/features.txt")

#Step 1 Merging the training and testing tables to 1 dataset.
# 4. Appropriately labels the data set with descriptive variable names

colnames(x_train) <- features[,2] 
colnames(y_train) <-"activityId"
colnames(subject_train) <- "subjectId"

colnames(x_test) <- features[,2] 
colnames(y_test) <- "activityId"
colnames(subject_test) <- "subjectId"

colnames(activityLabels) <- c('activityId','activityType')

#1.1 Merging all the tables of train into a single table.
merge_train<-cbind(y_train, subject_train, x_train)

#1.2 Merging all the tables of test into a single table.
merge_test<-cbind(y_test, subject_test, x_test)


#1.3 Merging the test and train tables to 1 dataset.
merge_data<-rbind(merge_test,merge_train)

#Step 2.1 Create a variable to read the Column names
colNames<-names(merge_data)

#2.2 Creating a vector for ID,mean and standard deviation

mean_and_std<-(grepl("mean..",colNames)|grepl("std..",colNames)|grepl("activityId",colNames)|
                         grepl("subjectId",colNames))
mean_and_std_all<-merge_data[,mean_and_std==TRUE]

#Step 3.descriptive activity names to name the activities in the data set

data_activitynames<-merge(mean_and_std_all,activityLabels,by="activityId",all.x = TRUE)

#step4 is implemented at the above by giving appropriate variable names in the dataset.
firstDataSet<-names(data_activitynames)

#Step5: Creates a second, independent tidy data set 
library(plyr)
secTidySet <- aggregate(. ~subjectId + activityId, data_activitynames, mean)

secTidySet <- secTidySet[order(secTidySet$subjectId, secTidySet$activityId),]

#5.1 Writing second tidy data set in txt file.

write.table(secTidySet,"secTidySet.txt",row.names = FALSE)
