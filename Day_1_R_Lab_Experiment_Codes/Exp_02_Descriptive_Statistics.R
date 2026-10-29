
# Experiment 2: Descriptive Statistics

age <- c(13, 15, 16, 16, 19, 20, 20, 21, 22,
         22, 25, 25, 25, 25, 30, 33, 33, 35,
         35, 35, 35, 36, 40, 45, 46, 52, 70)

# Mean
cat("Mean =", mean(age), "\n")

# Median
cat("Median =", median(age), "\n")

# Mode
mode_value <- function(x) {
  frequency <- table(x)
  as.numeric(names(frequency[frequency == max(frequency)]))
}
cat("Mode =", mode_value(age), "\n")

# Midrange
midrange <- (min(age) + max(age)) / 2
cat("Midrange =", midrange, "\n")

# First and third quartiles
cat("Q1 =", quantile(age, 0.25), "\n")
cat("Q3 =", quantile(age, 0.75), "\n")
