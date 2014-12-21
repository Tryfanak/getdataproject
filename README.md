getdataproject
==============

This is the repository for my Getting and Cleaning Data Course Project.

##Project Requirements

The course project is an analysis of accelerometer data. 

It requires downloading data from the UCI Machine Learning Repository,
and creating and submitting a tidy data set summarizing the data.

This repository contains materials describing how the dataset was created
* This README file
* A code book, describing the tidy data set
* The run_analysis.R script used to do the analysis

##Project Steps
The course rubrics detail activities the run_analysis.R script should perform
*Merges the training and the test sets to create one data set.
*Extracts only the measurements on the mean and standard deviation for each measurement. 
*Uses descriptive activity names to name the activities in the data set
*Appropriately labels the data set with descriptive variable names. 
*From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

##How to run the script
*Download run_analysis.R to a working directory which also contains the project data set (UCI HAR Dataset)
*Source and run run_analysis.R, to create the tidy data set file (tidydata.txt) in the working directory
*The final line of run_analysis.R contains the command to read this file back into R

##Code Book
The code Book for this data set describes the contents of the data set. It also explains the detailed steps that the script goes thorugh to create the data set.