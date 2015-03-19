# The Run Analysis function reads data gathered from a wearable computing test.
# This function will merge training and test data into one data set.
# Extracts the mean and standard deviation values
# Create a tidy data set of those values.  It then summerizes the data into
# a new tidy data set and writes it to courseproject txt file in the data directory.
run_analysis <- function (){
      testData <- NULL;
      # Read Test Data
      print("Read test data")
      testData <- read.table("./data/UCI HAR Dataset/test/X_test.txt")
      # Read Training Data
      trainingData <- read.table("./data/UCI HAR Dataset/train/X_train.txt")
      #Combine testData and trainData into one Data Frame
      combineData <- rbind.fill(testData,trainingData)
      
      
      print("read y_test data")
      # Read the test Activity ID 1:6 (Walking, Walking_Upstairs, Walking Downstairs, Sitting, Standing, Laying)
      testActivity <- read.table("./data/UCI HAR Dataset/test/y_test.txt")
      # Add new column to identify the trial participant was in.
      print("y_train")
      trainActivity <- read.table("./data/UCI HAR Dataset/train/y_train.txt")
      print("CombineActivity")
      #Combine test data with training Activity data
      combineActivity <- rbind.fill(testActivity,trainActivity)
      setnames(combineActivity, old="V1",new="ActivityName")
      # Replace Activity ID with Name
      combineActivity$ActivityName[combineActivity$ActivityName == 1] <- "WALKING"
      combineActivity$ActivityName[combineActivity$ActivityName == 2] <- "WALKING UPSTAIRS"
      combineActivity$ActivityName[combineActivity$ActivityName == 3] <- "WALKING DOWNSTAIRS"
      combineActivity$ActivityName[combineActivity$ActivityName == 4] <- "SITTING"
      combineActivity$ActivityName[combineActivity$ActivityName == 5] <- "STANDING"
      combineActivity$ActivityName[combineActivity$ActivityName == 6] <- "LAYING"
     
      print("Read features")
      # Get measurements by reading using space as a dilmiter
      measurements <- read.csv2("./data/UCI HAR Dataset/features.txt",sep =" ", header=FALSE)
      # Assign Column names to vector
      v <- measurements$V2
      # Assign new column names to combined test data
      colnames(combineData) <- v
      print("subject_test")
      
      
      # Read subject test person  for both test and training individuals
      subTest <- read.table("./data/UCI HAR Dataset/test/subject_test.txt")
      # Add new column to identify what trial particpants were in
      ####subTest$newcolumn<-"TEST"
      # Add new Column names
      setnames(subTest, old="V1",new="SubjectID")
      ####setnames(subTest,old="newcolumn",new="Trial")
      # Read in training participants
      print("Read subject_train")
      subTrain <- read.table("./data/UCI HAR Dataset/train/subject_train.txt")
      ###subTrain$newcolum<-"TRAIN"
      # Change Column names to match Test
      setnames(subTrain, old="V1",new="SubjectID")
      ####setnames(subTrain, old="newcolum", new="Trial")
     
      # Combine Data Frames with Subject ID and Trial
      subjectCombine <- rbind.fill(subTest,subTrain)   
      # Add new column of Activity assign name
      subjectCombine <- cbind(subjectCombine,combineActivity)
     
      
      # Determine what columns have std or mean in title c will contain cols index of 
      # names with mean or std in them
      a<-grep ("mean",colnames(combineData),ignore.case=F)
      b<-grep ("std",colnames(combineData),ignore.case=F)
      c <- c(a,b)
      c <- sort(c)
     
      # Filter out just the mean and std columns
      filterCombineData <- combineData[,(c)] 
     
      #Clean up Column Names to be more Readable using regular expression syntax
      d <- sub("^t","Time",colnames(filterCombineData),ignore.case=F)
      d <- sub("^f","Frequency",d, ignore.case=F)
      d <- sub("Acc","Accelerometer",d,ignore.case=F)
      d <- sub("Gyro","GyroScope",d,ignore.case=F)
      d <- sub("JerkMag","JerkMagnitude",d,ignore.case=F)
      d <- sub("-mean","Mean",d,ignore.case=F)
      d <- sub("-std","StandardDeviation",d,ignore.case=F)
      d <- sub("\\(","",d,ignore.case=F)
      d <- sub("\\)","",d,ignore.case=F)
     
      names(filterCombineData) <- d
      finalData <- cbind(subjectCombine, filterCombineData)
      print(dim(finalData))
      print(head(finalData,n=3))
      
      # Create new tidy data set with the average of each variable for each activity and each subject
      finalTidy <- group_by(finalData, SubjectID, ActivityName) %>% summarise_each(funs(mean))
      print("Write Course Project")
      write.table(finalTidy, file= "./data/CourseProject.txt", row.names=FALSE)
}
