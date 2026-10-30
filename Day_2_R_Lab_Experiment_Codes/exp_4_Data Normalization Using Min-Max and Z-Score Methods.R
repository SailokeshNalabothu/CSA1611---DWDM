
# Experiment 4: Data Normalization

# Given data
x <- c(200, 300, 400, 600, 1000)

# (a) Min-Max Normalization (range 0 to 1)
min_max <- (x - min(x)) / (max(x) - min(x))

cat("Min-Max Normalization:\n")
print(min_max)

# (b) Z-Score Normalization
z_score <- (x - mean(x)) / sd(x)

cat("Z-Score Normalization:\n")
print(z_score)

# Display results together
result <- data.frame(
  Original_Data = x,
  Min_Max = min_max,
  Z_Score = z_score
)

print(result)
