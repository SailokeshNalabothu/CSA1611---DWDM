
# Experiment 2: Association Rules and Frequent Itemsets

library(arules)

# Enter market basket transactions
basket <- list(
  c("Milk", "Beer", "Diapers"),
  c("Bread", "Butter", "Milk"),
  c("Milk", "Diapers", "Cookies"),
  c("Bread", "Butter", "Cookies"),
  c("Beer", "Cookies", "Diapers"),
  c("Milk", "Diapers", "Bread", "Butter"),
  c("Bread", "Butter", "Diapers"),
  c("Beer", "Diapers"),
  c("Milk", "Diapers", "Bread", "Butter"),
  c("Beer", "Cookies")
)

# Convert data into transaction format
trans <- as(basket, "transactions")

# Display transactions
inspect(trans)

# Find frequent itemsets
itemsets <- apriori(
  trans,
  parameter = list(
    supp = 0.001,
    minlen = 1,
    maxlen = 4,
    target = "frequent itemsets"
  )
)

# Display frequent itemsets
inspect(itemsets)

# Generate association rules
rules <- apriori(
  trans,
  parameter = list(
    supp = 0.001,
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

# Count distinct items
n <- length(itemLabels(trans))

# Calculate maximum possible association rules
max_rules <- 3^n - 2 * (2^n) + 1

# Find maximum transaction size
max_itemset_size <- max(size(trans))

# Display answers
cat("Total distinct items:", n, "\n")

cat("Maximum possible association rules:",
    max_rules, "\n")

cat("Maximum frequent itemset size:",
    max_itemset_size, "\n")

# Plot item frequencies
itemFrequencyPlot(
  trans,
  topN = 10,
  type = "absolute",
  main = "Market Basket Item Frequency"
)
