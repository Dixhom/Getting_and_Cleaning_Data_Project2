README.md
=============

Contents of this repo
---------------------

 This repo contains 3 files:
 
 1. README.md (This file)
 	This explains how the script run_analysis.R works
 
 2. run_analysis.R
 	This R script does the following:
 	1. Take the data from the Samsung Galaxy S smartphone in your working directory.
 	2. Merge and clean them up to make a tidy data set.
 	3. Export it as a txt file.

 3. tidydat.txt
 	A tidy data set created by run_analysis.R
 	
 4. CodeBook.md
 	A code book that describes the variables, the data, and any transformations or work that were performed to clean up the data


how the script run_analysis.R works
-----------------------------------
1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 
