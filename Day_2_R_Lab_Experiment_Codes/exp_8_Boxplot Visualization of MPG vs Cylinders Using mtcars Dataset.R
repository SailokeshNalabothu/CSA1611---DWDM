
# Experiment 8: Boxplot of MPG and Cylinders

# Load the built-in dataset
data(mtcars)

# Convert cyl into a factor
mtcars$cyl <- as.factor(mtcars$cyl)

# Create boxplot
boxplot(mpg ~ cyl,
        data = mtcars,
        main = "Boxplot of MPG vs Number of Cylinders",
        xlab = "Number of Cylinders",
        ylab = "Miles per Gallon (MPG)",
        col = c("lightblue", "lightgreen", "lightpink"),
        border = "black")

# Display summary statistics
by(mtcars$mpg, mtcars$cyl, summary)
