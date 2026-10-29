
# Experiment 3: Data Normalization

x <- c(200, 300, 400, 600, 1000)

# Min-max normalization
minmax <- (x - min(x)) / (max(x) - min(x))

# Z-score normalization
zscore <- (x - mean(x)) / sd(x)

# Display results
result <- data.frame(
  Original = x,
  Min_Max_Normalization = minmax,
  Z_Score_Normalization = zscore
)

print(result)

cat("Mean =", mean(x), "\n")
cat("Standard Deviation =", sd(x), "\n")
