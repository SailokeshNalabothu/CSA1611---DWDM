
# Experiment 7: Water Hardness and Mortality

# Install HSAUR (run only if not already installed)
install.packages("HSAUR")

# Load the package
library(HSAUR)

# Load the dataset
data("water", package = "HSAUR")

# Display the dataset
head(water)

# Plot mortality against hardness
plot(mortality ~ hardness,
     data = water,
     main = "Mortality vs Water Hardness",
     xlab = "Water Hardness",
     ylab = "Mortality",
     pch = 19,
     col = "blue")

# Fit linear regression model
model <- lm(mortality ~ hardness, data = water)

# Add regression line
abline(model, col = "red", lwd = 2)

# Display regression results
summary(model)

# Predict mortality for hardness = 88
new_data <- data.frame(hardness = 88)
prediction <- predict(model, newdata = new_data)

cat("Predicted mortality at hardness 88:", prediction, "\n")
