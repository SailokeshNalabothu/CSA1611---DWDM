
# Experiment 9: Boxplot for Tennis Players' Scores

# Sample points scored by tennis players
points <- c(12, 15, 18, 20, 22, 24, 25, 27, 30, 32, 35, 80)

# Create boxplot
boxplot(points,
        main = "Boxplot of Tennis Players' Points",
        ylab = "Points Scored",
        col = "lightblue",
        border = "black",
        pch = 19)

# Calculate quartiles
Q1 <- quantile(points, 0.25)
Q3 <- quantile(points, 0.75)

# Calculate interquartile range
IQR_value <- IQR(points)

# Calculate outlier limits
lower_limit <- Q1 - 1.5 * IQR_value
upper_limit <- Q3 + 1.5 * IQR_value

# Display results
cat("Q1:", Q1, "\n")
cat("Q3:", Q3, "\n")
cat("IQR:", IQR_value, "\n")
cat("Lower limit:", lower_limit, "\n")
cat("Upper limit:", upper_limit, "\n")

# Identify outliers
outliers <- points[points < lower_limit | points > upper_limit]
cat("Outliers:", outliers, "\n")
