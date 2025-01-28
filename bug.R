```R
# This function attempts to calculate the mean of a vector, but it has a bug.
calculate_mean <- function(x) {
  if (length(x) == 0) {
    return(NA)  # Handle empty vector
  }
  sum(x) / length(x)
}

# Example usage:
my_vector <- c(1, 2, 3, 4, 5)
result <- calculate_mean(my_vector)
print(result) # This will work fine

my_vector2 <- c(1,2,3,NA,5) #introduces a NA value
result2<- calculate_mean(my_vector2)
print(result2) # This will give NA but not the actual mean, excluding NA 

my_vector3 <- character(0) # empty character vector
result3 <- calculate_mean(my_vector3)
print(result3) # This will give an error, not NA
```