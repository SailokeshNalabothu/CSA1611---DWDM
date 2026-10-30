# Compare models

cat("Linear Regression R-squared:",
    summary(linear_model)$r.squared, "\n")

cat("Multiple Regression R-squared:",
    summary(multiple_model)$r.squared, "\n")