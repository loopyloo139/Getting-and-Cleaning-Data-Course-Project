Getting and Cleaning Coursera Data Project Course Project demonstrating tidying data for Coursera “Getting and Cleaning Data”
This repo contains the R scripts to be used to analyze the UCI HAR dataset (Human Activity Recognition Using Smartphones Data Set)located at http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones# and convert it into a tidy data set.
Project Requirements -  Create one R script called run_analysis.R that does the following. 1. Merges the training and the test sets to create one data set. 2. Extracts only the measurements on the mean and standard deviation for each measurement. 3. Uses descriptive activity names to name the activities in the data set 4. Appropriately labels the data set with descriptive variable names. 5. From the data set in step 4, create a second, independent tidy data set with the average of each variable for each activity and each subject. Code Book for Tidy UCI HAR Dataset describes the specific details of variables, values, and units in the tidy dataset.
The tidy_dataset.txt file in this directory is a tidy subset of the data provided in the Human Activity Recognition Using Smartphones Data Set. 
The script assumes that the untouched data source files from UCI HAR Dataset are unzipped in the current working director. • The references to file locations in run_analysis.R are written to work with the Windows operating system.
Description of run_analysis.R 
run_analysis.R script takes source data from the unzipped file of the UCI HAR Dataset directory, imports it into R, and transforms it into a tidy data subset.
The script performs the following operations to import, clean, and 
transform the data set. See also the comments in the .R file.

1.	Merge the training and test data into one data set. 
	Combining the values from the subject_test and subject_train files 
                 to create a single TestSubject column showing the study 
                 participant.

	Combine the values from the Y_test and Y_train data to create 
                 a single Activity column 

	Combine the values from the X_test and X_train files to create
                 additional variable columns, one column for each measurement 
                 and calculation included in the data set. 

	Clean up the column names to remove hyphens and 
                 parentheses and replace them with periods.

2.	Extract only the measurements on the mean and standard deviation 
           	 for each measurement. 
	Create a subset of the data consisting of columns that have ".mean." and ".std." in their 
                column names.
	The script converts the test subject and activity columns to 
                 factors, to facilitate correct calculations later.

3.	Use descriptive activity names to name the activities in the data set. 
	Use the mapvalues function to map the numeric activity values 
                to descriptive names like "Walking" and "Standing."

4.	Appropriately label the data set with descriptive variable names. 
	Use the stringr_replace_all function from the stringr library to do 
                 find and replace operations on the column names. 

5.	Create a second, independent tidy data set with the average of each variable for each activity and subject. 
	Use split/apply/combine logic. 
	First, split the data by subject and activity factors using  split method.
	Next, use lapply to iterate over each item in the created list, and 
                 use apply to apply the mean function to calculate the average of 
                 each column. 
	The output of lapply is a list, so combine it back to a data frame.
	Use strsplit to break the subject and activity factors back into 
                separate sets, and use cbind to bind them as the first columns 
                 in the resulting data set. 
6.	The tidy set is written back using write.table - write.table(tidy_set, "tidy_dataset.txt", row.names=FALSE)

