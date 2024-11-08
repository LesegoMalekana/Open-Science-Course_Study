# # penguin plot
palmerpenguins::penguins

library(ggplot2)

# boxplot of penguin bill length
ggplot(palmerpenguins::penguins, aes(x = species, y = bill_length_mm)) +
  geom_boxplot(fill = "lightblue3") +
  labs(x = "Species", y = "Bill Length (mm)")

# boxplot of penguin bill length against bill depth
ggplot(palmerpenguins::penguins, aes(x = bill_depth_mm, y = bill_length_mm)) +
  geom_point(aes(colour = palmerpenguins::penguins$species)) +
  labs(x = "Bill Depth (mm)", y = "Bill Length (mm)")
