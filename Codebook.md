
                      #Data Dictionary
                      
1.Check if the file already exists,else create a new directory.
2.Download the file from web and unzip to the local folder.
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Step 1: Merging the training and testing tables to 1 dataset.
1.1.Creating variables for reading the testing tables -subject_test,x_test,y_test.
1.2.Creating variables for reading the training tables -subject_train,x_train,y_train.
1.3.Reading the feature and activity labels -activityLabels,features.

Step 4: Appropriately labels the data set with descriptive variable names

     1.4 Merging all the tables of train into a single table -merge_train.
     1.5 Merging all the tables of test into a single table - merge_test
     1.6 Merging the test and train tables to 1 dataset -merge_data.

Step 2: Extracts only the measurements on the mean and standard deviation for each measurement.
2.1 Create a variable to read the Column names -colNames.
2.2 Creating a vector for ID,mean and standard deviation -mean_and_std_all.

Step 3:Descriptive activity names to name the activities in the data set -data_activitynames.
Step4 is implemented in the above steps, by giving appropriate variable names in the dataset.

Step 5: creates a second, independent tidy data set with the average of each variable for each activity and each subject. 
     5.1 Creates a second, independent tidy data set.
     5.2 Writing second tidy data set in txt file.

##Variables:

###For the first dataset 
activityId                  
subjectId      
activityType            
tBodyAcc-mean()-X              
tBodyAcc-mean()-Y
tBodyAcc-mean()-Z      
tBodyAcc-std()-X               
tBodyAcc-std()-Y           
tBodyAcc-std()-Z       
tGravityAcc-mean()-X           
tGravityAcc-mean()-Y     
tGravityAcc-mean()-Z    
tGravityAcc-std()-X            
tGravityAcc-std()-Y      
tGravityAcc-std()-Z     
tBodyAccJerk-mean()-X          
tBodyAccJerk-mean()-Y    
tBodyAccJerk-mean()-Z          
tBodyAccJerk-std()-X           
tBodyAccJerk-std()-Y
tBodyAccJerk-std()-Z            
tBodyGyro-mean()-X             
tBodyGyro-mean()-Y         
tBodyGyro-mean()-Z    
tBodyGyro-std()-X              
tBodyGyro-std()-Y        
tBodyGyro-std()-Z             
tBodyGyroJerk-mean()-X         
tBodyGyroJerk-mean()-Y   
tBodyGyroJerk-mean()-Z         
tBodyGyroJerk-std()-X          
tBodyGyroJerk-std()-Y      
tBodyGyroJerk-std()-Z    
tBodyAccMag-mean()             
tBodyAccMag-std()           
tGravityAccMag-mean()     
tGravityAccMag-std()           
tBodyAccJerkMag-mean()      
tBodyAccJerkMag-std()        
tBodyGyroMag-mean()            
tBodyGyroMag-std()          
tBodyGyroJerkMag-mean()      
tBodyGyroJerkMag-std()         
fBodyAcc-mean()-X           
fBodyAcc-mean()-Y           
fBodyAcc-mean()-Z              
fBodyAcc-std()-X              
fBodyAcc-std()-Y             
fBodyAcc-std()-Z               
fBodyAcc-meanFreq()-X        
fBodyAcc-meanFreq()-Y      
fBodyAcc-meanFreq()-Z         
fBodyAccJerk-mean()-X   
fBodyAccJerk-mean()-Y   
fBodyAccJerk-mean()-Z          
fBodyAccJerk-std()-X        
fBodyAccJerk-std()-Y      
fBodyAccJerk-std()-Z           
fBodyAccJerk-meanFreq()-X     
fBodyAccJerk-meanFreq()-Y     
fBodyAccJerk-meanFreq()-Z     
fBodyGyro-mean()-X            
fBodyGyro-mean()-Y           
fBodyGyro-mean()-Z             
fBodyGyro-std()-X             
fBodyGyro-std()-Y           
fBodyGyro-std()-Z              
fBodyGyro-meanFreq()-X         
fBodyGyro-meanFreq()-Y        
fBodyGyro-meanFreq()-Z       
fBodyAccMag-mean()
fBodyAccMag-std()
fBodyAccMag-meanFreq()      
fBodyBodyAccJerkMag-mean()   
fBodyBodyAccJerkMag-std()   
fBodyBodyAccJerkMag-meanFreq() 
fBodyBodyGyroMag-mean()   
fBodyBodyGyroMag-std()
fBodyBodyGyroMag-meanFreq()    
fBodyBodyGyroJerkMag-mean()  
fBodyBodyGyroJerkMag-std()
fBodyBodyGyroJerkMag-meanFreq()
                   
