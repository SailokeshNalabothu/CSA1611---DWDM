age_interval <- c("1-5", "5-15", "15-20",
                  "20-50", "50-80", "80-110")
frequency <- c(200, 450, 300, 1500, 700, 44)
data <- data.frame(age_interval, frequency)
print(data)
N <- sum(frequency)
cat("Total frequency =", N, "\n")
half_N <- N / 2
cat("N/2 =", half_N, "\n")
cumulative_frequency <- cumsum(frequency)
print(cumulative_frequency)
median_class_index <- which(cumulative_frequency >= half_N)[1]
L <- c(1, 5, 15, 20, 50, 80)[median_class_index]
f <- frequency[median_class_index]
cf_previous <- if (median_class_index == 1) {
  0
} else {
  cumulative_frequency[median_class_index - 1]
}
h <- c(4, 10, 5, 30, 30, 30)[median_class_index]
median_value <- L + ((half_N - cf_previous) / f) * h
cat("Median class =", age_interval[median_class_index], "\n")
cat("Approximate median =", median_value, "\n")

