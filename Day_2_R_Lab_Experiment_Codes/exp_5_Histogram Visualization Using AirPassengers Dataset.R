
# Experiment 5: Histogram of AirPassengers dataset

# Load the built-in dataset
data("AirPassengers")

# Create histogram
hist(AirPassengers,
     breaks = seq(100, 700, by = 150),
     main = "Histogram of AirPassengers Dataset",
     xlab = "Number of Passengers",
     ylab = "Frequency",
     col = "lightblue",
     border = "black",
     xlim = c(100, 700),
     right = TRUE)