###Variables in the second tidy data set

subjectId
activityId
activityType
tBodyAcc-mean()-X             
tBodyAcc-mean()-Y
tBodyAcc-mean()-Z
tBodyAcc-std()-X              
tBodyAcc-std()-Y
tBodyAcc-std()-Z
tGravityAcc-mean()-X           
tGravityAcc-mean()-Y
tGravityAcc-mean()-Z
tGravityAcc-std()-X           
tGravityAcc-std()-Y
tGravityAcc-std()-Z
tBodyAccJerk-mean()-X        
tBodyAccJerk-mean()-Y
tBodyAccJerk-mean()-Z
tBodyAccJerk-std()-X          
tBodyAccJerk-std()-Y
tBodyAccJerk-std()-Z
tBodyGyro-mean()-X             
tBodyGyro-mean()-Y
tBodyGyro-mean()-Z
tBodyGyro-std()-X              
tBodyGyro-std()-Y
tBodyGyro-std()-Z
tBodyGyroJerk-mean()-X         
tBodyGyroJerk-mean()-Y
tBodyGyroJerk-mean()-Z
tBodyGyroJerk-std()-X          
tBodyGyroJerk-std()-Y
tBodyGyroJerk-std()-Z
tBodyAccMag-mean()          
tBodyAccMag-std()
tGravityAccMag-mean()
tGravityAccMag-std()           
tBodyAccJerkMag-mean()
tBodyAccJerkMag-std()
tBodyGyroMag-mean()            
tBodyGyroMag-std()
tBodyGyroJerkMag-mean()
tBodyGyroJerkMag-std()        
fBodyAcc-mean()-X
fBodyAcc-mean()-Y  
fBodyAcc-mean()-Z              
fBodyAcc-std()-X 
fBodyAcc-std()-Y
fBodyAcc-std()-Z               
fBodyAcc-meanFreq()-X         
fBodyAcc-meanFreq()-Y
fBodyAcc-meanFreq()-Z
fBodyAccJerk-mean()-X    
fBodyAccJerk-mean()-Y
fBodyAccJerk-mean()-Z
fBodyAccJerk-std()-X
fBodyAccJerk-std()-Y
fBodyAccJerk-std()-Z           
fBodyAccJerk-meanFreq()-X  
fBodyAccJerk-meanFreq()-Y
fBodyAccJerk-meanFreq()-Z
      
fBodyGyro-mean()-X             
fBodyGyro-mean()-Y              
fBodyGyro-mean()-Z             
fBodyGyro-std()-X               
fBodyGyro-std()-Y             
fBodyGyro-std()-Z              
fBodyGyro-meanFreq()-X          
fBodyGyro-meanFreq()-Y         
fBodyGyro-meanFreq()-Z         
fBodyAccMag-mean() 
fBodyAccMag-std()
fBodyAccMag-meanFreq()
fBodyBodyAccJerkMag-mean() 
fBodyBodyAccJerkMag-std()
fBodyBodyAccJerkMag-meanFreq()
fBodyBodyGyroMag-mean()
fBodyBodyGyroMag-std()
fBodyBodyGyroMag-meanFreq()
fBodyBodyGyroJerkMag-mean() 
fBodyBodyGyroJerkMag-std()
fBodyBodyGyroJerkMag-meanFreq()

##About other variables
x_train, y_train, x_test, y_test, subject_train and subject_test contain the data from the downloaded files.
merge_train, merge_test and merge_data merge the previous datasets to further analysis.
features contains the correct names for the x_data dataset, which are applied to the column names
