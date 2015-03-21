**Study Design**

 

The summerized data below is the average of all the data collected by a subject
doing a particular activity.  One row for each participant doing one activity.
There were 30 participants doing 6 activities therefore 180 rows.  The
additional 79 columns beyond subject and activity are the average measurements
calculated during the study.

 

These signals were used to estimate variables of the feature vector for each
pattern:

'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

Captured 3-axial linear acceleration and 3-axial angular velocity at a constant
rate of 50Hz.

 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying
noise filters and then sampled in fixed-width sliding windows of 2.56 sec and
50% overlap (128 readings/window).

 

**Code Book**

- SubjectID

    1 - 30  Participants in the study

    

- ActivityName

    Laying

    Sitting

    Standing

    Walking

    Walking DownStairs

     

Two sensoring signals were measured using an accelerometer and gyroscope.
Features are normalized and bounded within [-1,1].

All units are radians per second.



- TimeBodyAccelerometerMean-X

- TimeBodyAccelerometerMean-Y

- TimeBodyAccelerometerMean-Z

- TimeBodyAccelerometerStandardDeviation-X

- TimeBodyAccelerometerStandardDeviation-Y

- TimeBodyAccelerometerStandardDeviation-Z

- TimeGravityAccelerometerMean-X

- TimeGravityAccelerometerMean-Y

- TimeGravityAccelerometerMean-Z

- TimeGravityAccelerometerStandardDeviation-X

- TimeGravityAccelerometerStandardDeviation-Y

- TimeGravityAccelerometerStandardDeviation-Z

- TimeBodyAccelerometerJerkMean-X

- TimeBodyAccelerometerJerkMean-Y

- TimeBodyAccelerometerJerkMean-Z

- TimeBodyAccelerometerJerkStandardDeviation-X

- TimeBodyAccelerometerJerkStandardDeviation-Y

- TimeBodyAccelerometerJerkStandardDeviation-Z

- TimeBodyGyroScopeMean-X

- TimeBodyGyroScopeMean-Y

- TimeBodyGyroScopeMean-Z

- TimeBodyGyroScopeStandardDeviation-X

- TimeBodyGyroScopeStandardDeviation-Y

- TimeBodyGyroScopeStandardDeviation-Z

- TimeBodyGyroScopeJerkMean-X

- TimeBodyGyroScopeJerkMean-Y

- TimeBodyGyroScopeJerkMean-Z

- TimeBodyGyroScopeJerkStandardDeviation-X

- TimeBodyGyroScopeJerkStandardDeviation-Y

- TimeBodyGyroScopeJerkStandardDeviation-Z"

- TimeBodyAccelerometerMagMean

- TimeBodyAccelerometerMagStandardDeviation

- TimeGravityAccelerometerMagMean

- TimeGravityAccelerometerMagStandardDeviation

- TimeBodyAccelerometerJerkMagnitudeMean

- TimeBodyAccelerometerJerkMagnitudeStandardDeviation

- TimeBodyGyroScopeMagMean

- TimeBodyGyroScopeMagStandardDeviation

- TimeBodyGyroScopeJerkMagnitudeMean

- TimeBodyGyroScopeJerkMagnitudeStandardDeviation

- FrequencyBodyAccelerometerMean-X

- FrequencyBodyAccelerometerMean-Y

- FrequencyBodyAccelerometerMean-Z

- FrequencyBodyAccelerometerStandardDeviation-X

- FrequencyBodyAccelerometerStandardDeviation-Y

- FrequencyBodyAccelerometerStandardDeviation-Z

- FrequencyBodyAccelerometerMeanFreq-X

- FrequencyBodyAccelerometerMeanFreq-Y

- FrequencyBodyAccelerometerMeanFreq-Z

- FrequencyBodyAccelerometerJerkMean-X

- FrequencyBodyAccelerometerJerkMean-Y

- FrequencyBodyAccelerometerJerkMean-Z

- FrequencyBodyAccelerometerJerkStandardDeviation-X

- FrequencyBodyAccelerometerJerkStandardDeviation-Y

- FrequencyBodyAccelerometerJerkStandardDeviation-Z

- FrequencyBodyAccelerometerJerkMeanFreq-X

- FrequencyBodyAccelerometerJerkMeanFreq-Y

- FrequencyBodyAccelerometerJerkMeanFreq-Z

- FrequencyBodyGyroScopeMean-X

- FrequencyBodyGyroScopeMean-Y

- FrequencyBodyGyroScopeMean-Z

- FrequencyBodyGyroScopeStandardDeviation-X

- FrequencyBodyGyroScopeStandardDeviation-Y

- FrequencyBodyGyroScopeStandardDeviation-Z

- FrequencyBodyGyroScopeMeanFreq-X

- FrequencyBodyGyroScopeMeanFreq-Y

- FrequencyBodyGyroScopeMeanFreq-Z

- FrequencyBodyAccelerometerMagMean

- FrequencyBodyAccelerometerMagStandardDeviation

- FrequencyBodyAccelerometerMagMeanFreq

- FrequencyBodyBodyAccelerometerJerkMagnitudeMean

- FrequencyBodyBodyAccelerometerJerkMagnitudeStandardDeviation

- FrequencyBodyBodyAccelerometerJerkMagnitudeMeanFreq

- FrequencyBodyBodyGyroScopeMagMean

- FrequencyBodyBodyGyroScopeMagStandardDeviation

- FrequencyBodyBodyGyroScopeMagMeanFreq

- FrequencyBodyBodyGyroScopeJerkMagnitudeMean

- FrequencyBodyBodyGyroScopeJerkMagnitudeStandardDeviation

- FrequencyBodyBodyGyroScopeJerkMagnitudeMeanFreq
