
# Experiment 4: Data Smoothing

x <- c(11, 13, 13, 15, 15, 16, 19, 20,
       20, 20, 21, 21, 22, 23, 24, 30,
       40, 45, 45, 45, 71, 72, 73, 75)

x <- sort(x)

# Divide into 3 bins of 8 values
bins <- split(x, rep(1:3, each = 8))

cat("Original Data:\n")
print(x)

cat("\nBins:\n")
print(bins)

# Smoothing by bin mean
bin_mean <- unlist(lapply(bins, function(b) {
  rep(mean(b), length(b))
}))

# Smoothing by bin median
bin_median <- unlist(lapply(bins, function(b) {
  rep(median(b), length(b))
}))

# Smoothing by bin boundaries
bin_boundaries <- unlist(lapply(bins, function(b) {
  low <- min(b)
  high <- max(b)
  
  sapply(b, function(v) {
    if (abs(v - low) <= abs(v - high)) {
      low
    } else {
      high
    }
  })
}))

result <- data.frame(
  Original = x,
  Bin_Mean = bin_mean,
  Bin_Median = bin_median,
  Bin_Boundaries = bin_boundaries
)

print(result)
