
# Experiment 9: Data Binning and Histogram

marks <- c(55, 60, 71, 63, 55, 65, 50, 55,
           58, 59, 61, 63, 65, 67, 71, 72, 75)

sorted_marks <- sort(marks)

# Equal-frequency partitioning
# 17 values are divided into bins of 6, 6 and 5 values

bin1 <- sorted_marks[1:6]
bin2 <- sorted_marks[7:12]
bin3 <- sorted_marks[13:17]

cat("Equal-Frequency Bins:\n")
cat("Bin 1:\n")
print(bin1)

cat("Bin 2:\n")
print(bin2)

cat("Bin 3:\n")
print(bin3)

# Equal-width partitioning
breaks <- seq(min(marks), max(marks),
              length.out = 4)

equal_width <- cut(
  marks,
  breaks = breaks,
  include.lowest = TRUE
)

cat("Equal-Width Bin Membership:\n")
print(data.frame(Marks = marks,
                 Bin = equal_width))

# Histograms
par(mfrow = c(1, 2))

hist(marks,
     breaks = breaks,
     include.lowest = TRUE,
     main = "Equal-Width Histogram",
     xlab = "Marks")

hist(marks,
     breaks = "Sturges",
     main = "Marks Histogram",
     xlab = "Marks")

par(mfrow = c(1, 1))
