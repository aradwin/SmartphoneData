
This dataset demonstrates the ability to collect, work with, and clean a data set. This project is in fulfillment of the course “Getting and Cleaning Data” from Coursera, in conjunction with the Data Science team at Johns Hopkins University.

This dataset takes the original data available from here:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

and transforms it in the following ways:
1) Merges training and test data to create a single data set
2) Extracts only the measurements on the mean and standard deviation for each measurement.
3) Uses descriptive activity names to name activities and variables in the data set
4) Creates a single, narrow, independent tidy data set with the average of each variable for each activity and each subject.

Note: - Features are normalized and bounded within [-1,1].

Further information on the original data can be obtained here:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 


Some important information from the original dataset follows.



Human Activity Recognition Using Smartphones Dataset
Version 1.0
==================================================================
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Universit‡ degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws
==================================================================

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 




These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcceleration-XYZ
tGravityAcceleration-XYZ
tBodyAccelerationJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccelerationMagnitue
tGravityAccMagnitude
tBodyAccelerationJerkMagnitude
tBodyGyroMagnitude
tBodyGyroJerkMagnitude
fBodyAcceleration-XYZ
fBodyAccelerationJerk-XYZ
fBodyGyro-XYZ
fBodyAccelerationMagnitude
fBodyAccJerkMagnitude
fBodyGyroMagnitude
fBodyGyroJerkMagnitude

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation


Original data from:
[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012
