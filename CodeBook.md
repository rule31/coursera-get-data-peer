### Code Book

The code book explains data, the steps to produce a clean processed data file with the average of each variable for each activity and each subject.

### Original Data Set
The data files represent data collected from the accelerometers from the Samsung Galaxy S smartphone. 
A full description is available at the site where the data was obtained: 
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Here are the data set: 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

Please read the README.txt for detailed explaination of each files and data.

### Data transformations
1.  Load train and test data from test and train directory
2.  Combine the train and test data set into one data frame for X, Y and Subject files.
3.  X file contains the measured results; Y file contains the activities, Subject file contains the subject of interest
4.  Extract the mean and std measurment, using the R grep command
5.  Change the activity label by converting the integer key to descriptive label
6.  Change the measurement label to descriptive label
7.  Create a data table and utility the data.table package to obtain the aggregated mean of each subject and each activity.
8.  The output file name is tidy_data_processed.txt

### Library used
 * data.table

### tidy_data_processed columns
 * subject : The ID of the participants
 * activity : The activity
 
 The following is the mean of measurements:
 * tBodyAcc-mean()-X
 * tBodyAcc-mean()-Y
 * tBodyAcc-mean()-Z
 * tBodyAcc-std()-X
 * tBodyAcc-std()-Y
 * tBodyAcc-std()-Z
 * tGravityAcc-mean()-X
 * tGravityAcc-mean()-Y
 * tGravityAcc-mean()-Z
 * tGravityAcc-std()-X
 * tGravityAcc-std()-Y
 * tGravityAcc-std()-Z
 * tBodyAccJerk-mean()-X
 * tBodyAccJerk-mean()-Y
 * tBodyAccJerk-mean()-Z
 * tBodyAccJerk-std()-X
 * tBodyAccJerk-std()-Y
 * tBodyAccJerk-std()-Z
 * tBodyGyro-mean()-X
 * tBodyGyro-mean()-Y
 * tBodyGyro-mean()-Z
 * tBodyGyro-std()-X
 * tBodyGyro-std()-Y
 * tBodyGyro-std()-Z
 * tBodyGyroJerk-mean()-X
 * tBodyGyroJerk-mean()-Y
 * tBodyGyroJerk-mean()-Z
 * tBodyGyroJerk-std()-X
 * tBodyGyroJerk-std()-Y
 * tBodyGyroJerk-std()-Z
 * tBodyAccMag-mean()
 * tBodyAccMag-std()
 * tGravityAccMag-mean()
 * tGravityAccMag-std()
 * tBodyAccJerkMag-mean()
 * tBodyAccJerkMag-std()
 * tBodyGyroMag-mean()
 * tBodyGyroMag-std()
 * tBodyGyroJerkMag-mean()
 * tBodyGyroJerkMag-std()
 * fBodyAcc-mean()-X
 * fBodyAcc-mean()-Y
 * fBodyAcc-mean()-Z
 * fBodyAcc-std()-X
 * fBodyAcc-std()-Y
 * fBodyAcc-std()-Z
 * fBodyAccJerk-mean()-X
 * fBodyAccJerk-mean()-Y
 * fBodyAccJerk-mean()-Z
 * fBodyAccJerk-std()-X
 * fBodyAccJerk-std()-Y
 * fBodyAccJerk-std()-Z
 * fBodyGyro-mean()-X
 * fBodyGyro-mean()-Y
 * fBodyGyro-mean()-Z
 * fBodyGyro-std()-X
 * fBodyGyro-std()-Y
 * fBodyGyro-std()-Z
 * fBodyAccMag-mean()
 * fBodyAccMag-std()
 * fBodyBodyAccJerkMag-mean()
 * fBodyBodyAccJerkMag-std()
 * fBodyBodyGyroMag-mean()
 * fBodyBodyGyroMag-std()
 * fBodyBodyGyroJerkMag-mean()
 * fBodyBodyGyroJerkMag-std()