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

## Bind training and testing data into one data frame
X_all <- rbind(X_train, X_test)

## Assign column names
col_names <- as.vector(features[,2])
colnames(X_all) <- col_names

## Remove unwanted columns - leave only those with "mean" or "std"
col_include <- subset(features, grepl("mean\\(\\)", features[,2]) | 
                            grepl("std\\(\\)", features[,2]), select=V2)
col_include <- as.vector(col_include[,1])
X_all <- subset(X_all, select=col_include)


## Bind training and testing subject data into one data frame
subject_all <- rbind(subject_train, subject_test)

## Bind training and testing activity data into one data frame
## and convert to actual activity names
y_all <- rbind(y_train, y_test)
y_all <- merge(y_all, activity_labels, sort = FALSE)


## Bind data + subject + activity together into one data frame
result <- cbind(X_all, subject_all, y_all[,2])
col_include <- c(col_include, "subject", "activity")
colnames(result) <- col_include


###################################
###    Step 1 to 4 Completed    ###
###################################
View(result)



## create new data table from the result data frame
## calculate the mean for each measurement grouped by subject and activity
result_mean <- data.table(result)
result_mean <- result_mean[, lapply(.SD,mean), by=c("subject", "activity")]

## Rename columns to add a prefix "avg" 
## setnames(result_mean, unlist(lapply("avg", paste, colnames(result_mean), sep = "-")))

## Write data to file
## CSV: write.csv(result_mean, file="avg_data.csv")
write.table(result_mean, file="avg_data.txt", row.name=FALSE)

########################
### Step 5 Completed ###
########################

