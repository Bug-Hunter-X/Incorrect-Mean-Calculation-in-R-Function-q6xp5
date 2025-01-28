# R Bug: Incorrect Mean Calculation

This repository demonstrates a common error in R when calculating the mean of a vector: improper handling of empty vectors and NA values.

The `bug.R` file contains the erroneous function.  The `bugSolution.R` file provides the corrected version.

The bug is two-fold:
1.  The function doesn't correctly handle empty vectors. An empty numeric vector should return NA. An empty character vector should also return NA, but the function throws an error.
2. The function doesn't handle NA values appropriately, resulting in an incorrect mean (NA) instead of ignoring NA values and calculating the mean of the non-NA values. 

This example highlights the importance of robust error handling and data cleaning in R.