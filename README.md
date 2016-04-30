# Getting_and_Cleaning_Data
#Contains programmin assignment for run_analysis.

run_analysis.r executes the following...
1) reads data files located in UCI HAR Dataset, UCI HAR Dataset/train, and UCI HAR Dataset/test into dataframs
2) Merges the train and test data files into a single data frame
3) Consolidates data frame to only variables containing mean or standard deviation data
4) Tidy the data frame to have human readable clumn names for activites, subjects, and variables
5) Writes a clean_data.txt file to the working directory
6) Using the previous data frame, writes a second text file agg_avg.txt with which shows an aggregate summary of all variables, subjects, and activities with their mean values.


