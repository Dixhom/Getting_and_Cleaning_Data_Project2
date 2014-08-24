Code book for tidydat.txt
=========================

1. activity  
	A number corresponding to the name of activity a subject performed.


```
  activity      activity.name
        1            WALKING
        2   WALKING_UPSTAIRS
        3 WALKING_DOWNSTAIRS
        4            SITTING
        5           STANDING
        6             LAYING
```

2. subject  
	A number corresponding to a subject  
	1..30  
	
3. mean  
	The average of mean of values for each experiment for each activity and each subject.  
	
	The original data contained several hundreds of values for each measurement.  
	The mean of the values was calculated for each experiment.  
	The experiments still contained multiple data for each activity and each subject.  
	So the average of the means was calculated for each activity and each subject.  
	
4. stdev  
	The average of standard deviation for each experiment for each activity and each subject.  
	This data was processed just like 3. mean.  
		
5. activity.name  
	The activity name corresponding to 1. activity.  
	For detail, see 1. activity.  
