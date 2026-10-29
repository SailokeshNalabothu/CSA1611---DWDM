
# Experiment 6: Normalization Methods

x <- 35

# (i) Min-max normalization
# Fill in the actual minimum and maximum ages
min_age <- NA
max_age <- NA

if (!is.na(min_age) && !is.na(max_age) &&
    max_age > min_age) {
  minmax_value <- (x - min_age) / (max_age - min_age)
  cat("Min-Max Normalization =", minmax_value, "\n")
} else {
  cat("Enter the actual minimum and maximum ages.\n")
}

# (ii) Z-score normalization
sd_age <- 12.94

# Enter the actual mean age from the hospital table
mean_age <- NA

if (!is.na(mean_age)) {
  zscore_value <- (x - mean_age) / sd_age
  cat("Z-Score Normalization =", zscore_value, "\n")
} else {
  cat("Enter the actual mean age.\n")
}

# (iii) Decimal scaling
decimal_value <- x / (10^2)

cat("Decimal Scaling =", decimal_value, "\n")
