## Load libraries
library(data.table)

## Set working directory
setwd("C:/Users/Soy Boon/Documents/R/Data/Getting and Cleaning Data/Project")

## Load all relevant data files into data tables
activity_labels <- read.table("activity_labels.txt")
features <- read.table("features.txt")
subject_train <- read.table("subject_train.txt")
subject_test <- read.table("subject_test.txt")
X_train <- read.table("X_train.txt")
X_test <- read.table("X_test.txt")
y_train <- read.table("y_train.txt")
y_test <- read.table("y_test.txt")

## Bind training and testing measurement data into one data frame
X_all <- rbind(X_train, X_test)

## Bind training and testing subject data into one data frame
subject_all <- rbind(subject_train, subject_test)

## Bind training and testing activity data into one data frame
## and convert to actual activity names
y_all <- rbind(y_train, y_test)
y_all <- data.frame(activity_labels[match(y_all$V1, activity_labels$V1), 2])

## Bind data + subject + activity together into one data frame
## and remove special characters (except "-") in the column names
result <- cbind(X_all, subject_all, y_all)

## Assign column names
col_names <- as.vector(features[,2])
colnames(result) <- c(col_names, "subject", "activity")


## Remove unwanted columns - leave only those with "mean" or "std"
col_include <- subset(features, grepl("mean\\(\\)", features[,2]) | 
                          grepl("std\\(\\)", features[,2]), select=V2)
col_include <- as.vector(col_include[,1])
result <- subset(result, select=c(col_include, "subject", "activity"))
col_include <- gsub("[^0-9A-Za-z///' //-]", "", col_include)
colnames(result) <- c(col_include, "subject", "activity")


## create new data table from the result data frame
## calculate the mean for each measurement grouped by subject and activity
result_mean <- data.table(result)
result_mean <- result_mean[, lapply(.SD,mean), by=c("subject", "activity")]
result_mean <- result_mean[order(subject),]


## Write data to file
## CSV: write.csv(result_mean, file="avg_data.csv")
write.table(result_mean, file="avg_data.txt", row.name=FALSE)



###################################
## code to read back result file ##
###################################
## final_result <- read.table("avg_data.txt", header = TRUE)
