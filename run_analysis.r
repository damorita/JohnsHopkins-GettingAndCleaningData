# run_analysis.R

# Read in all necessary data files

features <- read.table("./features.txt")
activities <- read.table("./activity_labels.txt")

subject_test <- read.table(file="./test/subject_test.txt")
X_test <- read.table(file="./test/X_test.txt")
y_test <- read.table(file="./test/y_test.txt")

subject_train <- read.table(file="./train/subject_train.txt")
X_train <- read.table(file="./train/X_train.txt")
y_train <- read.table(file="./train/y_train.txt")


# 1 Merges the training and the test sets to create one data set.
#####################################################################################################
# Merge Test & Train 
X_data <- rbind(X_train, X_test)
y_data <- rbind(y_train,y_test)
subject_data <-rbind(subject_train,subject_test)

# 2 Extracts only the measurements on the mean and standard deviation for each measurement.
#####################################################################################################
# Finds Mean & Std data values
features <- read.table('./features.txt')
ft_mean_sd <- grep("mean|std\\(\\)", features[, 2])
x_mean_std <- X_data[, ft_mean_sd]


# 3 Uses descriptive activity names to name the activities in the data set. 
# 4 Appropriately labels the data set with descriptive variable names.
#####################################################################################################
# Labels feature columns, activities, and subjects
names(x_mean_std) <- features[ft_mean_sd,2]
names(y_data) <- "Activity"
y_data[,1] = activities[y_data[,1],2]
names(subject_data) <- "SubjectID"

# Combine all Datasets with tidy data
clean_data <- cbind(subject_data, y_data, x_mean_std)


# 5 From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
#####################################################################################################
#aggregate averages based on activity and subject
agg_avg <- aggregate(clean_data, by = list(Act_Avg=clean_data$Activity, Sub_Avg=clean_data$SubjectID), FUN=mean )
# drop activity and subject id column
agg_avg <- agg_avg[,!colnames(agg_avg) %in% c("Activity","SubjectID")]


# Completed Data Frames:
#####################################################################################################

write.table(clean_data, "clean_data.txt")
write.table(agg_avg, "avg_data.txt", row.names = F)

clean_data
