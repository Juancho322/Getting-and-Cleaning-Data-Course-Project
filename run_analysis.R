#                                                    ****GETTING AND CLEANING DATA COURSE PROJECT****

# run console, example:
# >executeAnalysis()
executeAnalysis <- function() {
  
# Folder structure and files:

# >dir()
# >dataset/test/subject_test.txt
# >dataset/test/X_test.txt 
# >dataset/test/y_test.txt
# >dataset/train/subject_train.txt
# >dataset/train/X_train.txt
# >dataset/train/y_train.txt

print("1. Merges the training and the test sets to create one data set.")
# Reading data for analysis.

dataSubjectTrain <- read.table("UCI HAR Dataset/train/subject_train.txt",header = FALSE)
dataSubjectTest  <- read.table("UCI HAR Dataset/test/subject_test.txt",header = FALSE)
 
dataActivityTest  <- read.table("UCI HAR Dataset/test/y_test.txt",header = FALSE)
dataActivityTrain <- read.table("UCI HAR Dataset/train/y_train.txt",header = FALSE)
  
dataFeaturesTest  <- read.table("UCI HAR Dataset/test/X_test.txt",header = FALSE)
dataFeaturesTrain <- read.table("UCI HAR Dataset/train/X_train.txt",header = FALSE)
  
# Merge subject, train and test
dataSubject <- rbind(dataSubjectTrain, dataSubjectTest)
dataActivity<- rbind(dataActivityTrain, dataActivityTest)  
dataFeatures<- rbind(dataFeaturesTrain, dataFeaturesTest)
  
# add title head
colnames(dataSubject) <- "subject"					
colnames(dataActivity) <- "activity"				
dataFeaturesNames <- read.table("UCI HAR Dataset/features.txt",head=FALSE)				  
colnames(dataFeatures) <- dataFeaturesNames$V2			
  
mergeColData <- cbind(dataFeatures,dataActivity,dataSubject)
  
print("2. Extracts only the measurements on the mean and standard deviation for each measurement.")
# Load only the columns that have "mean y std deviation".

colWithMeanSTD <- grep(".*mean.*|.*std.*", names(mergeColData), ignore.case=TRUE)				
requiredColumns <- c(colWithMeanSTD, 562, 563)
  
extractedData <- mergeColData[,requiredColumns]
# dim(extractedData)
  
print("3. Uses descriptive activity names to name the activities in the data set.")
# Modify the numerical value of "activity" column by its "description". Example: 2 = SITTING

activityLabels <- read.table("UCI HAR Dataset/activity_labels.txt",header = FALSE)
# head(activityLabels$V2[extractedData$activity],30)
extractedData$activity <- head(activityLabels$V2[extractedData$activity],length(extractedData$activity))			
  
print("4. Appropriately labels the data set with descriptive variable names.")
# Replace the "letter" that is in each column for each "description". Example: f = frequency.

names(extractedData)<-gsub("^t", "time", names(extractedData))
names(extractedData)<-gsub("^f", "frequency", names(extractedData))
names(extractedData)<-gsub("Acc", "Accelerometer", names(extractedData))
names(extractedData)<-gsub("Gyro", "Gyroscope", names(extractedData))
names(extractedData)<-gsub("Mag", "Magnitude", names(extractedData))
names(extractedData)<-gsub("BodyBody", "Body", names(extractedData))
  
names(extractedData)
  
print("5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.")
# Create a data set ordered according to "subject".

Data<-aggregate(. ~subject + activity, extractedData, mean)
Data<-Data[order(Data$subject,Data$activity),]
write.table(Data, file = "newdata_temp.txt",row.name=FALSE)
  
}
