
# Experiment 7: Pencil Statistics

pencils <- c(9, 25, 23, 12, 11,
             6, 7, 8, 9, 10)

# Display vector
cat("Pencil Counts:\n")
print(pencils)

# Mean
cat("Mean =", mean(pencils), "\n")

# Median
cat("Median =", median(pencils), "\n")

# Mode
frequency <- table(pencils)
mode_value <- as.numeric(
  names(frequency[frequency == max(frequency)])
)

cat("Mode =", mode_value, "\n")
