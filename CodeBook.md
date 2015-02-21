### Code Book

The code book explains the steps to produce a clean data file with the average of each variable for each activity and each subject.

### Original Data Set
The data files represent data collected from the accelerometers from the Samsung Galaxy S smartphone. 
A full description is available at the site where the data was obtained: 
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Here are the data for the project: 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

Please read the README.txt for detailed explaination of each files and data.

### Data transformations
1.  Load train and text data from test and train directory
2.  Combine the train and test data set into 1 for X, Y and Subject files.
3.  X file contains the measured results; Y file contains the activities, Subject file contains the subject of interest
4.  Extract the mean and std measurment, using the R grep command.
5.  Change the activity label and integer key to descriptive label
6.  Change the measure label to descriptive label
7.  Create a data table and utility the data.tabel package to obtain the aggregated mean of each subject and each activity.
8.  The output file name is tidy_data_processed.txt

### Library used
1.  data.table

### tidy_data_processed columns
	*  subject                     
	*  activity                    
	*  tBodyAcc-mean()-X           
	*  tBodyAcc-mean()-Y          
	*  tBodyAcc-mean()-Z                
	*  tGravityAcc-mean()-X             
	*  tGravityAcc-std()-Y              
	*  tBodyAccJerk-mean()-Z            
	*  tBodyGyro-mean()-X               
	*  tBodyGyro-std()-Y                
	*  tBodyGyroJerk-mean()-Z           
	*  tBodyAccMag-mean()               
	*  tBodyAccJerkMag-mean()           
	*  tBodyGyroJerkMag-mean()          
	*  fBodyAcc-mean()-Z                
	*  fBodyAccJerk-mean()-X            
	*  fBodyAccJerk-std()-Y             
	*  fBodyGyro-mean()-Z               
	*  fBodyAccMag-mean()               
	*  fBodyBodyGyroMag-mean()          
	*  tBodyAcc-std()-X        
	*  tGravityAcc-mean()-Y    
	*  tGravityAcc-std()-Z     
	*  tBodyAccJerk-std()-X    
	*  tBodyGyro-mean()-Y      
	*  tBodyGyro-std()-Z       
	*  tBodyGyroJerk-std()-X   
	*  tBodyAccMag-std()       
	*  tBodyAccJerkMag-std()   
	*  tBodyGyroJerkMag-std()  
	*  fBodyAcc-std()-X        
	*  fBodyAccJerk-mean()-Y   
	*  fBodyAccJerk-std()-Z    
	*  fBodyGyro-std()-X       
	*  fBodyAccMag-std()       
	*  fBodyBodyGyroMag-std()  
	*  tBodyAcc-std()-Y           
	*  tGravityAcc-mean()-Z       
	*  tBodyAccJerk-mean()-X      
	*  tBodyAccJerk-std()-Y       
	*  tBodyGyro-mean()-Z         
	*  tBodyGyroJerk-mean()-X     
	*  tBodyGyroJerk-std()-Y      
	*  tGravityAccMag-mean()      
	*  tBodyGyroMag-mean()        
	*  fBodyAcc-mean()-X          
	*  fBodyAcc-std()-Y           
	*  fBodyAccJerk-mean()-Z      
	*  fBodyGyro-mean()-X         
	*  fBodyGyro-std()-Y          
	*  fBodyBodyAccJerkMag-mean() 
	*  fBodyBodyGyroJerkMag-mean()
	*  tBodyAcc-std()-Z          
	*  tGravityAcc-std()-X       
	*  tBodyAccJerk-mean()-Y     
	*  tBodyAccJerk-std()-Z      
	*  tBodyGyro-std()-X         
	*  tBodyGyroJerk-mean()-Y    
	*  tBodyGyroJerk-std()-Z     
	*  tGravityAccMag-std()      
	*  tBodyGyroMag-std()        
	*  fBodyAcc-mean()-Y         
	*  fBodyAcc-std()-Z          
	*  fBodyAccJerk-std()-X      
	*  fBodyGyro-mean()-Y        
	*  fBodyGyro-std()-Z         
	*  fBodyBodyAccJerkMag-std() 
	*  fBodyBodyGyroJerkMag-std()