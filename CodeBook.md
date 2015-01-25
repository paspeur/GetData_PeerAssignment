Tidy Datasets for Human Activity Recognition Using Smartphones | Codebook
===

## Variables

### Features

#### Feature selection in the raw dataset

This section adapts the codebook from the original dataset as **feature variables have been renamed to be more descriptive**.

> The features selected for the raw dataset come from the accelerometer and gyroscope 3-axial raw signals ``Time.Accelerometer.XYZ`` and ``Time.Gyroscope.XYZ``.  These time domain signals were captured at a constant rate of 50 Hz.  Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise.  Similarly, the acceleration signal was then separated into body and gravity acceleration signals ``Time.BodyAccelerometer.XYZ`` and ``Time.GravityAccelerometer.XYZ``) using another low pass Butterworth filter with a corner frequency of 0.3 Hz.

> Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (``Time.BodyAccelerometerJerk.XYZ`` and ``Time.BodyGyroscopeJerk.XYZ``).  Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (``Time.BodyAccelerometerMagnitude``, ``Time.GravityAccelerometerMagnitude``, ``Time.BodyAccelerometerJerkMagnitude``, ``Time.BodyGyroscopeMagnitude``, ``Time.BodyGyroscopeJerkMagnitude``).

> Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing ``Frequency.BodyAccelerometer.XYZ``, ``Frequency.BodyAccelerometerJerk.XYZ``, ``Frequency.BodyGyroscope.XYZ``, ``Frequency.BodyAccelerometerJerkMagnitude``, ``Frequency.BodyGyroscopeMagnitude``, ``Frequency.BodyGyroscopeJerkMagnitude``.

> These signals were used to estimate variables of the feature vector for each pattern: '``.XYZ``' is used to denote 3-axial signals in the X, Y and Z directions.

> * ``Time.BodyAccelerometer.XYZ``
> * ``Time.GravityAccelerometer.XYZ``
> * ``Time.BodyAccelerometerJerk.XYZ``
> * ``Time.BodyGyroscope.XYZ``
> * ``Time.BodyGyroscopeJerk.XYZ``
> * ``Time.BodyAccelerometerMagnitude``
> * ``Time.GravityAccelerometerMagnitude``
> * ``Time.BodyAccelerometerJerkMagnitude``
> * ``Time.BodyGyroscopeMagnitude``
> * ``Time.BodyGyroscopeJerkMagnitude``
> * ``Frequency.BodyAccelerometer.XYZ``
> * ``Frequency.BodyAccelerometerJerk.XYZ``
> * ``Frequency.BodyGyroscope.XYZ``
> * ``Frequency.BodyAccelerometerMagnitude``
> * ``Frequency.BodyAccelerometerJerkMagnitude``
> * ``Frequency.BodyGyroscopeMagnitude``
> * ``Frequency.BodyGyroscopeJerkMagnitude``

> The set of variables that were estimated from these signals and that are **included** in the tidy datasets are:

> * ``mean``: Mean value
> * ``std``: Standard deviation
> * ``meanFreq``: Weighted average of the frequency components to obtain a mean frequency

> Other set of variables also estimated from these signals but **not included** in the tidy datasets are:

> * mad(): Median absolute deviation
> * max(): Largest value in array
> * min(): Smallest value in array
> * sma(): Signal magnitude area
> * energy(): Energy measure.  Sum of the squares divided by the number of values
> * iqr(): Interquartile range
> * entropy(): Signal entropy
> * arCoeff(): Autorregresion coefficients with Burg order equal to 4
> * correlation(): correlation coefficient between two signals
> * maxInds(): index of the frequency component with largest magnitude
> * skewness(): skewness of the frequency domain signal
> * kurtosis(): kurtosis of the frequency domain signal
> * bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window
> * angle(): Angle between to vectors

> Additional vectors obtained by averaging the signals in a signal window sample.  These are used on the angle() variable:

> * ``Time.BodyAccelerometerMean``
> * ``Time.BodyAccelerometerJerkMean``
> * ``Time.BodyGyroscopeMean``
> * ``Time.BodyGyroscopeJerkMean``
> * gravityMean **(not included in our extracted tidy datasets)**

> Notes: 
> ======
> * Features are normalized and bounded within [-1,1].
> * Each feature vector is a row on the text file.

#### Features extracted in the tidy datasets

