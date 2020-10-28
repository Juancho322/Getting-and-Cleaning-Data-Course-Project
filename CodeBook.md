# **GETTING AND CLEANING DATA COURSE PROJECT**

# **"CODEBOOK"**

## 1. Specifications
The following section details the *columns* that are part of the analysis file **Tidy_DataSet.txt**

### 1.1. Subject
It is the identification of who participates in the activity. Usually first and last name.

### 2.1. Activity
It is the set of activities carried out by the participant, which will be subject to measurement with certain **parameters**.
These are:

                LAYING
                SITTING
                STANDING
                WALKING
                WALKING_DOWNSTAIRS
                WALKING_UPSTAIRS

### 3.1. Parameters
These are measurements of each of the activities. Which are: **time**, **frequency** and **angular**.

**Time:**

                timeBodyAccelerometer
                timeGravityAccelerometer
                timeBodyAccelerometerJerk
                timeBodyGyroscope
                timeBodyGyroscopeJerk
                timeBodyAccelerometerMagnitude
                timeGravityAccelerometerMagnitude
                timeBodyAccelerometerJerkMagnitude
                timeBodyGyroscopeMagnitude
                timeBodyGyroscopeJerkMagnitude

**Frequency:**

                frequencyBodyAccelerometer
                frequencyBodyAccelerometerJerk   
                frequencyBodyGyroscope
                frequencyBodyAccelerometerMagnitude
                frequencyBodyAccelerometerJerkMagnitude
                frequencyBodyGyroscopeMagnitude
                frequencyBodyGyroscopeJerkMagnitude

**Angular:**

                angle(tBodyAccelerometerMean,gravity)
                angle(tBodyAccelerometerJerkMean,gravityMean)
                angle(tBodyGyroscopeMean,gravityMean)
                angle(tBodyGyroscopeJerkMean,gravityMean)
                angle(X,gravityMean)
                angle(Y,gravityMean)
                angle(Z,gravityMean)

The measurement parameters have been made in the **time** domain as in the **frequency** domain. For which, an accelerometer and a gyroscope are used, both of the 
triaxial type. Thus obtaining values in coordinates **X**, **Y**, **Z**. The **time** is expressed in seconds **(s)** and **frequency** in hertz **(Hz)**.

On the other hand, the **angular** values result from the comparison between two measurements, the result of which is expressed in radians **(rad)**.

Next to each parameter, the type of deviation made in the analysis is indicated. These are: **mean** `mean()` and **stantard** `std()`.

Finally, the combinations are established according to the parameter, types of deviation and variable:

                timeBodyAccelerometer -mean() -X
                frequencyBodyGyroscope -std() -Y      
                frequencyBodyAccelerometerJerk -meanFreq() -Z

The angular values, which are of this type:

                angle(tBodyGyroscopeMean,gravityMean)

Have the component `gravityMean`. It is because the accelerometer determines the aceleration caused by gravity acting on the body.

## 2. References
• Accelerometer and gyroscope:
  [Sensors-definition](https://www.gsmarena.com/glosary.php3?term=sensors).

• Data for the project: 
  [UCI HAR Dataset](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip).

