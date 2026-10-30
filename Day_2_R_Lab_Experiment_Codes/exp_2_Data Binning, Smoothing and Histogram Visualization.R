
# Experiment 2: Data Smoothing Using Binning

# Enter the sorted dataset
data <- c(
  1, 1, 5, 5, 5, 5, 5, 8, 8, 10,
  10, 10, 10, 12, 14, 14, 14, 15, 15, 15,
  15, 15, 15, 18, 18, 18, 18, 18
)

# (i) Equal-frequency partitioning into 3 bins
bins <- split(data, rep(1:3, each = length(data)/3))

print("Equal-frequency bins:")
print(bins)

# (ii-a) Smoothing by bin means
bin_means <- lapply(bins, function(x) {
  rep(mean(x), length(x))
})

print("Smoothing by bin means:")
print(bin_means)

# (ii-b) Smoothing by bin boundaries
bin_boundaries <- lapply(bins, function(x) {
  lower <- min(x)
  upper <- max(x)
  sapply(x, function(value) {
    if (abs(value - lower) <= abs(value - upper)) {
      lower
    } else {
      upper
    }
  })
})

print("Smoothing by bin boundaries:")
print(bin_boundaries)

# (iii) Plot histogram
hist(data,
     main = "Histogram of All Electronics Prices",
     xlab = "Price ($)",
     ylab = "Frequency",
     col = "lightblue",
     border = "black")
