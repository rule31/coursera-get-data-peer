library(data.table)
setwd("Z:/coursera/data_science_track/get_data/UCI_HAR_Dataset")

x_test = read.table("test/X_test.txt")
y_test = read.table("test/y_test.txt")
sub_test = read.table("test/subject_test.txt")

x_train = read.table("train/X_train.txt")
y_train = read.table("train/y_train.txt")
sub_train = read.table("train/subject_train.txt")

# 1. Merges the training and the test sets to create one data set.
x_data = rbind(x_train, x_test)
y_data = rbind(y_train, y_test)
sub_data = rbind(sub_train, sub_test)

# 2. Extracts only the measurements on the mean and standard deviation for each measurement. 
feature_key = read.table("features.txt")
mean_key = grep("mean\\(\\)", feature_key$V2)
std_key = grep("std\\(\\)", feature_key$V2)

## The actual extraction code is below in step 4.

#3. Uses descriptive activity names to name the activities in the data set
activity_label = read.table("activity_labels.txt")
y_data_label = activity_label$V2[y_data$V1]

## The actual labelling code is below in step 4.

#4. Appropriately labels the data set with descriptive variable names. 
ext_key = sort(union(mean_key, std_key))
ext_key_name = feature_key$V2[ext_key]

x_data_ext = x_data[, ext_key]
colnames(x_data_ext) = ext_key_name

clean_data = cbind(sub_data$V1, y_data_label, x_data_ext)
colnames(clean_data)[1:2] = cbind('subject', 'activity')

#5. From the data set in step 4, creates a second, independent tidy data set with 
#   the average of each variable for each activity and each subject.

clean_data_dt = data.table(clean_data)
res =  clean_data_dt[, lapply(.SD, mean), by=c("subject", "activity")]
write.table(res, "tidy_data_processed.txt", row.name=FALSE)
