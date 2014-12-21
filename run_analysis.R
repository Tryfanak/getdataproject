# Note - Dataset has already been loaded to working directory

library(dplyr)
library(tidyr)

# Read in all the data tables (high level, training and test)
dataDir <- "./UCI HAR Dataset/"
features <- read.table(paste(dataDir,"features.txt",sep= ""))
activity_labels <- read.table(paste(dataDir,"activity_labels.txt",sep= ""))

subject_train <- read.table(paste(dataDir,"train/subject_train.txt",sep= ""))
y_train <- read.table(paste(dataDir,"train/y_train.txt",sep= ""))
x_train <- read.table(paste(dataDir,"train/X_train.txt",sep= ""))

subject_test <- read.table(paste(dataDir,"test/subject_test.txt",sep= ""))
y_test <- read.table(paste(dataDir,"test/y_test.txt",sep= ""))
x_test <- read.table(paste(dataDir,"test/X_test.txt",sep= ""))

# Add subject names and activities to LHS of each set of observations
x_train_full <- cbind( subject_train, y_train, x_train)
x_test_full <- cbind( subject_test, y_test, x_test)

# Combine the test and train data sets
x_combine_full <- rbind(x_train_full, x_test_full)

# Add on column names (subject and activity_id, plus all the feature names)
colnames(x_combine_full) <- c("subject","activity_id", 
                                 make.names(features$V2, unique = TRUE))
colnames(activity_labels) <- c("activity_id", "activity")

# Convert to dplyr dataframe table, ready to work with dplyr functions
xdata <- tbl_df(x_combine_full)

# Used piped dplyr functions to process into a tall, tidy, data set
    # add meaningful activity names
by_obs <- inner_join( xdata, activity_labels) %>%
    #  select only the features with mean() and standard() in
    select(subject, activity, contains(".mean.."), contains(".std..")) %>%
    #  melt into a tall dataset with one row per subject/activity/feature/obs
    gather( variable, value, -c(subject,activity) ) %>%
    #  calculate average values for each subject/activity/feature
    group_by(subject, activity, variable) %>%
    summarize(average=mean(value)) %>%
    #  clean up the feature names to read better in the tidy data set
    mutate( variable = gsub("BodyBody","Body",variable, fixed = TRUE))%>%
    mutate( variable = gsub("tBody","timeBody",variable, fixed = TRUE))%>%
    mutate( variable = gsub("fBody","freqBody",variable, fixed = TRUE))%>%
    mutate( variable = gsub("tGravity","timeGravity",variable, fixed = TRUE))%>%
    mutate( variable = gsub("fGravity","freqGravity",variable, fixed = TRUE))%>%
    mutate( variable = gsub("..","",variable, fixed = TRUE))%>%
    mutate( variable = gsub(".","_",variable, fixed = TRUE))%>%
    #  sort by subject/activity/feature
    arrange( subject, activity, variable)
    
# Convert back into a wide data set, with all mean/std features on one line
tidydata <- spread( data.frame(by_obs), variable, average)

# Write out the result in the required format
write.table(tidydata,"tidydata.txt",row.name=FALSE)

# To read back, use 'tidydata <- read.table("tidydata.txt", header=TRUE )'
