Getting and Cleaning Data Course Project Codebook
Reference: https://class.coursera.org/getdata-034

This codebook describes describes the variables, the data, and transformations performed to clean up the data used in the Getting and Cleaning Data Course Project.


Background, as read from the assignment page: Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Variables: the data provided by http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones was produced by 30 people ("Subjects") wearing a Samsung Smartphone.  The smartphone produced accelerometer and gyro data as the subjects performed six different types of tasks: LAYING, SITTING, STANDING, WALKING, WALKING_DOWNSTAIRS, and WALKING_UPSTAIRS.

These are the variables found in the raw data and can be further explored via the downloaded features.txt and feature_info.txt: tBodyAcc-XYZ, tGravityAcc-XYZ, tBodyAccJerk-XYZ, tBodyGyro-XYZ, tBodyGyroJerk-XYZ, tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag, fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccMag, fBodyAccJerkMag, fBodyGyroMag, and fBodyGyroJerkMag.

The interesting set of variables that were estimated from these signals that we use in this assignment are: 
	mean(): Mean value
	std(): Standard deviation

Raw data: these data fles were processed for this assignment.
- 'features.txt': List of all features used to tidy the column names.
- 'activity_labels.txt': Links the class labels with their activity name used to tidy activity names.
- 'train/X_train.txt': Training set.
- 'train/y_train.txt': Training labels.
- 'test/X_test.txt': Test set.
- 'test/y_test.txt': Test labels.
- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

Transformed data: the raw data is loaded into tables, activitiy names are replaced with descriptive names, column names are replaced with descriptive names. The data are combined into one set 10299 observations of 563 variables. The measurements for the mean and standard deviation for each measurement are extracted and then summarized as the average of each variable for each activity and each subject. This set is 180 observations of 68 variables.

These are the variables in the transformed data:
     "Subject"                     "Activity"                    "tBodyAcc.mean...X"          
 [4] "tBodyAcc.mean...Y"           "tBodyAcc.mean...Z"           "tGravityAcc.mean...X"       
 [7] "tGravityAcc.mean...Y"        "tGravityAcc.mean...Z"        "tBodyAccJerk.mean...X"      
[10] "tBodyAccJerk.mean...Y"       "tBodyAccJerk.mean...Z"       "tBodyGyro.mean...X"         
[13] "tBodyGyro.mean...Y"          "tBodyGyro.mean...Z"          "tBodyGyroJerk.mean...X"     
[16] "tBodyGyroJerk.mean...Y"      "tBodyGyroJerk.mean...Z"      "tBodyAccMag.mean.."         
[19] "tGravityAccMag.mean.."       "tBodyAccJerkMag.mean.."      "tBodyGyroMag.mean.."        
[22] "tBodyGyroJerkMag.mean.."     "fBodyAcc.mean...X"           "fBodyAcc.mean...Y"          
[25] "fBodyAcc.mean...Z"           "fBodyAccJerk.mean...X"       "fBodyAccJerk.mean...Y"      
[28] "fBodyAccJerk.mean...Z"       "fBodyGyro.mean...X"          "fBodyGyro.mean...Y"         
[31] "fBodyGyro.mean...Z"          "fBodyAccMag.mean.."          "fBodyBodyAccJerkMag.mean.." 
[34] "fBodyBodyGyroMag.mean.."     "fBodyBodyGyroJerkMag.mean.." "tBodyAcc.std...X"           
[37] "tBodyAcc.std...Y"            "tBodyAcc.std...Z"            "tGravityAcc.std...X"        
[40] "tGravityAcc.std...Y"         "tGravityAcc.std...Z"         "tBodyAccJerk.std...X"       
[43] "tBodyAccJerk.std...Y"        "tBodyAccJerk.std...Z"        "tBodyGyro.std...X"          
[46] "tBodyGyro.std...Y"           "tBodyGyro.std...Z"           "tBodyGyroJerk.std...X"      
[49] "tBodyGyroJerk.std...Y"       "tBodyGyroJerk.std...Z"       "tBodyAccMag.std.."          
[52] "tGravityAccMag.std.."        "tBodyAccJerkMag.std.."       "tBodyGyroMag.std.."         
[55] "tBodyGyroJerkMag.std.."      "fBodyAcc.std...X"            "fBodyAcc.std...Y"           
[58] "fBodyAcc.std...Z"            "fBodyAccJerk.std...X"        "fBodyAccJerk.std...Y"       
[61] "fBodyAccJerk.std...Z"        "fBodyGyro.std...X"           "fBodyGyro.std...Y"          
[64] "fBodyGyro.std...Z"           "fBodyAccMag.std.."           "fBodyBodyAccJerkMag.std.."  
[67] "fBodyBodyGyroMag.std.."      "fBodyBodyGyroJerkMag.std.."
