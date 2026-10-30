
# Experiment 1: Apriori Algorithm

# Install and load package
library(arules)

# Enter transaction dataset
transactions <- list(
  c("a", "d", "e"),
  c("a", "b", "c", "e"),
  c("a", "b", "d", "e"),
  c("a", "c", "d", "e"),
  c("b", "c", "e"),
  c("b", "d", "e"),
  c("c", "d"),
  c("a", "b", "c"),
  c("a", "d", "e"),
  c("a", "b", "e")
)

# Convert list into transaction format
trans <- as(transactions, "transactions")

# Display transactions
inspect(trans)

# Apply Apriori algorithm
frequent_itemsets <- apriori(
  trans,
  parameter = list(
    supp = 0.3,
    minlen = 1,
    target = "frequent itemsets"
  )
)

# Display frequent itemsets
inspect(frequent_itemsets)

# Generate association rules
rules <- apriori(
  trans,
  parameter = list(
    supp = 0.3,
    conf = 0.5,
    minlen = 2,
    target = "rules"
  )
)

# Display association rules
inspect(rules)

# Sort rules by confidence
sorted_rules <- sort(rules, by = "confidence")

inspect(sorted_rules)

# Plot frequent itemsets
itemFrequencyPlot(
  trans,
  topN = 10,
  type = "absolute",
  main = "Frequent Itemsets"
)
