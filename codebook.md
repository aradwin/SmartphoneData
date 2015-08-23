ID- 
    Subject Identification, values 1:30, identifying 30 unique subjects

activity: 6 levels
    1 WALKING
    2 WALKING_UPSTAIRS
    3 WALKING_DOWNSTAIRS
    4 SITTING
    5 STANDING
    6 LAYING

    
The following measurements contain mean and stdev measurements for dimensions X,Y,Z for each measured subject and activity.  (Six measurements per subject/activity pair)
All values are normalized and contain measurements from -1.0 to 1.0
tBodyAcceleration
tGravityAcceleration
tBodyAccelerationJerk
tBodyGyroscope
tBodyGyroscopeJerk
fBodyAcceleration
fBodyAccelerationJerk
fBodyGyroscope

The following have two measurements of mean and stdev. (Two measurements per subject/activity pair)
All values are normalized and contain measurements from -1.0 to 1.0
tBodyAccelerationMagnitude
tGravityAccelerationMagnitude
tBodyAccelerationJerkMagnitude
tBodyGyroscopeMagnitude
tBodyGyroscopeJerkMagnitude
fBodyAccelerationMagnitude
fBodyBodyAccelerationJerkMagnitude
fBodyBodyGyroscopeMagnitude
fBodyBodyGyroscopeJerkMagnitude


Feature Selection 
=================

The features selected for this database are means calculated means that come from the measured accelerometer and gyroscope 3-axial raw signals tAcceleration-XYZ and tGyro-XYZ of the original database. 

These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcceleration-XYZ and tGravityAcceleration-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccelerationMagnitude, tGravityAccelerationMagnitude, tBodyAccelerationJerkMagnitude, tBodyGyrscopeoMagnitude, tBodyGyroscopeJerkMagnitude). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcceleration-XYZ, fBodyAccelerationJerk-XYZ, fBodyGyroscope-XYZ, fBodyAccelerationJerkMagnitude, fBodyGyroscopeMagnitude, fBodyGyroscopeJerkMagnitude. (Note the 'f' to indicate frequency domain signals). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcceleration-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccelerationJerkMagnitude, fBodyGyroMagnitude, fBodyGyroJerkMagnitude. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.


The following is the complete list of measurements included in the file:
tBodyAcceleration-mean-X
tBodyAcceleration-mean-Y
tBodyAcceleration-mean-Z
tBodyAccelerationstd-X
tBodyAcceleration-std-Y
tBodyAcceleration-std-Z

tGravityAcceleration-mean-X
tGravityAcceleration-mean-Y
tGravityAcceleration-mean-Z
tGravityAcceleration-std-X
tGravityAcceleration-std-Y
tGravityAcceleration-std-Z

tBodyAccelerationJerk-mean-X
tBodyAccelerationJerk-mean-Y
tBodyAccelerationJerk-mean-Z
tBodyAccelerationJerk-std-X
tBodyAccelerationJerk-std-Y
tBodyAccelerationJerk-std-Z

tBodyGyroscope-mean-X
tBodyGyroscope-mean-Y
tBodyGyroscope-mean-Z
tBodyGyroscope-std-X
tBodyGyroscope-std-Y
tBodyGyroscope-std-Z

tBodyGyroscopeJerk-mean-X
tBodyGyroscopeJerk-mean-Y
tBodyGyroscopeJerk-mean-Z
tBodyGyroscopeJerk-std-X
tBodyGyroscopeJerk-std-Y
tBodyGyroscopeJerk-std-Z

tBodyAccelerationMagnitude-mean
tBodyAccelerationMagnitude-std

tGravityAccelerationMagnitude-mean
tGravityAccelerationMagnitude-std

tBodyAccelerationJerkMagnitude-mean
tBodyAccelerationJerkMagnitude-std

tBodyGyroscopeMagnitude-mean
tBodyGyroscopeMagnitude-std

tBodyGyroscopeJerkMagnitude-mean
tBodyGyroscopeJerkMagnitude-std

fBodyAcceleration-mean-X
fBodyAcceleration-mean-Y
fBodyAcceleration-mean-Z
fBodyAcceleration-std-X
fBodyAcceleration-std-Y
fBodyAcceleration-std-Z

fBodyAccelerationJerk-mean-X
fBodyAccelerationJerk-mean-Y
fBodyAccelerationJerk-mean-Z
fBodyAccelerationJerk-std-X
fBodyAccelerationJerk-std-Y
fBodyAccelerationJerk-std-Z

fBodyGyroscope-mean-X
fBodyGyroscope-mean-Y
fBodyGyroscope-mean-Z
fBodyGyroscope-std-X
fBodyGyroscope-std-Y
fBodyGyroscope-std-Z

fBodyAccelerationMagnitude-mean
fBodyAccelerationMagnitude-std

fBodyBodyAccelerationJerkMagnitude-mean
fBodyBodyAccelerationJerkMagnitude-std

fBodyBodyGyroscopeMagnitude-mean
fBodyBodyGyroscopeMagnitude-std

fBodyBodyGyroscopeJerkMagnitude-mean
fBodyBodyGyroscopeJerkMagnitude-std
