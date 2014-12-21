Code Book
==============

##Background
Information about the source data for this project can be found at http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones. It includes information about experimental design, what accelerometer information was recorded, how it was processed. It also has detailed descriptions of all the files made available in the data set.

##Document Purpose
This code book describes the contents of the "tidydata.txt" file submitted for the project.For more detailed information about the meaning of features, please refer to the site above

##Contents of the Tidy Data Set
The tidy data set has data on the average values of certain features for 30 subjects, each performing 6 activities. (180 rows)
There are 66 features recorded for each subject/activity (68 columns)
Rows in the tiday data set are sorted alphanumerically by subject and activity,
Feature columns are arranged alphanumerically.
The data set is stored in "tidydata.txt", and can be read with this command
* tidydata <- read.table("tidydata.txt", header=TRUE )

The columns in the tidy data set are as follows;

### subject
The id number of the subject performing the activities (Number, 1-30)

### activity
The activity the subject was performing when accelerometer readings were taken.
Activities are
* LAYING
* SITTING
* STANDING
* WALKING
* WALKING_DOWNSTAIRS
* WALKING_UPSTAIRS

### feature values (columns 3-68)
Each feature is the average of the readings for that feature, for that subject and activity.
Features values are normalized (dimensionless) and bounded within [-1,1]

