Getting & Cleaning Data Class Project Data Dictionary
=====================================================

Experiment Summary:

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. 

A test dataset and a training dataset were created, and the data was collected separately, but in the same format.  Those files were provided to the student.  See README.md for more details.  

Tidy Dataset Description & Transformation:
==========================================
- The original data was read in, and formatted into a tidy dataset.  
- An R script (called run_analysis.R) did the following:
  - Merged the training and the test sets to create one data set.
  - Extracted only the measurements on the mean and standard deviation for each measurement. 
  - Used descriptive activity names to name the activities in the data set
  - Appropriately labeled the data set with descriptive variable names. 
  - Created thetidy data set with the average of each variable for each activity and each subject. 
- The tidy dataset contains each combination of SubjectID (numbered 1 through 30), and Activities (6 activities total
- There are 66 measurements for each combination of SubjectID and Activity, reflecting the mean and standard deviation of each of the datapoints


Tidy Dataset Variables:
=====================


- SubjectID: Integer, Range: 1-30	
    - ID of the subject of the experiment
- Activity: String	
    - Activity the subject was doing when data was recorded
    - Possible Values:
      - WALKING
      - WALKING_UPSTAIRS
      - WALKING_DOWNSTAIRS
      - SITTING
      - STANDING
      - LAYING
- tBodyAcc.mean.X: Numeric, bounded within [-1,1]
    - Mean of Body Triaxial Acceleration Signal - X axis
- tBodyAcc.mean.Y: Numeric, bounded within [-1,1]
    - Mean of Body Triaxial Acceleration Signal - Y axis
- tBodyAcc.mean.Z: Numeric, bounded within [-1,1]	
    - Mean of Body Triaxial Acceleration Signal - Z axis
- tBodyAcc.std.X: Numeric, bounded within [-1,1]	
    - Standard Deviation of Body Triaxial Acceleration Signal- X axis
- tBodyAcc.std.Y: Numeric, bounded within [-1,1]	
    - Standard Deviation of  Body Triaxial Acceleration Signal - Y axis
- tBodyAcc.std.Z: Numeric, bounded within [-1,1]	
    - Standard Deviation of Body Triaxial Acceleration Signal - Z axis
- tGravityAcc.mean.X: Numeric, bounded within [-1,1]	
    - Mean of Gravity Triaxial Acceleration Signal - X axis
- tGravityAcc.mean.Y: Numeric, bounded within [-1,1]	
    - Mean of Gravity Triaxial Acceleration Signal - Y axis
- tGravityAcc.mean.Z: Numeric, bounded within [-1,1]	
    - Mean of Gravity Triaxial Acceleration Signal - Z axis
- tGravityAcc.std.X: Numeric, bounded within [-1,1]	
    - Standard Deviation of Gravity Triaxial Acceleration Signal- X axis
- tGravityAcc.std.Y: Numeric, bounded within [-1,1]	
    - Standard Deviation of  Gravity Triaxial Acceleration Signal - Y axis
- tGravityAcc.std.Z: Numeric, bounded within [-1,1]	
    - Standard Deviation of Gravity Triaxial Acceleration Signal - Z axis
- tBodyAccJerk.mean.X: Numeric, bounded within [-1,1]	
    - Mean of Body Triaxial Acceleration Jerk Signal - X axis
- tBodyAccJerk.mean.Y: Numeric, bounded within [-1,1]	
    - Mean of Body Triaxial Acceleration Jerk Signal - Y axis
- tBodyAccJerk.mean.Z: Numeric, bounded within [-1,1]	
    - Mean of Body Triaxial Acceleration Jerk Signal - Z axis
- tBodyAccJerk.std.X: Numeric, bounded within [-1,1]	
    - Standard Deviation of Body Triaxial Acceleration Jerk Signal- X axis
- tBodyAccJerk.std.Y: Numeric, bounded within [-1,1]	
    - Standard Deviation of  Body Triaxial Acceleration Jerk Signal - Y axis
- tBodyAccJerk.std.Z: Numeric, bounded within [-1,1]	
    - Standard Deviation of Body Triaxial Acceleration Jerk Signal - Z axis
- tBodyGyro.mean.X: Numeric, bounded within [-1,1]	
    - Mean of Body Triaxial Gyroscopic Signal - X axis
- tBodyGyro.mean.Y: Numeric, bounded within [-1,1]	
    - Mean of Body Triaxial Gyroscopic Signal - Y axis
- tBodyGyro.mean.Z: Numeric, bounded within [-1,1]	
    - Mean of Body Triaxial Gyroscopic Signal - Z axis
- tBodyGyro.std.X: Numeric, bounded within [-1,1]	
    - Standard Deviation of Body Triaxial Gyroscopic Signal- X axis
- tBodyGyro.std.Y: Numeric, bounded within [-1,1]	
    - Standard Deviation of  Body Triaxial Gyroscopic Signal - Y axis
- tBodyGyro.std.Z: Numeric, bounded within [-1,1]	
    - Standard Deviation of Body Triaxial Gyroscopic Signal - Z axis
- tBodyGyroJerk.mean.X: Numeric, bounded within [-1,1]	
    - Mean of Body Triaxial Gyroscopic Jerk Signal - X axis
- tBodyGyroJerk.mean.Y: Numeric, bounded within [-1,1]	
    - Mean of Body Triaxial Gyroscopic Jerk Signal - Y axis
- tBodyGyroJerk.mean.Z: Numeric, bounded within [-1,1]	
    - Mean of Body Triaxial Gyroscopic Jerk Signal - Z axis
- tBodyGyroJerk.std.X: Numeric, bounded within [-1,1]	
    - Standard Deviation of Body Triaxial Gyroscopic Jerk Signal- X axis
- tBodyGyroJerk.std.Y: Numeric, bounded within [-1,1]	
    - Standard Deviation of  Body Triaxial Gyroscopic Jerk Signal - Y axis
- tBodyGyroJerk.std.Z: Numeric, bounded within [-1,1]	
    - Standard Deviation of Body Triaxial Gyroscopic Jerk Signal - Z axis
- tBodyAccMag.mean: Numeric, bounded within [-1,1]	
    - Mean of Magnitude of Body Acceleration Signal
- tBodyAccMag.std: Numeric, bounded within [-1,1]	
    - Standard Deviation of Magnitude of Body Acceleration Signal
- tGravityAccMag.mean: Numeric, bounded within [-1,1]	
    - Mean of Magnitude of Gravity Acceleration Signal
- tGravityAccMag.std: Numeric, bounded within [-1,1]	
  - Standard Deviation of Magnitude of Gravity Acceleration Signal
- tBodyAccJerkMag.mean: Numeric, bounded within [-1,1]	
  - Mean of  Magnitude of Body  Acceleration Jerk Signal
- tBodyAccJerkMag.std: Numeric, bounded within [-1,1]	
    - Standard Deviation of Magnitude of Body Acceleration Jerk Signal
- tBodyGyroMag.mean: Numeric, bounded within [-1,1]	
    - Mean of Magnitude of Body Gyroscopic Signal
- tBodyGyroMag.std: Numeric, bounded within [-1,1]	
    - Standard Deviation of Magnitude of Body Gyroscopic Signal
- tBodyGyroJerkMag.mean: Numeric, bounded within [-1,1]
    - Mean of  Magnitude of Body Gyroscopic Jerk Signal
- tBodyGyroJerkMag.std: Numeric, bounded within [-1,1]	
    - Standard Deviation of Magnitude of Body Gyroscopic Jerk Signal
- fBodyAcc.mean.X: Numeric, bounded within [-1,1]	
    - Mean of Fast Fourier Transform (FFT) of Body Triaxial Acceleration Signal - X axis
- fBodyAcc.mean.Y: Numeric, bounded within [-1,1]	
    - Mean of Fast Fourier Transform (FFT) of Body Triaxial Acceleration Signal - Y axis
- fBodyAcc.mean.Z: Numeric, bounded within [-1,1]
    - Mean of Fast Fourier Transform (FFT) of Body Triaxial Acceleration Signal - Z axis
- fBodyAcc.std.X: Numeric, bounded within [-1,1]	
    - Standard Deviation of Fast Fourier Transform (FFT) of Body Triaxial Acceleration Signal- X axis
- fBodyAcc.std.Y: Numeric, bounded within [-1,1]	
    - Standard Deviation of  Fast Fourier Transform (FFT) of Body Triaxial Acceleration Signal - Y axis
- fBodyAcc.std.Z: Numeric, bounded within [-1,1]	
    - Standard Deviation of Fast Fourier Transform (FFT) of Body Triaxial Acceleration Signal - Z axis
- fBodyAccJerk.mean.X: Numeric, bounded within [-1,1]
    - Mean of Fast Fourier Transform (FFT) of Body Triaxial Acceleration Jerk Signal - X axis
- fBodyAccJerk.mean.Y: Numeric, bounded within [-1,1]
    - Mean of Fast Fourier Transform (FFT) of Body Triaxial Acceleration Jerk Signal - Y axis
- fBodyAccJerk.mean.Z: Numeric, bounded within [-1,1]	
    - Mean of Fast Fourier Transform (FFT) of Body Triaxial Acceleration Jerk Signal - Z axis
- fBodyAccJerk.std.X: Numeric, bounded within [-1,1]	
    - Standard Deviation of Fast Fourier Transform (FFT) of Body Triaxial Acceleration Jerk Signal- X axis
- fBodyAccJerk.std.Y: Numeric, bounded within [-1,1]	
    - Standard Deviation of  Fast Fourier Transform (FFT) of Body Triaxial Acceleration Jerk Signal - Y axis
- fBodyAccJerk.std.Z: Numeric, bounded within [-1,1]	
    - Standard Deviation of Fast Fourier Transform (FFT) of Body Triaxial Acceleration Jerk Signal - Z axis
- fBodyGyro.mean.X: Numeric, bounded within [-1,1]	
    - Mean of Fast Fourier Transform (FFT) of Body Triaxial Gyroscopic Signal - X axis
- fBodyGyro.mean.Y: Numeric, bounded within [-1,1]	
    - Mean of Fast Fourier Transform (FFT) of Body Triaxial Gyroscopic Signal - Y axis
- fBodyGyro.mean.Z: Numeric, bounded within [-1,1]	
    - Mean of Fast Fourier Transform (FFT) of Body Triaxial Gyroscopic Signal - Z axis
- fBodyGyro.std.X: Numeric, bounded within [-1,1]	
    - Standard Deviation of Fast Fourier Transform (FFT) of Body Triaxial Gyroscopic Signal- X axis
- fBodyGyro.std.Y: Numeric, bounded within [-1,1]	
    - Standard Deviation of  Fast Fourier Transform (FFT) of Body Triaxial Gyroscopic Signal - Y axis
- fBodyGyro.std.Z: Numeric, bounded within [-1,1]	
    - Standard Deviation of Fast Fourier Transform (FFT) of Body Triaxial Gyroscopic Signal - Z axis
- fBodyAccMag.mean: Numeric, bounded within [-1,1]	
    - Mean of Magnitude of Fast Fourier Transform (FFT) of Body Acceleration Signal
- fBodyAccMag.std: Numeric, bounded within [-1,1]	
    - Standard Deviation of Magnitude of Fast Fourier Transform (FFT) of Body Acceleration Signal
- fBodyBodyAccJerkMag.mean: Numeric, bounded within [-1,1]	
    - Mean of Magnitude of Fast Fourier Transform (FFT) of Body Acceleration Jerk Signal
- fBodyBodyAccJerkMag.std: Numeric, bounded within [-1,1]	
    - Standard Deviation of Magnitude of Fast Fourier Transform (FFT) of Body Acceleration Jerk Signal
- fBodyBodyGyroMag.mean: Numeric, bounded within [-1,1]	
    - Mean of  Magnitude of Fast Fourier Transform (FFT) of Body Gyroscopic Signal
- fBodyBodyGyroMag.std: Numeric, bounded within [-1,1]	
    - Standard Deviation of Fast Fourier Transform (FFT) of Magnitude of Body Gyroscopic Signal
- fBodyBodyGyroJerkMag.mean: Numeric, bounded within [-1,1]	
    - Mean of Magnitude of Fast Fourier Transform (FFT) of Body Gyroscopic Jerk Signal
- fBodyBodyGyroJerkMag.std: Numeric, bounded within [-1,1]	
    - Standard Deviation of Magnitude of Fast Fourier Transform (FFT) of Body Gyroscopic Jerk Signal
