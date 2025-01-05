# Load necessary libraries
library(ggplot2)

# Sample economic data: GDP growth and inflation rates
data <- data.frame(
  Year = 2000:2020,
  GDP_Growth = c(4.1, 3.7, 2.5, 3.1, 4.4, 3.5, 2.9, 2.5, -0.1, -2.5, 2.7, 1.6, 2.2, 1.8, 2.5, 2.9, 1.6, 2.4, 2.8, 2.3, -3.5),
  Inflation_Rate = c(3.4, 2.8, 1.6, 2.3, 2.7, 3.4, 2.5, 2.3, 3.8, 2.7, 1.5, 3.2, 2.1, 1.5, 0.7, 2.1, 1.3, 2.1, 1.8, 2.3, 1.2)
)

# Summary statistics
summary(data)

# Visualizing GDP Growth over the years
ggplot(data, aes(x = Year, y = GDP_Growth)) +
  geom_line(color = "blue") +
  ggtitle("GDP Growth Over Years") +
  xlab("Year") +
  ylab("GDP Growth (%)")

# Visualizing Inflation Rate over the years
ggplot(data, aes(x = Year, y = Inflation_Rate)) +
  geom_line(color = "red") +
  ggtitle("Inflation Rate Over Years") +
  xlab("Year") +
  ylab("Inflation Rate (%)")
