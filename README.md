# **GETTING AND CLEANING DATA COURSE PROJECT**

## 1. Analysis Files
To carry out this project the following **analysis files** are require:

#### ♦ [Work repository](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).
Provides technical and informative content for the execution of the project; as a brochure or s set of references.

#### ♦ [UCI HAR Dataset](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip).
It is the set of data used in the project; which then will be analyzed.

#### ♦ run_analysis.R
Includes the code to carry out the project. Within the instructions to download and to unzip the work file **UCI HAR Dataset**, and then 
sort the data according to criteria established by the user.

#### ♦ Tidy_DataSet.txt
It consists of the file that has all the information resulting from the analysis, including all the specifications of the case. It is generated
from **run_analysis.R**. The file **CodeBook.md** is responsible for providing more detailed information.

#### ♦ CodeBook.md
This file contains the data to indicate, all the variables and summaries calculated, along with units, and any other
relevant information. That is, it explains the work done by `all files` mentioned above.

## 2. Scheme
To summarize graphically in the joint work of the analysis files, we have:

                                   Work repository       → → → → → → → → → → →  
                                          ↓                                                ↓
                                          ↓                                                ↓
                                          ↓                                                ↓
                                   UCI HAR Dataset → →  run_analysis.R   → → → →  CodeBook.md
                                                                ↓                          ↑
                                                                ↓                          ↑
                                                         Tidy_DataSet.txt   → → → → → 

