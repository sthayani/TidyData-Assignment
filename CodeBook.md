# Code book for Coursera *Getting and Cleaning Data* course project
### Each row contains activity measurements for 30 different subjects(ranging from 1 - 30)
### Columns in the dataset "ActivityData" are 
* 1. Sub  - represents the subject id
* 2. Range of ativity measurements with Accelerometer and Gyro. 
      - All the accelerometer Measurements are in th units of g
      - All the gyro measurements are in the units of r/s-2 
      - All the time domain measurements starts with t and the frequency domain measurements starts with f
      - Mean measurements will have the word "mean" in it. and Standardeviations will have the word std
      - The measurements cover all the axises(dimentions) X,Y or Z. That will be indicated in the Variable name.
 * 3. Ativity represents which activity the measurement variable corresponds to.
     	Activity identifier, string with 6 possible values: 
	   - `WALKING`: subject was walking
	   - `WALKING_UPSTAIRS`: subject was walking upstairs
	   - `WALKING_DOWNSTAIRS`: subject was walking downstairs
	   - `SITTING`: subject was sitting
	   - `STANDING`: subject was standing
	   - `LAYING`: subject was laying
### Columns in the dataset "ActivityMeanData" are
* 1. Sub  - represents the subject id
* 2. Mean of Range of ativity measurements from the preious datset (per subject per activity)
* 3. Ativity represents which activity the measurement variable corresponds to.
     	Activity identifier, string with 6 possible values: 
	   - `WALKING`: subject was walking
	   - `WALKING_UPSTAIRS`: subject was walking upstairs
	   - `WALKING_DOWNSTAIRS`: subject was walking downstairs
	   - `SITTING`: subject was sitting
	   - `STANDING`: subject was standing
	   - `LAYING`: subject was laying
