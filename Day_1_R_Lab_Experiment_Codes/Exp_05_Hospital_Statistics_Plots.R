# Boxplots
par(mfrow = c(1, 2))
boxplot(age, main = "Boxplot of Age", ylab = "Age (years)")
boxplot(fat, main = "Boxplot of Body Fat", ylab = "Body Fat (%)")

# Scatterplot
par(mfrow = c(1, 1))
plot(age, fat,
     main = "Age vs Body Fat",
     xlab = "Age (years)",
     ylab = "Body Fat (%)",
     pch = 19)

# Q-Q plots
par(mfrow = c(1, 2))
qqnorm(age, main = "Q-Q Plot of Age")
qqline(age, col = "red")
qqnorm(fat, main = "Q-Q Plot of Body Fat")
qqline(fat, col = "red")

par(mfrow = c(1, 1))