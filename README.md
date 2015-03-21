<<<<<<< HEAD
=================================================================
leaningDataCourseProject
=======
# CleaningDataCourseProject
>>>>>>> 97fd3c3505fc220317babf4c4f93fa8be7cb97ee
==================================================================
Coursera Getting and Cleaning Data
Course Project
Human Activity Recognition Using Smartphones Dataset
Version 1.0
==================================================================
GibsonAnalytics: Course Project for creating tidy data
Senior Research Data Analysts.
https://github.com/GibsonAnalytics/
Reference: Human Activity Recognition Using Smartphones Dataset
Version 1.0
==================================================================

As referenced above the experiments were carried out as bar of  Smartlab – Non Linear Complex Systems Laboratory.  The experiments was done on a group of volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist.

The following files are required to create the tidy data set.  Places all text documents into your local working directory.
      X_test.txt
      X_train.txt
      y_test.txt
      y_train.txt
      features.txt
      subject_test.txt
      subject_train.txt
      run_analysis.R
The file outputted containing the tidy data set is called CourseProject.txt see how to read below.

      
The data collected was run through the run_analysis R script to create a tidy data file called CourseProject.txt, see access instructions below.   The run_analysis accesses multiple files from the previous study and concatenates and combines data.   The script also filters data features that were not part of the mean and standard deviation calculation.  Below is a sample of the R code that did that filtering:

      # Determine what columns have std or mean in title c will contain cols index of 
      # names with mean or std in them
      a<-grep ("mean",colnames(combineData),ignore.case=F)
      b<-grep ("std",colnames(combineData),ignore.case=F)
      c <- c(a,b)
      c <- sort(c)
#
If std or mean appeared in the column title is was included in the tidy data summary.  If the volunteer was part of the test or training there measurements were included in the final summary.  The column names from the original data were transcribed to be more verbose then the original abbreviated form.  The summarized data was grouped by subjected and activity the volunteer was doing when measured, then the mean of each measurement of that grouping was calculated. 


How to Access CourseProject.txt to view the tidy data file:

From your local working directory i.e. use R command getwd().

In order to view tidy data in R, execute the following lines of code:

    setwd("<Enter In Your Local Working Directory here>”) 
    read.table("CourseProject.txt", header=TRUE)
    View(data)
<<<<<<< HEAD
=======



>>>>>>> 97fd3c3505fc220317babf4c4f93fa8be7cb97ee
