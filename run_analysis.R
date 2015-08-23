# Description of the Data
#http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

#Here are the data for the project: 
#https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

setwd("/Users/ariella/Rprogram/UCI-HAR")

test_data <- read.table("./test/X_test.txt")
test_subjects <- read.table("./test/subject_test.txt")
test_labels <- read.table("./test/y_test.txt")



# add the test_labels that indicates whether someone was walking, standing, etc
activity <- test_labels$V1
test_data <- cbind(activity, test_data)
# add the test_subjects that uniquely identifies each user
ID <- test_subjects$V1
test_data <- cbind(ID, test_data)


train_data <- read.table("./train/X_train.txt")
train_subjects <- read.table("./train/subject_train.txt")
train_labels <- read.table("./train/y_train.txt")
# add the train_labels that indicates whether someone was walking, standing, etc
activity <- train_labels$V1
train_data <- cbind(activity, train_data)
# add the train_subjects that uniquely identifies each user
ID <- train_subjects$V1
train_data <- cbind(ID, train_data)

#this is a single dataframe that combines both test and train datsets
all_data <- rbind(train_data, test_data)

#add the column names from features.txt to identify the data of each column
features <- read.table("./features.txt")
my_colnames <- c("ID", "activity", as.character(features$V2))
colnames(all_data) <- my_colnames

# Loop through the column names, keep any that are GENUINE means or stdev, marked by -mean() or -std(). Drop MeanFreq() and other items that are not calculated means of observed data.
# Change/Expand the names so they are more easily readable.
for(i in names(all_data)){
  if (grepl("mean\\(|std|ID|activity",  i, ignore.case=FALSE)) {
    pos <- which(names(all_data)==i)
    names(all_data)[pos] <- gsub("\\(\\)", "" ,names(all_data)[pos])
    names(all_data)[pos] <- gsub("Acc","Acceleration",names(all_data)[pos])
    names(all_data)[pos] <- gsub("Gyro","Gyroscope",names(all_data)[pos])
    names(all_data)[pos] <- gsub("Mag","Magnitude",names(all_data)[pos])
  }
  else {
    all_data[,i] <- NULL
  }
}


#change the activity column from codes to descriptive names
activity_names <- c("Walking", "Walking_Upstairs", "Walking_Downstairs", "Sitting", "Standing", "Laying")
all_data$activity <- factor(all_data$activity, labels= activity_names)

#calculate average for each variable for each activity and each subset
my_tiny_data <- aggregate(all_data[3:68], list(ID = all_data$ID, activity = all_data$activity), FUN=mean, na.rm=TRUE) 

write.table(names(my_tiny_data, "codebook.md", quote=FALSE, row.names=FALSE, col.names=FALSE))
#reshape the data into a narrow form

library(reshape2)
melted_data <- melt(my_tiny_data, id=c("ID","activity"), measure.vars=names(my_tiny_data)[3:68])


write.table(melted_data, file = "./wearablecomputing.txt", row.names = FALSE, col.names = TRUE)
