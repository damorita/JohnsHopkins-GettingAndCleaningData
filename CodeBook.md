### Code Book of Variables:

####Subjects:
Unique integer ID's of each test/train subjects

####Activities:
1 WALKING
2 WALKING_UPSTAIRS
3 WALKING_DOWNSTAIRS
4 SITTING
5 STANDING
6 LAYING

####Training and Test Data:
Contains avg, std, and other results determined from subjects partaking in different activities



#### Variables Created in run_analysis.r
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
