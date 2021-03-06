library(plyr)
library(dplyr)
library(reshape2)
library(stringr)

# Read in the features from the UCI HAR Dataset (assumes unzipped file is in wd)
  features <- read.table("UCI HAR Dataset\\features.txt")
# Read in the test and train data
    test_x <- read.table("UCI HAR Dataset\\test\\X_test.txt")
    test_y <- read.table("UCI HAR Dataset\\test\\y_test.txt")
    test_subjects <- read.table("UCI HAR Dataset\\test\\subject_test.txt")
    train_x <- read.table("UCI HAR Dataset\\train\\X_train.txt")
    train_y <- read.table("UCI HAR Dataset\\train\\y_train.txt")
    train_subjects <- read.table("UCI HAR Dataset\\train\\subject_train.txt")

# step 1 - Merge the training x & y and test sets x& y
##and test and train subjects to create combined data sets
    combined_dataset <- rbind(test_x, train_x)
    combined_y <- rbind(test_y, train_y)
    combined_subjects <- rbind(test_subjects, train_subjects)

# Apply the features second column (V2) as headers for the combined_dataset data frame
# Clean names to remove hyphens and parentheses using make.names
    cleanedNames <- as.character(features$V2)
    cleanedNames <- make.names(cleanedNames, unique=TRUE)
    names(combined_dataset) <- cleanedNames

# Add combined_y and combined_subjects as the first columns in the combined_dataset data frame
      combined_dataset <- cbind(combined_y, combined_dataset)
      names(combined_subjects) = c('subjects')
      combined_dataset <- cbind(combined_subjects, combined_dataset)

# Step 2 Extract just the mean and standard deviation for each measurement
      sub_data <- select(combined_dataset, subjects, V1, contains(".mean."), contains(".std."))

# Convert the subject and activities columns to factors
      sub_data$subjects <- as.factor(sub_data$subjects)
      sub_data$V1 <- as.factor(sub_data$V1)

# Step 3 change descriptive activity names for the activities in the data set
      sub_data$V1 <- mapvalues(sub_data$V1, from = c("1", "2", "3", "4", "5", "6"), 
                         to = c("Walking", "WalkingUpStairs", "WalkingDownStairs", "Sitting", "Standing", "Lying"))

# Step 4 Add descriptive variable names to the dataset
# (Changes documented in codebook.)
  names(sub_data) <- str_replace_all(names(sub_data), "[.][.]", "")
  names(sub_data) <- str_replace_all(names(sub_data), "BodyBody", "Body")
  names(sub_data) <- str_replace_all(names(sub_data), "tBody", "Body")
  names(sub_data) <- str_replace_all(names(sub_data), "fBody", "FFTBody")
  names(sub_data) <- str_replace_all(names(sub_data), "tGravity", "Gravity")
  names(sub_data) <- str_replace_all(names(sub_data), "fGravity", "FFTGravity")
  names(sub_data) <- str_replace_all(names(sub_data), "Acc", "Acceleration")
  names(sub_data) <- str_replace_all(names(sub_data), "Gyro", "AngularVelocity")
  names(sub_data) <- str_replace_all(names(sub_data), "Mag", "Magnitude")

  for(i in 3:68) {if (str_detect(names(sub_data)[i], "[.]std")) 
  {names(sub_data)[i] <- paste0("StandardDeviation", str_replace(names(sub_data)[i], "[.]std", ""))}}
  for(i in 3:68) {if (str_detect(names(sub_data)[i], "[.]mean")) 
  {names(sub_data)[i] <- paste0("Mean", str_replace(names(sub_data)[i], "[.]mean", ""))}}


  names(sub_data) <- str_replace_all(names(sub_data), "[.]X", "XAxis")
  names(sub_data) <- str_replace_all(names(sub_data), "[.]Y", "YAxis")
  names(sub_data) <- str_replace_all(names(sub_data), "[.]Z", "ZAxis")

# Step 5 From the data set in step 4, create a second, independent tidy data set 
#    with the average of each variable, activity and subject.
# Use a split/apply/combine method. First, split by the subject and activity factors.
  split_set <- split(select(sub_data, 3:68), list(sub_data$subjects, sub_data$V1))
  
# Next, use lapply to iterate over each item in the resulting list arg "2" denotes column, then apply to calculate the mean of each column.
  mean_set <- lapply(split_set, function(x) apply(x, 2, mean, na.rm=TRUE))
# The output from lapply is a list. Convert this back to a data frame.
  tidy_set <- data.frame(t(sapply(mean_set,c)))
  
# The subject and activity factors are combined row names instead of columns. Split them 
# Using strsplit, add to a separate data frame and combine with the tidy data set using cbind.
  factors <- data.frame(t(sapply(strsplit(rownames(tidy_set), "[.]"),c)))
  tidy_set <- cbind(factors, tidy_set)
  
# Give the subject and activity columns descriptive names, and convert to factors.
  tidy_set <- dplyr::rename(tidy_set,TestSubject = X1, Activity = X2)
  tidy_set$TestSubject <- as.factor(tidy_set$TestSubject)
  tidy_set$Activity <- as.factor(tidy_set$Activity)
  rownames(tidy_set) <- NULL



# write the tidy data set to a file for project submission
  write.table(tidy_set, "tidy_dataset.txt", row.names=FALSE)


