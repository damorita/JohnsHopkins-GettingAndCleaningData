### Getting_and_Cleaning_Data
#####Contains programmin assignment for run_analysis.

run_analysis.r executes the following...

1. reads data files located in UCI HAR Dataset, UCI HAR Dataset/train, and UCI HAR Dataset/test into dataframs
2. Merges the train and test data files into a single data frame
3. Consolidates data frame to only variables containing mean or standard deviation data
4. Tidy the data frame to have human readable clumn names for activites, subjects, and variables
5. Writes a clean_data.txt file to the working directory
6. Using the previous data frame, writes a second text file agg_avg.txt with which shows an aggregate summary of all variables, subjects, and activities with their mean values.


### Code Book of Variables:
1. features        - contains data from features.txt
2. activities      - contains data from activities.txt
3. subject_test    - contains data from subject_test.txt
4. subject_train   - contains data from subject_train.txt
5. subject_data    - merged data frame of subject_train and subject_test
6. X_test          - contains data from X_test.txt
7. y_test          - contains data from y_test.txt
8. X_train         - contains data from X_train.txt
9. y_train         - contains data from y_train.txt
10. x_data          - merged data frame of X_train and X_test
11. y_data          - merged data frame of y_train and y_test
12. ft_mean_sd      - contians row values in features where variable contains "mean" or "std"
13. clean_data      - data frame with tidy data
14. agg_avg         - data frame with aggregate average data using the data set from clean_data
