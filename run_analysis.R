run_analysis <- function(){
	
	## 1.Merges the training and the test sets to create one data set.
	# read and merge the test data
	test.x <- read.table("./test/X_test.txt")
	test.y <- read.table("./test/y_test.txt")
	test.sbj <- read.table("./test/subject_test.txt")
	
	names(test.y) <- "activity"
	names(test.sbj) <- "subject"
	test <- cbind(test.sbj, test.y, test.x)

	# read and merge the training data
	train.x <- read.table("./train/X_train.txt")
	train.y <- read.table("./train/y_train.txt")
	train.sbj <- read.table("./train/subject_train.txt")

	names(train.y) <- "activity"
	names(train.sbj) <- "subject"
	train <- cbind(train.sbj, train.y, train.x)
	
	# merge the test and training data to create one data set
	merged <- rbind(test, train)


	## 2.Extracts only the measurements on the mean and standard deviation for each measurement. 
	# subset measurement values, excludin subject number and activity labels
	meas.data <- merged[,c(-1,-2)]

	# calculate mean and standerd deviation for each row by apply(x, 1, function_name)
	# (2nd arg "1" is for row)
	meas.mean <- apply(meas.data, 1, mean)
	meas.sd <- apply(meas.data, 1, sd)
	
	merged2 <- cbind(merged[,c(1,2)], mean = meas.mean, stdev = meas.sd)

	## 3.Uses descriptive activity names to name the activities in the data set
	act.name.list <- read.table("./activity_labels.txt")
	names(act.name.list) <- c("activity", "activity.name")

	# merge the data and the activity name list on activity number
	merged3 <- merge(merged2, act.name.list, by="activity")

	## 4.Appropriately labels the data set with descriptive variable names. 
	# already done that

	## 5.Creates a second, independent tidy data set with the average of each variable for each activity and each subject.
	# subset measurement values, excludin subject number and activity labels
	meas.data <- cbind(mean = merged3$mean, stdev = merged3$stdev)
	
	# aggregate the data by subject and activity
	# (function aggregate used since tapply function only accepts vectors)
	meas.avrg <- aggregate(meas.data, by=list(subject = merged3$subject, activity = merged3$activity), mean)
	
	# merge the data and the activity name list on activity number
	merged4 <- merge(meas.avrg, act.name.list, by="activity")

	# output the tidy data as a txt file
	write.table(merged4, "./tidydat.txt", row.name=FALSE)
	
	head(merged3)
	dim(merged3)
	head(merged4)
	dim(merged4)
	
}
