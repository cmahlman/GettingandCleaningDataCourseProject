# Getting and Cleaning Data Course Project
# reference: https://class.coursera.org/getdata-034/human_grading/view/courses/975118/assessments/3/submissions
# 
# The purpose of this project is to collect, work with and clean a data set.
#
# We use this data "Human Activity Recognition Using Smartphones Data Set"
# reference: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
#
# This run_analysis script will perform the following tasks per assignment rubric
#
# 1.Merges the training and the test sets to create one data set.
# 2.Extracts only the measurements on the mean and standard deviation for each measurement. 
# 3.Uses descriptive activity names to name the activities in the data set
# 4.Appropriately labels the data set with descriptive variable names. 
# 
# 5.From the data set in step 4, creates a second, independent tidy data 
# set with the average of each variable for each activity and each subject.
#
# Tidy data is: 1. each variable forms a column 2. each observation forms a row 3. each
# table/file stores data about one kind of observation

# get data directory ready
if(!file.exists("./data"))
{
    dir.create("./data")
}

library(dplyr)

# set data source and fix-up address
zipUrl = "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
zipUrl = sub("^https", "http", zipUrl)

# to use download( ) first run install.packages("downloader") and then run library(downloader)
download(zipUrl, dest="./data/dataset.zip", mode="wb") 
unzip ("./data/dataset.zip", exdir = "./data/.")
list.files("./data/UCI HAR Dataset")
# you should see the 4 extracted files and 2 directories: 
#   "activity_labels.txt" "features.txt" "features_info.txt" "README.txt" 
#   "test" "train" 

# load all 6 files for both training and testing sets into tables so they can be processed
subject_test = read.table("./data/UCI HAR Dataset/test/subject_test.txt")
subject_train = read.table("./data/UCI HAR Dataset/train/subject_train.txt")
x_test = read.table("./data/UCI HAR Dataset/test/X_test.txt")
x_train = read.table("./data/UCI HAR Dataset/train/X_train.txt")
y_test = read.table("./data/UCI HAR Dataset/test/Y_test.txt")
y_train = read.table("./data/UCI HAR Dataset/train/Y_train.txt")

# load activity_labels.txt and feature.txt, they will help solve task #3 and #4: ensuring descriptive names
activity_labels = read.table("./data/UCI HAR Dataset/activity_labels.txt")
feature = read.table("./data/UCI HAR Dataset/features.txt")

# rename activity factors to solve task #3. Making these row values reable is tidy!
y_test$V1 <- factor(y_test$V1, levels = activity_labels$V1, labels = activity_labels$V2)
y_train$V1 <- factor(y_train$V1, levels = activity_labels$V1, labels = activity_labels$V2)

# rename columns to solve task #4. Making these column names readable is tidy!
subject_test = rename(subject_test, Subject = V1)
subject_train = rename(subject_train, Subject = V1)
colnames(x_test) = make.names(names=feature[, "V2"], unique = TRUE)
colnames(x_train) = make.names(names=feature[, "V2"], unique = TRUE)
y_test = rename(y_test, Activity = V1)
y_train = rename(y_train, Activity = V1)

# combine y, subject and x from both test and train into one table: combined_table
# solving task #1
test_table = cbind(subject_test, y_test, x_test)
train_table = cbind(subject_train, y_train, x_train)
combined_table = rbind(test_table, train_table)

# solve task #5: From the data set in step 4, creates a second, independent tidy data 
# set with the average of each variable for each activity and each subject.
# and solve task #2: Extracts only the measurements on the mean and standard deviation for each measurement. 
summarized_table = combined_table %>% group_by(Subject, Activity) %>% summarise_each(funs(mean), contains(".mean."), contains(".std."))

# write this to disk, making it ready to upload to github
write.table(summarized_table, file = "./data/TidyDataSet.txt", row.name=FALSE)

# clean up time! making results even tidier!
# remove intermediate tables and values, all that remains are 1. the independent tidy data 
# set with the average of each variable for each activity and each subject
# and 2. the combined_table of raw values
remove(activity_labels)
remove(feature)
remove(subject_test)
remove(subject_train)
remove(test_table)
remove(train_table)
remove(x_test)
remove(x_train)
remove(y_test)
remove(y_train)
remove(zipUrl)
