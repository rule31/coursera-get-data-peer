### Getting and Cleaning Data Project 

There are 3 files of interest:
1.  run_analysis.R: contains the R scripts that process the raw data into one that contains the average of each variable for each activity and subject.
2.  CodeBook.md:  the code book that explains the variables, data and transformation steps.
3.  tidy_data_processed.txt: the output, clean tidy data.

### How to run the script.
The data set used is from below:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

1.  Download and save the data from link above
2.  Open run_analysis.R script
3.  Change the working directory to the data folder from above
4.  Run the script
5.  It will generate a clean data file in the same data directory with the average of each variable for each activity and each subject
6.  The output file name is tidy_data_processed.txt

### R library used
1.  data.table
