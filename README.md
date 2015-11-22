# GettingandCleaningDataCourseProject
Assignment for coursera class: getdata-034

==========================================================================================
 Getting and Cleaning Data Course Project
 reference: https://class.coursera.org/getdata-034/human_grading/view/courses/975118/assessments/3/submissions
 
 The purpose of this project is to collect, work with and clean a data set.

 We process "Human Activity Recognition Using Smartphones Data Set" - go to this link for
 reference: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

==========================================================================================
Charlie Mahlman, student, enrolled into: https://class.coursera.org/getdata-034/.
Version 1.0
==========================================================================================

 The project objective asks for the following tasks per assignment rubric:

 1. Merges the training and the test sets to create one data set.
 2. Extracts only the measurements on the mean and standard deviation for each measurement. 
 3. Uses descriptive activity names to name the activities in the data set
 4. Appropriately labels the data set with descriptive variable names. 
 
 5. From the data set in step 4, creates a second, independent tidy data 
 set with the average of each variable for each activity and each subject.
 
 It's important to note that tidy data is: 1. each variable forms a column 2. each observation forms a row 3. each
 table/file stores data about one kind of observation.
 
==========================================================================================

 This is how the script works. The run_analysis.R script performs the following tasks to 
 solve to the assignment rubric to create an independent tidy data set that has the average of 
 each variable for each activity and each subject.
 
 1. Create a data directory if needed.
 2. Set download source, download the dataset and unzip it to prepare for processing.
 3. Load all 6 data files into R Studio tables so they can be processed. 
 4. Load actvity_labels.txt and features.txt into tables so they can be used to provide descriptive names for 
    activities and variables.
 5. Rename columns via dply rename() using subject_* tables. Use make.names() from feature table (with 
    unique = TRUE) to produce unique column names.
 6. Combine y, subject and x from both test and train into one table: combined_table using cbind() and rbind()
 7. Use pipeline to group by Subject and Activity, then extract only the measurements on the mean and standard 
    deviation for each measurement, and summarize_each producing with the average of each variable for each 
	activity and each subject.
 8. Write the summarized_table to disk, naming it TidyData.txt via write.table() with (row.name = FALSE).  
 9. Clean up intermediate tables and values.

 The resultant file from run_analysis.R is TidyData.txt and has been uploaded to Coursera. 

==========================================================================================

The course project produced the following files:

- 'README.md': 

- 'Codebook.md': data dictionary for observations and variables.

- 'TidyData.txt': Independent tidy data set with the average of each variable for each activity and each subject.

==========================================================================================

The following files are downloaded and processed during the running of run_analysis.R. 

- 'features_info.txt': Shows information about the variables used on the feature vector.

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.

The following files are available for the train and test data. Their descriptions are equivalent. 

- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

- 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 

- 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 

- 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 

==========================================================================================

Notes: 
- There is a README.txt included in the data download that covers licensing.
