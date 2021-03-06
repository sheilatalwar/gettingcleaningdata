run_analysis.R
===================

Getting &amp; Cleaning Data Class Project - run_analysis.R

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

For each record the following is provided:
==========================================

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.
- Features are normalized and bounded within [-1,1].
- Each feature vector is a row on the text file.


The original dataset includes the following files:
=========================================

- 'README.txt' 

- 'features_info.txt': Shows information about the variables used on the feature vector.

- 'features.txt': List of all features 

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.


Code Documentation 
==================

The R script run_analysis.R has two functions (described below).  The user should run getTidy() in order to get the tidy dataset.  getTidy() calls getDataset().  
- getTidy() 
    - Retrieves the column labels from the features.txt file
    - Retrieves the activity IDs & activities from the activity_labels.txt file
    - Calls getDataset() twice - once to retrieve the test dataset, once to retrieve the training dataset
    - Uses rbind to combine the training and the test sets to create one data set
    - Extracts only the measurements on the mean and standard deviation for each measurement (using grep)
    - Uses activity_labels.txt to translate the activity numbers to activity names
- getDataset(datasetFile, subjectFile, activityFile, columnLabels)
    - Takes as input the name of the dataset file, the subject file, the activity file and the column labels
    - Reads in the datasetFile, and applies the column labels to the data frame
        - The column labels make the dataset more tidy, by descriptively naming each variable.      
    - Reads in the subjectFile and activityFile into data frames
    - Combines the three data frames into one, and returns the final dataframe to getTidy()
    


License:
========
For more information about this dataset contact: activityrecognition@smartlab.ws
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.

