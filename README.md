module3Project
==============

Getting and Cleaning Data Project Code


IMPORTANT NOTES:
Please note the following 3 points, otherwise the code will fail:
1. All data files and R code must be kept in the same working directory
2. You need to modify the working directory string to point to the actual directory you're using
3. You have read and understood the README.txt, features_info.txt files that came with the data


================
The run_analysis.R code process the data in the following sequence

1. Load required R libraries
2. Set working directory - IMPORTANT: SEE NOTE ABOVE!
3. Load all relevant data files into data tables
4. Bind training and testing measurement data into one data frame called X_all
5. Bind training and testing subject data into one data frame called subject_all
6. Bind training and testing activity data into one data frame and convert to actual activity names called y_all
7. Bind data + subject + activity together into one data frame called result and remove special characters (except "-") in the column names
8. Assign column names to result table
9. Remove unwanted columns from result table - leaving only those with "mean" or "std"
10. Create a new data table called result_mean using the result table and calculate the mean for each variables grouped by subject and activity
11. Write data to file "avg.txt"