Both datasets were created using a subset feature set from the raw data above.  Below is the list of feature variables used in the tidy datasets and the mapping to their original names.



<!-- html table generated in R 3.1.2 by xtable 1.7-4 package -->
<!-- Sun Jan 25 13:43:01 2015 -->
<table border=1>
<tr> <th> Feature Name (in the tidy datasets) </th> <th> Feature Name (from the raw data) </th>  </tr>
  <tr> <td> Time.BodyAccelerometer.mean.X </td> <td> tBodyAcc-mean()-X </td> </tr>
  <tr> <td> Time.BodyAccelerometer.mean.Y </td> <td> tBodyAcc-mean()-Y </td> </tr>
  <tr> <td> Time.BodyAccelerometer.mean.Z </td> <td> tBodyAcc-mean()-Z </td> </tr>
  <tr> <td> Time.BodyAccelerometer.sd.X </td> <td> tBodyAcc-std()-X </td> </tr>
  <tr> <td> Time.BodyAccelerometer.sd.Y </td> <td> tBodyAcc-std()-Y </td> </tr>
  <tr> <td> Time.BodyAccelerometer.sd.Z </td> <td> tBodyAcc-std()-Z </td> </tr>
  <tr> <td> Time.GravityAccelerometer.mean.X </td> <td> tGravityAcc-mean()-X </td> </tr>
  <tr> <td> Time.GravityAccelerometer.mean.Y </td> <td> tGravityAcc-mean()-Y </td> </tr>
  <tr> <td> Time.GravityAccelerometer.mean.Z </td> <td> tGravityAcc-mean()-Z </td> </tr>
  <tr> <td> Time.GravityAccelerometer.sd.X </td> <td> tGravityAcc-std()-X </td> </tr>
  <tr> <td> Time.GravityAccelerometer.sd.Y </td> <td> tGravityAcc-std()-Y </td> </tr>
  <tr> <td> Time.GravityAccelerometer.sd.Z </td> <td> tGravityAcc-std()-Z </td> </tr>
  <tr> <td> Time.BodyAccelerometerJerk.mean.X </td> <td> tBodyAccJerk-mean()-X </td> </tr>
  <tr> <td> Time.BodyAccelerometerJerk.mean.Y </td> <td> tBodyAccJerk-mean()-Y </td> </tr>
  <tr> <td> Time.BodyAccelerometerJerk.mean.Z </td> <td> tBodyAccJerk-mean()-Z </td> </tr>
  <tr> <td> Time.BodyAccelerometerJerk.sd.X </td> <td> tBodyAccJerk-std()-X </td> </tr>
  <tr> <td> Time.BodyAccelerometerJerk.sd.Y </td> <td> tBodyAccJerk-std()-Y </td> </tr>
  <tr> <td> Time.BodyAccelerometerJerk.sd.Z </td> <td> tBodyAccJerk-std()-Z </td> </tr>
  <tr> <td> Time.BodyGyroscope.mean.X </td> <td> tBodyGyro-mean()-X </td> </tr>
  <tr> <td> Time.BodyGyroscope.mean.Y </td> <td> tBodyGyro-mean()-Y </td> </tr>
  <tr> <td> Time.BodyGyroscope.mean.Z </td> <td> tBodyGyro-mean()-Z </td> </tr>
  <tr> <td> Time.BodyGyroscope.sd.X </td> <td> tBodyGyro-std()-X </td> </tr>
  <tr> <td> Time.BodyGyroscope.sd.Y </td> <td> tBodyGyro-std()-Y </td> </tr>
  <tr> <td> Time.BodyGyroscope.sd.Z </td> <td> tBodyGyro-std()-Z </td> </tr>
  <tr> <td> Time.BodyGyroscopeJerk.mean.X </td> <td> tBodyGyroJerk-mean()-X </td> </tr>
  <tr> <td> Time.BodyGyroscopeJerk.mean.Y </td> <td> tBodyGyroJerk-mean()-Y </td> </tr>
  <tr> <td> Time.BodyGyroscopeJerk.mean.Z </td> <td> tBodyGyroJerk-mean()-Z </td> </tr>
  <tr> <td> Time.BodyGyroscopeJerk.sd.X </td> <td> tBodyGyroJerk-std()-X </td> </tr>
  <tr> <td> Time.BodyGyroscopeJerk.sd.Y </td> <td> tBodyGyroJerk-std()-Y </td> </tr>
  <tr> <td> Time.BodyGyroscopeJerk.sd.Z </td> <td> tBodyGyroJerk-std()-Z </td> </tr>
  <tr> <td> Time.BodyAccelerometerMagnitude.mean </td> <td> tBodyAccMag-mean() </td> </tr>
  <tr> <td> Time.BodyAccelerometerMagnitude.sd </td> <td> tBodyAccMag-std() </td> </tr>
  <tr> <td> Time.GravityAccelerometerMagnitude.mean </td> <td> tGravityAccMag-mean() </td> </tr>
  <tr> <td> Time.GravityAccelerometerMagnitude.sd </td> <td> tGravityAccMag-std() </td> </tr>
  <tr> <td> Time.BodyAccelerometerJerkMagnitude.mean </td> <td> tBodyAccJerkMag-mean() </td> </tr>
  <tr> <td> Time.BodyAccelerometerJerkMagnitude.sd </td> <td> tBodyAccJerkMag-std() </td> </tr>
  <tr> <td> Time.BodyGyroscopeMagnitude.mean </td> <td> tBodyGyroMag-mean() </td> </tr>
  <tr> <td> Time.BodyGyroscopeMagnitude.sd </td> <td> tBodyGyroMag-std() </td> </tr>
  <tr> <td> Time.BodyGyroscopeJerkMagnitude.mean </td> <td> tBodyGyroJerkMag-mean() </td> </tr>
  <tr> <td> Time.BodyGyroscopeJerkMagnitude.sd </td> <td> tBodyGyroJerkMag-std() </td> </tr>
  <tr> <td> Frequency.BodyAccelerometer.mean.X </td> <td> fBodyAcc-mean()-X </td> </tr>
  <tr> <td> Frequency.BodyAccelerometer.mean.Y </td> <td> fBodyAcc-mean()-Y </td> </tr>
  <tr> <td> Frequency.BodyAccelerometer.mean.Z </td> <td> fBodyAcc-mean()-Z </td> </tr>
  <tr> <td> Frequency.BodyAccelerometer.sd.X </td> <td> fBodyAcc-std()-X </td> </tr>
  <tr> <td> Frequency.BodyAccelerometer.sd.Y </td> <td> fBodyAcc-std()-Y </td> </tr>
  <tr> <td> Frequency.BodyAccelerometer.sd.Z </td> <td> fBodyAcc-std()-Z </td> </tr>
  <tr> <td> Frequency.BodyAccelerometer.meanFrequency.X </td> <td> fBodyAcc-meanFreq()-X </td> </tr>
  <tr> <td> Frequency.BodyAccelerometer.meanFrequency.Y </td> <td> fBodyAcc-meanFreq()-Y </td> </tr>
  <tr> <td> Frequency.BodyAccelerometer.meanFrequency.Z </td> <td> fBodyAcc-meanFreq()-Z </td> </tr>
  <tr> <td> Frequency.BodyAccelerometerJerk.mean.X </td> <td> fBodyAccJerk-mean()-X </td> </tr>
  <tr> <td> Frequency.BodyAccelerometerJerk.mean.Y </td> <td> fBodyAccJerk-mean()-Y </td> </tr>
  <tr> <td> Frequency.BodyAccelerometerJerk.mean.Z </td> <td> fBodyAccJerk-mean()-Z </td> </tr>
  <tr> <td> Frequency.BodyAccelerometerJerk.sd.X </td> <td> fBodyAccJerk-std()-X </td> </tr>
  <tr> <td> Frequency.BodyAccelerometerJerk.sd.Y </td> <td> fBodyAccJerk-std()-Y </td> </tr>
  <tr> <td> Frequency.BodyAccelerometerJerk.sd.Z </td> <td> fBodyAccJerk-std()-Z </td> </tr>
  <tr> <td> Frequency.BodyAccelerometerJerk.meanFrequency.X </td> <td> fBodyAccJerk-meanFreq()-X </td> </tr>
  <tr> <td> Frequency.BodyAccelerometerJerk.meanFrequency.Y </td> <td> fBodyAccJerk-meanFreq()-Y </td> </tr>
  <tr> <td> Frequency.BodyAccelerometerJerk.meanFrequency.Z </td> <td> fBodyAccJerk-meanFreq()-Z </td> </tr>
  <tr> <td> Frequency.BodyGyroscope.mean.X </td> <td> fBodyGyro-mean()-X </td> </tr>
  <tr> <td> Frequency.BodyGyroscope.mean.Y </td> <td> fBodyGyro-mean()-Y </td> </tr>
  <tr> <td> Frequency.BodyGyroscope.mean.Z </td> <td> fBodyGyro-mean()-Z </td> </tr>
  <tr> <td> Frequency.BodyGyroscope.sd.X </td> <td> fBodyGyro-std()-X </td> </tr>
  <tr> <td> Frequency.BodyGyroscope.sd.Y </td> <td> fBodyGyro-std()-Y </td> </tr>
  <tr> <td> Frequency.BodyGyroscope.sd.Z </td> <td> fBodyGyro-std()-Z </td> </tr>
  <tr> <td> Frequency.BodyGyroscope.meanFrequency.X </td> <td> fBodyGyro-meanFreq()-X </td> </tr>
  <tr> <td> Frequency.BodyGyroscope.meanFrequency.Y </td> <td> fBodyGyro-meanFreq()-Y </td> </tr>
  <tr> <td> Frequency.BodyGyroscope.meanFrequency.Z </td> <td> fBodyGyro-meanFreq()-Z </td> </tr>
  <tr> <td> Frequency.BodyAccelerometerMagnitude.mean </td> <td> fBodyAccMag-mean() </td> </tr>
  <tr> <td> Frequency.BodyAccelerometerMagnitude.sd </td> <td> fBodyAccMag-std() </td> </tr>
  <tr> <td> Frequency.BodyAccelerometerMagnitude.meanFrequency </td> <td> fBodyAccMag-meanFreq() </td> </tr>
  <tr> <td> Frequency.BodyBodyAccelerometerJerkMagnitude.mean </td> <td> fBodyBodyAccJerkMag-mean() </td> </tr>
  <tr> <td> Frequency.BodyBodyAccelerometerJerkMagnitude.sd </td> <td> fBodyBodyAccJerkMag-std() </td> </tr>
  <tr> <td> Frequency.BodyBodyAccelerometerJerkMagnitude.meanFrequency </td> <td> fBodyBodyAccJerkMag-meanFreq() </td> </tr>
  <tr> <td> Frequency.BodyBodyGyroscopeMagnitude.mean </td> <td> fBodyBodyGyroMag-mean() </td> </tr>
  <tr> <td> Frequency.BodyBodyGyroscopeMagnitude.sd </td> <td> fBodyBodyGyroMag-std() </td> </tr>
  <tr> <td> Frequency.BodyBodyGyroscopeMagnitude.meanFrequency </td> <td> fBodyBodyGyroMag-meanFreq() </td> </tr>
  <tr> <td> Frequency.BodyBodyGyroscopeJerkMagnitude.mean </td> <td> fBodyBodyGyroJerkMag-mean() </td> </tr>
  <tr> <td> Frequency.BodyBodyGyroscopeJerkMagnitude.sd </td> <td> fBodyBodyGyroJerkMag-std() </td> </tr>
  <tr> <td> Frequency.BodyBodyGyroscopeJerkMagnitude.meanFrequency </td> <td> fBodyBodyGyroJerkMag-meanFreq() </td> </tr>
   </table>

### Subject

The variable `Subject` is a unique identifier representing for subject of the experiment.  The study used 30 subjects.

### Activity

The variable `Activity` represents the subjects' activity for the observation.  The study used 6 activity levels that are:


```
## [1] STANDING           SITTING            LAYING            
## [4] WALKING            WALKING_DOWNSTAIRS WALKING_UPSTAIRS  
## 6 Levels: WALKING WALKING_UPSTAIRS WALKING_DOWNSTAIRS ... LAYING
```

### First dataset

The first dataset can be loaded with the following command:


```r
df <- read.table(file = 'first-dataset.txt',
	header = TRUE,
	stringsAsFactors = TRUE)
```

This dataset has extracted by merging both training and testing sets.  Each set was itself a list of 3 files that stored subject, features and activity.  The dataset include all observations of the raw data and a feature subset for a total of 10299 rows and 81 columns.

### Second dataset

The second dataset can be loaded with the following command:


```r
df <- read.table(file = 'second-dataset.txt',
	header = TRUE,
	stringsAsFactors = TRUE)
```

This second dataset is derived from the first dataset computing the average of each feature variable for each activity and each subject.  It has 180 rows and 81 columns.
