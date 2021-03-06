#getDataset() is a function that retrieves the components of a dataset and binds the elements together
getDataset<-function(datasetFile, subjectFile, activityFile, columnLabels)
{
  #Read dataset into a dataframe, using the columnLabels as the column names
  dataset<-read.table(datasetFile, header=FALSE, col.names=columnLabels)
  
  #Read subjects & activities into separate dataframes, and then bind the 3 tables together
  subjects<-read.table(subjectFile, header=FALSE, col.names=c("SubjectID"))
  activities<-read.table(activityFile,header=FALSE, col.names=c("ActivityID"))
  dataset<-cbind(dataset, subjects, activities)
  dataset
}

#makeTidy() is a function that reads in the two datasets, binds them together, 
#isolates the mean and standard deviation variables, and translates activity IDs to activity labels.  
#Finally, it creates a tidy dataset that summarizes the variables by SubjectID and Activity
makeTidy<-function()
{
  #Read labels from columns from the features.txt file, and eliminate () from the names
  columnLabels<-read.table("features.txt", header=FALSE)[,2]
  columnLabels<-gsub("\\(\\)",'', columnLabels)
  
  #Read activity labels from the activity_labels.txt file
  activityLabels<-read.table("activity_labels.txt", header=FALSE, col.names=c("ActivityID", "Activity"))
  
  #Read in training dataset & test dataset, and bind them together
  trainDataset<-getDataset("train/X_train.txt", "train/subject_train.txt", "train/y_train.txt", columnLabels)
  testDataset<-getDataset("test/X_test.txt", "test/subject_test.txt", "test/y_test.txt", columnLabels)
  dataSet<-rbind(trainDataset, testDataset)
  
  #Include only the mean and std columns, along with the ActivityID & SubjectID columns
  dataSet <- dataSet[, grep("mean$|mean\\.|std$|std\\.|ActivityID|SubjectID", names(dataSet))] 
  
  #Translate the ActivityIDs to the names of the activities.  Then delete the ActivityIDs, since they are no longer needed
  dataSet=merge(dataSet, activityLabels)
  dataSet<-dataSet[,-1]
  
  #Use lapply to create a tidy dataset of the means of each of the variables for each combination of SubjectID & Activity
  variables<-head(names(dataSet), -2)
  library(data.table)
  tidy <- data.table(dataSet)
  tidy<-tidy[, lapply(.SD, mean), .SDcols=variables, by=list(SubjectID, Activity)]

  #Order the data.table by SubjectID & Activity, then write to file
  tidy<-tidy[order(tidy$SubjectID, tidy$Activity),]
  write.table(tidy, "tidy.txt", row.names=FALSE)

}
