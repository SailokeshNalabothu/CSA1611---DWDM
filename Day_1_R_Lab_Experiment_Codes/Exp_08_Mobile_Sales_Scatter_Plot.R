
# Experiment 8: Mobile Sales Scatter Plot

# Number of mobile phones sold
x <- c(4, 1, 5, 7, 10, 2, 50, 25, 90, 36)

# Corresponding money values
y <- c(12, 5, 13, 19, 31, 7, 153, 72, 275, 110)

# Draw scatter plot
plot(x, y,
     main = "Mobile Phones Sold vs Money",
     xlab = "Number of Mobile Phones Sold",
     ylab = "Money",
     pch = 19,
     col = "blue")

grid()
