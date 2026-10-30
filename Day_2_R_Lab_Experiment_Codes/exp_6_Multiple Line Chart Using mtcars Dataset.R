
# Experiment 6: Multiple line chart using mtcars dataset

# Load the built-in dataset
data(mtcars)

# Plot mpg as the first line
plot(mtcars$mpg,
     type = "l",
     col = "blue",
     lwd = 2,
     ylim = range(c(mtcars$mpg, mtcars$qsec)),
     xlab = "Car Index",
     ylab = "Values",
     main = "Multiple Line Chart of mpg and qsec")

# Add qsec as the second line
lines(mtcars$qsec,
      col = "red",
      lwd = 2)

# Add legend
legend("topright",
       legend = c("mpg", "qsec"),
       col = c("blue", "red"),
       lwd = 2)
