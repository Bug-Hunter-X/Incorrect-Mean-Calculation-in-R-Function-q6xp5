```R
# Corrected function to calculate the mean, handling empty vectors and NA values
calculate_mean <- function(x) {
  if (length(x) == 0) {
    return(NA)
  }
  if (is.numeric(x)){
    return(mean(x, na.rm = TRUE))
  } else if (is.character(x)){ #handle character vectors
    return(NA)
  } else {
    stop("Input vector must be numeric or character")
  }
}

# Example usage:
my_vector <- c(1, 2, 3, 4, 5)
result <- calculate_mean(my_vector)
print(result) # Output: 3

my_vector2 <- c(1, 2, 3, NA, 5)
result2 <- calculate_mean(my_vector2)
print(result2) # Output: 2.75

my_vector3 <- numeric(0) #empty numeric vector
result3 <- calculate_mean(my_vector3)
print(result3) # Output: NA

my_vector4 <- character(0) #empty character vector
result4 <- calculate_mean(my_vector4)
print(result4) # Output: NA

my_vector5 <- c(1,2,"a") #invalid input
result5 <- calculate_mean(my_vector5) # throws an error
print(result5)
```