# Prior to this I have set working directory, 
# and downloaded the dataset to the working directory

library(dplyr)
library(tidyr)
# Reference source page, and that the counts match

# Read in all the data to take a look at it
dataDir <- "./UCI HAR Dataset/"
features <- read.table(paste(dataDir,"features.txt",sep= ""))
activity_labels <- read.table(paste(dataDir,"activity_labels.txt",sep= ""))
subject_test <- read.table(paste(dataDir,"test/subject_test.txt",sep= ""))
y_test <- read.table(paste(dataDir,"test/y_test.txt",sep= ""))
x_test <- read.table(paste(dataDir,"test/X_test.txt",sep= ""))
subject_train <- read.table(paste(dataDir,"train/subject_train.txt",sep= ""))
y_train <- read.table(paste(dataDir,"train/y_train.txt",sep= ""))
x_train <- read.table(paste(dataDir,"train/X_train.txt",sep= ""))

# Add subject names and activities to LHS of each set of feature values
# (Safe, since rows are still in the original order)
# 563 columns - names are meaningless - address that later
# 
x_train_full <- cbind( subject_train, y_train, x_train)
x_test_full <- cbind( subject_test, y_test, x_test)

# Now combine the test and train data sets
# (Safe, because they have all the same columns, in the same order)
# Result has 10299 rows, which matches data set at UCI Repository
x_combine_full <- rbind(x_train_full, x_test_full)

# Set the column names to be meaningful
# Pre-process with make.names to clean up illegal characters and duplicates
# (None of the mean and std columns are duplicates, so just housekeeping)
colnames(x_combine_full) <- c("subject","activity_id", make.names(features$V2, unique = TRUE))
colnames(activity_labels) <- c("activity_id", "activity")

# Make sets into dplyr dataframe tables, ready to work with dplyr functions
xdata <- tbl_df(x_combine_full)

# Filter columns, to keep only the mean and std columns we want 
# then melt the remaining columns
# then group by subject/activity/variable and average
by_obs <- inner_join( xdata, activity_labels) %>%
    select(subject, activity, contains(".mean.."), contains(".std..")) %>%
    gather( variable, value, -c(subject,activity) ) %>%
    group_by(subject, activity, variable) %>%
    summarize(average=mean(value)) %>%
    arrange( subject, activity, variable) %>%
    mutate( variable = gsub("..","",variable, fixed = TRUE))

# Convert, because spread does not seem to work on a dataframe table
temp <- data.frame(by_obs)
result <- spread( data.frame(by_obs), variable, average)

write.table(result,"tidydata.txt",row.name=FALSE)
## tidydata <- read.table("tidydata.txt", header=TRUE )
