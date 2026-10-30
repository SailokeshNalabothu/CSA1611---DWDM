
# Experiment 10: Blood Pressure vs Age

# Download the diabetes dataset
url <- "https://raw.githubusercontent.com/plotly/datasets/master/diabetes.csv"

download.file(url, "diabetes.csv", mode = "wb")

# Load the dataset
diabetes <- read.csv("diabetes.csv")

# Check column names
head(diabetes)
names(diabetes)

# Scatterplot: Blood Pressure vs Age
plot(diabetes$Age, diabetes$BloodPressure,
     main = "Blood Pressure vs Age",
     xlab = "Age",
     ylab = "Blood Pressure",
     col = "blue",
     pch = 19)

# Add regression line
abline(lm(BloodPressure ~ Age, data = diabetes),
       col = "red", lwd = 2)

# Create age groups
diabetes$AgeGroup <- cut(
  diabetes$Age,
  breaks = c(0, 20, 30, 40, 50, 60, Inf),
  labels = c("0-20", "21-30", "31-40",
             "41-50", "51-60", "Above 60"),
  include.lowest = TRUE
)

# Calculate average blood pressure by age group
avg_bp <- aggregate(
  BloodPressure ~ AgeGroup,
  data = diabetes,
  FUN = mean
)

print(avg_bp)

# Bar chart
barplot(avg_bp$BloodPressure,
        names.arg = avg_bp$AgeGroup,
        main = "Average Blood Pressure by Age Group",
        xlab = "Age Group",
        ylab = "Average Blood Pressure",
        col = "lightblue",
        las = 2)
