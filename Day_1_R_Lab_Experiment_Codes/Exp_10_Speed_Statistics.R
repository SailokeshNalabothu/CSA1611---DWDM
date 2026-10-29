
# Experiment 10: Speed Statistics

speed <- c(78.3, 81.8, 82, 74.2, 83.4,
           84.5, 82.9, 77.5, 80.9, 70.6)

# First and third quartiles
q1 <- quantile(speed, 0.25)
q3 <- quantile(speed, 0.75)

# Interquartile range
iqr_value <- IQR(speed)

# Standard deviation
sd_value <- sd(speed)

# Display results
cat("Q1 =", q1, "\n")
cat("Q3 =", q3, "\n")
cat("Interquartile Range =", iqr_value, "\n")
cat("Standard Deviation =", sd_value, "\n")