The feature columns and their meaning are:
* freqBodyAcc_mean_X    --    Body acceleration - mean - X-axis - frequency domain
* freqBodyAcc_mean_Y    --    Body acceleration - mean - Y-axis - frequency domain
* freqBodyAcc_mean_Z    --    Body acceleration - mean - Z-axis - frequency domain
* freqBodyAcc_std_X    --    Body acceleration - standard deviation - X-axis - frequency domain
* freqBodyAcc_std_Y    --    Body acceleration - standard deviation - Y-axis - frequency domain
* freqBodyAcc_std_Z    --    Body acceleration - standard deviation - Z-axis - frequency domain
* freqBodyAccJerk_mean_X    --    Body linear acceleration - mean - X-axis - frequency domain
* freqBodyAccJerk_mean_Y    --    Body linear acceleration - mean - Y-axis - frequency domain
* freqBodyAccJerk_mean_Z    --    Body linear acceleration - mean - Z-axis - frequency domain
* freqBodyAccJerk_std_X    --    Body linear acceleration - standard deviation - X-axis - frequency domain
* freqBodyAccJerk_std_Y    --    Body linear acceleration - standard deviation - Y-axis - frequency domain
* freqBodyAccJerk_std_Z    --    Body linear acceleration - standard deviation - Z-axis - frequency domain
* freqBodyAccJerkMag_mean    --    Body linear acceleration magnitude - mean - frequency domain
* freqBodyAccJerkMag_std    --    Body linear acceleration magnitude - standard deviation - frequency domain
* freqBodyAccMag_mean    --    Body acceleration magnitude - mean - frequency domain
* freqBodyAccMag_std    --    Body acceleration magnitude - standard deviation - frequency domain
* freqBodyGyro_mean_X    --    Body angular acceleration - mean - X-axis - frequency domain
* freqBodyGyro_mean_Y    --    Body angular acceleration - mean - Y-axis - frequency domain
* freqBodyGyro_mean_Z    --    Body angular acceleration - mean - Z-axis - frequency domain
* freqBodyGyro_std_X    --    Body angular acceleration - standard deviation - X-axis - frequency domain
* freqBodyGyro_std_Y    --    Body angular acceleration - standard deviation - Y-axis - frequency domain
* freqBodyGyro_std_Z    --    Body angular acceleration - standard deviation - Z-axis - frequency domain
* freqBodyGyroJerkMag_mean    --    Body angular velocity magnitude - mean - frequency domain
* freqBodyGyroJerkMag_std    --    Body angular velocity magnitude - standard deviation - frequency domain
* freqBodyGyroMag_mean    --    Body angular acceleration magnitude - mean - frequency domain
* freqBodyGyroMag_std    --    Body angular acceleration magnitude - standard deviation - frequency domain
* timeBodyAcc_mean_X    --    Body acceleration - mean - X-axis - time domain
* timeBodyAcc_mean_Y    --    Body acceleration - mean - Y-axis - time domain
* timeBodyAcc_mean_Z    --    Body acceleration - mean - Z-axis - time domain
* timeBodyAcc_std_X    --    Body acceleration - standard deviation - X-axis - time domain
* timeBodyAcc_std_Y    --    Body acceleration - standard deviation - Y-axis - time domain
* timeBodyAcc_std_Z    --    Body acceleration - standard deviation - Z-axis - time domain
* timeBodyAccJerk_mean_X    --    Body linear acceleration - mean - X-axis - time domain
* timeBodyAccJerk_mean_Y    --    Body linear acceleration - mean - Y-axis - time domain
* timeBodyAccJerk_mean_Z    --    Body linear acceleration - mean - Z-axis - time domain
* timeBodyAccJerk_std_X    --    Body linear acceleration - standard deviation - X-axis - time domain
* timeBodyAccJerk_std_Y    --    Body linear acceleration - standard deviation - Y-axis - time domain
* timeBodyAccJerk_std_Z    --    Body linear acceleration - standard deviation - Z-axis - time domain
* timeBodyAccJerkMag_mean    --    Body linear acceleration magnitude - mean - time domain
* timeBodyAccJerkMag_std    --    Body linear acceleration magnitude - standard deviation - time domain
* timeBodyAccMag_mean    --    Body acceleration magnitude - mean - time domain
* timeBodyAccMag_std    --    Body acceleration magnitude - standard deviation - time domain
* timeBodyGyro_mean_X    --    Body angular acceleration - mean - X-axis - time domain
* timeBodyGyro_mean_Y    --    Body angular acceleration - mean - Y-axis - time domain
* timeBodyGyro_mean_Z    --    Body angular acceleration - mean - Z-axis - time domain
* timeBodyGyro_std_X    --    Body angular acceleration - standard deviation - X-axis - time domain
* timeBodyGyro_std_Y    --    Body angular acceleration - standard deviation - Y-axis - time domain
* timeBodyGyro_std_Z    --    Body angular acceleration - standard deviation - Z-axis - time domain
* timeBodyGyroJerk_mean_X    --    Body angular velocity - mean - X-axis - time domain
* timeBodyGyroJerk_mean_Y    --    Body angular velocity - mean - Y-axis - time domain
* timeBodyGyroJerk_mean_Z    --    Body angular velocity - mean - Z-axis - time domain
* timeBodyGyroJerk_std_X    --    Body angular velocity - standard deviation - X-axis - time domain
* timeBodyGyroJerk_std_Y    --    Body angular velocity - standard deviation - Y-axis - time domain
* timeBodyGyroJerk_std_Z    --    Body angular velocity - standard deviation - Z-axis - time domain
* timeBodyGyroJerkMag_mean    --    Body angular velocity magnitude - mean - time domain
* timeBodyGyroJerkMag_std    --    Body angular velocity magnitude - standard deviation - time domain
* timeBodyGyroMag_mean    --    Body angular velocity magnitude - mean - time domain
* timeBodyGyroMag_std    --    Body angular velocity magnitude - standard deviation - time domain
timeGravityAcc_mean_X    --    Gravity acceleration - mean - X-axis - time domain
timeGravityAcc_mean_Y    --    Gravity acceleration - mean - Y-axis - time domain
timeGravityAcc_mean_Z    --    Gravity acceleration - mean - Z-axis - time domain
timeGravityAcc_std_X    --    Gravity acceleration - standard deviation - X-axis - time domain
timeGravityAcc_std_Y    --    Gravity acceleration - standard deviation - Y-axis - time domain
timeGravityAcc_std_Z    --    Gravity acceleration - standard deviation - Z-axis - time domain
timeGravityAccMag_mean    --    Gravity acceleration magnitude - mean - time domain
timeGravityAccMag_std    --    Gravity acceleration magnitude - standard deviation - time domain

