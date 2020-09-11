Code Book for Tidy UCI HAR Dataset

Definition: The UCI HAR Dataset (University of California Irvine's dataset for Human Activity Recognition Using Smartphones Data Set) was the data used to create the tidy_dataset.txt. The source data is available at http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones.

tidy_dataset.txt includes the combined test and training data sets. 

README.md lists the process for cleaning and creating the tidy_dataset.txt.

The run_analysis.R script generates a combined subset of the original data to extract the mean and standard deviation features.

Original Experiments design
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.


Data Set Characteristics: Multivariate, Time-Series

Number of Instances: 10299

Number of Attributes: 561

Date Donated: 2012-12-10



Description of Variables:

The original data set includes the following files:

The following files are available for the train and test data. Their descriptions are equivalent. 



- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 



- 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 



- 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 



- 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 



Notes: 

======

- Features are normalized and bounded within [-1,1].

- Each feature vector is a row on the text file.

- The units used for the accelerations (total and body) are 'g's (gravity of earth -> 9.80665 m/seg2).

- The gyroscope units are rad/seg.

- A video of the experiment including an example of the 6 recorded activities with one of the participants can be seen in the following link: http://www.youtube.com/watch?v=XOEN9W05_4A



For more information about this dataset please contact: activityrecognition '@' smartlab.ws



License:

========

Use of this dataset in publications must be acknowledged by referencing the following publication [1] 



[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. A Public Domain Dataset for Human Activity Recognition Using Smartphones. 21th European Symposium on Artificial Neural Networks, Computational Intelligence and Machine Learning, ESANN 2013. Bruges, Belgium 24-26 April 2013. 



This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.







The variables in the tidy_dataset.txt are a subset of the variables described above.

1. TextSubject - identifies the volunteer participant and is an integer from 1 to 30.

2. Activity - identifies the activity to be performed with the values of walking, walkingupstairs, walkingdownstairs, sitting, standing, lying.

3. MeanBodyAccelerationXAxis - mean of the body acceleration on the X axis.

4. MeanBodyAccelerationYAxis - mean of the body acceleration on the Y axis.

5. MeanBodyAccelerationZAxis - mean of the body acceleration on the Z axis.

6. MeanGravityAccelerationXAxis - mean of the body acceleration on the X axis.

7. MeanGravityAccelerationYAxis - mean of the body acceleration on the Y axis.

8. MeanGravityAccelerationZAxis - mean of the body acceleration on the Z axis.

9. MeanBodyAccelerationJerkXAxis - mean of the body acceleration on the X axis, derived in time to obtain Jerk signals.

10. MeanBodyAccelerationJerkYAxis - mean of the body acceleration on the Y axis, derived in time to obtain Jerk signals.

11. MeanBodyAccelerationJerkZAxis - mean of the body acceleration on the Z axis, derived in time to obtain Jerk signals.

12. MeanBodyAngularVelocityXAxis - mean of the body angular velocity on the X axis.

13. MeanBodyAngularVelocityYAxis - mean of the body angular velocity on the Y axis.

14. MeanBodyAngularVelocityZAxis - mean of the body angular velocity on the Z axis.

15. MeanBodyAngularVelocityJerkXAxis - mean of the body angular velocity on the X axis, derived in time to obtain Jerk signals.

16. MeanBodyAngularVelocityJerkYAxis - mean of the body angular velocity on the Y axis, derived in time to obtain Jerk signals.

17. MeanBodyAngularVelocityJerkZAxis - mean of the body angular velocity on the Z axis, derived in time to obtain Jerk signals.

18. MeanBodyAccelerationMagnitude - mean of the body acceleration magnitude, calculated using the Euclidean norm.

19. MeanGravityAccelerationMagnitude - mean of the gravity acceleration magnitude.

20. MeanBodyAccelerationJerkMagnitude - mean of the body acceleration magnitude derived in time to obtain Jerk signals.

21. MeanBodyAngularVelocityMagnitude - mean of the angular velocity magnitude.

22. MeanBodyAngularVelocityJerkMagnitude - mean of the angular velocity magnitude derived in time to obtain Jerk signals.

23. MeanFFTBodyAccelerationXAxis - mean of the body acceleration on the X axis, with a Fast Fourier Transform (FFT) applied.

24. MeanFFTBodyAccelerationYAxis - mean of the body acceleration on the Y axis, with a Fast Fourier Transform (FFT) applied.

25. MeanFFTBodyAccelerationZAxis - mean of the body acceleration on the Z axis, with a Fast Fourier Transform (FFT) applied.

26. MeanFFTBodyAccelerationJerkXAxis - mean of the body acceleration on the X axis, derived in time to obtain Jerk signals, with a Fast Fourier Transform (FFT) applied.

27. MeanFFTBodyAccelerationJerkYAxis - mean of the body acceleration on the Y axis, derived in time to obtain Jerk signals, with a Fast Fourier Transform (FFT) applied.

28. MeanFFTBodyAccelerationJerkZAxis - mean of the body acceleration on the Z axis, derived in time to obtain Jerk signals, with a Fast Fourier Transform (FFT) applied.

29. MeanFFTBodyAngularVelocityXAxis - mean of the body angular velocity on the X axis, with a Fast Fourier Transform (FFT) applied.

30. MeanFFTBodyAngularVelocityYAxis - mean of the body angular velocity on the Y axis, with a Fast Fourier Transform (FFT) applied.

31. MeanFFTBodyAngularVelocityZAxis - mean of the body angular velocity on the Z axis, with a Fast Fourier Transform (FFT) applied.

32. MeanFFTBodyAccelerationMagnitude - mean of the body acceleration magnitude with a Fast Fourier Transform (FFT) applied.

33. MeanFFTBodyAccelerationJerkMagnitude - mean of the body acceleration magnitude derived in time to obtain Jerk signals, with a Fast Fourier Transform (FFT) applied.

34. MeanFFTBodyAngularVelocityMagnitude - mean of the body acceleration magnitude, with a Fast Fourier Transform (FFT) applied.

35. MeanFFTBodyAngularVelocityJerkMagnitude - mean of the angular velocity magnitude derived in time to obtain Jerk signals, with a Fast Fourier Transform (FFT) applied.

36. StandardDeviationBodyAccelerationXAxis - standard deviation of the body acceleration on the X axis.

37. StandardDeviationBodyAccelerationYAxis - standard deviation of the body acceleration on the Y axis.

38. StandardDeviationBodyAccelerationZAxis - standard deviation of the body acceleration on the Z axis.

39. StandardDeviationGravityAccelerationXAxis - standard deviation of the gravity acceleration on the X axis.

40. StandardDeviationGravityAccelerationYAxis - standard deviation of the gravity acceleration on the Y axis.

41. StandardDeviationGravityAccelerationZAxis - standard deviation of the gravity acceleration on the Z axis.

42. StandardDeviationBodyAccelerationJerkXAxis - standard deviation of the body acceleration on the X axis, derived in time to obtain the Jerk signals.

43. StandardDeviationBodyAccelerationJerkYAxis - standard deviation of the body acceleration on the Y axis, derived in time to obtain the Jerk signals.

44. StandardDeviationBodyAccelerationJerkZAxis - standard deviation of the body acceleration on the Z axis, derived in time to obtain the Jerk signals.

45. StandardDeviationBodyAngularVelocityXAxis - standard deviation of the body angular velocity on the X axis.

46. StandardDeviationBodyAngularVelocityYAxis - standard deviation of the body angular velocity on the Y axis.

47. StandardDeviationBodyAngularVelocityZAxis - standard deviation of the body angular velocity on the Z axis.

48. StandardDeviationBodyAngularVelocityJerkXAxis - standard deviation of the body angular velocity on the X axis, derived in time to obtain Jerk signals.

49. StandardDeviationBodyAngularVelocityJerkYAxis - standard deviation of the body angular velocity on the Y axis, derived in time to obtain Jerk signals.

50. StandardDeviationBodyAngularVelocityJerkZAxis - standard deviation of the body angular velocity on the Z axis, derived in time to obtain Jerk signals.

51. StandardDeviationBodyAccelerationMagnitude - standard deviation of the body acceleration magnitude, calculated using the Euclidean norm.

52. StandardDeviationGravityAccelerationMagnitude - standard deviation of the gravity acceleration magnitude.

53. StandardDeviationBodyAccelerationJerkMagnitude - standard deviation of the body acceleration magnitude, derived in time to obtain Jerk signals.

54. StandardDeviationBodyAngularVelocityMagnitude - standard deviation of the body velocity magnitude.

55. StandardDeviationBodyAngularVelocityJerkMagnitude - standard deviation of the body velocity magnitude, derived in time to obtain Jerk signals.

56. StandardDeviationFFTBodyAccelerationXAxis - standard deviation of the body acceleration on the X axis, with a Fast Fourier Transform (FFT) applied.

57. StandardDeviationFFTBodyAccelerationYAxis - standard deviation of the body acceleration on the Y axis, with a Fast Fourier Transform (FFT) applied.

58. StandardDeviationFFTBodyAccelerationZAxis - standard deviation of the body acceleration on the Z axis, with a Fast Fourier Transform (FFT) applied.

59. StandardDeviationFFTBodyAccelerationJerkXAxis - standard deviation of the body acceleration on the X axis, derived in time to obtain Jerk signals, with a Fast Fourier Transform (FFT) applied.

60. StandardDeviationFFTBodyAccelerationJerkYAxis - standard deviation of the body acceleration on the Y axis, derived in time to obtain Jerk signals, with a Fast Fourier Transform (FFT) applied.

61. StandardDeviationFFTBodyAccelerationJerkZAxis - standard deviation of the body acceleration on the Z axis, derived in time to obtain Jerk signals, with a Fast Fourier Transform (FFT) applied.

62. StandardDeviationFFTBodyAngularVelocityXAxis - standard deviation of the body angular velocity on the X axis, with a Fast Fourier Transform (FFT) applied.

63. StandardDeviationFFTBodyAngularVelocityYAxis - standard deviation of the body angular velocity on the Y axis, with a Fast Fourier Transform (FFT) applied.

64. StandardDeviationFFTBodyAngularVelocityZAxis - standard deviation of the body angular velocity on the Z axis, with a Fast Fourier Transform (FFT) applied.

65. StandardDeviationFFTBodyAccelerationMagnitude - standard deviation of the body acceleration magnitude with a Fast Fourier Transform (FFT) applied.

66. StandardDeviationFFTBodyAccelerationJerkMagnitude - standard deviation of the body acceleration magnitude derived in time to obtain Jerk signals, with a Fast Fourier Transform (FFT) applied.

67. StandardDeviationFFTBodyAngularVelocityMagnitude - standard deviation of the body acceleration magnitude, with a Fast Fourier Transform (FFT) applied.

68. StandardDeviationFFTBodyAngularVelocityJerkMagnitude - standard deviation of the angular velocity magnitude derived in time to obtain Jerk signals, with a Fast Fourier Transform (FFT) applied.





NOTE: The variables in the original data were replaced as follows:



BodyBody changed to Body

tBody changed to Body

fBody changed to FFTBody

tGravity changed to Gravity

fGravity changed to FFTGravity

Acc changed to Acceleration

Gyro changed to Angular Velocity

Mag changed to Magnitude

std changed to StandardDeviation

mean changed to Mean

X changed to XAxis

Y changed to YAxis

Z changed to ZAxis
