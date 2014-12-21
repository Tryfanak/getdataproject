getdataproject
==============

This is the repository for my Getting and Cleaning Data Course Project.

##Project Requirements

The course project is an analysis of accelerometer data from Samsung Galaxy S smartphones.

It requires downloading data from the UCI Machine Learning Repository,
and creating and submitting a tidy data set summarizing the data.

This repository contains materials describing how the tidy dataset was created
* This README file
* A code book, describing the tidy data set
* The run_analysis.R script used to do the analysis and create the tidy data set

##Project Steps
The course rubrics detail the activities the run_analysis.R script should perform
* Merge the training and the test sets to create one data set.
* Extract only the measurements on the mean and standard deviation for each measurement. 
* Use descriptive activity names to name the activities in the data set
* Appropriately label the data set with descriptive variable names. 
* From the data set in step 4, create a second, independent tidy data set with the average of each variable for each activity and each subject.

##How to Run the Script
* Download run_analysis.R to a working directory which also contains the project data set (UCI HAR Dataset)
* This single script contains all the steps to execute the assignment
* Source and run run_analysis.R, to create the tidy data set file (tidydata.txt) in the working directory
* The final line of run_analysis.R contains the command to read this file back into R

##What the Script Does
This section describes how the run_analysis.R script works in detail. My assumption (supported by the project rubrics) is that the initial data set has already been downloaded (from http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones) and unzipped, and that it is in a folder named 'UCI HAR Dataset' (the default) in the user's working directory.

###Reads the data set
These files are read in. (Descriptions based on the data set README.txt)
* features.txt - List of all features (i.e column names for X_train and X_test)
* activity_labels.txt - Links the activity id with a text activity name
* train/subject_train.txt': Identifies the subject who performed the activity for each row in the training set
* train/y_train.txt'- Identifies the activity performed in each row in the training set
* train/X_train.txt - Training set of accelerometer data
* train/subject_test.txt': Identifies the subject who performed the activity for each row in the test set
* train/y_test.txt'- Identifies the activity performed in each row in the test set
* train/X_test.txt - Test set of accelerometer data

The other other files in the UCI HAR Dataset, such as the Inertial Signals data, are not required.

###Adds subject and activity id to the accelerometer data sets
* subject_train and y_train both have 7352 rows, and are column bound to x_train (7352x561)
* subject_test and y_test both have 2947 rows, and are column bound to x_train (2947x561)

### Combines training and test data sets
* The training data set from the step above is 7352x563
* The test data set from the step above is 2947x563
* They are row bound to create a combined data set which is 10299x563
* This matches the number of instances (10299) listed in the description of the data set

##Code Book
The Code Book in this repository describes the contents of the tidy data set.