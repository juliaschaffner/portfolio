# Assignment 6

# Upload libraries and read data

library(lmtest)
library(ggplot2)


setwd("C:/Users/julia/OneDrive/Documents/Sociology/")
data = read.csv("gss_2022.csv")

# Exploring Dependent Variable - HAPMAR

# Histogram to view distribution

ggplot(data, aes(x = hapmar)) +
  geom_histogram(binwidth = 1, fill = "red", color = "black") +
  labs(title = "Histogram of Marraiage Satisfaction", x = "Happiness with Marriage", y = "Frequency") +
  theme_minimal()

ggsave("C:/Users/julia/OneDrive/Documents/Sociology/HAPMAR_histogram.png")

# Measures of central tendency

# Mean
mean_happiness <- mean(data$hapmar, na.rm = TRUE)
print(mean_happiness)
# The mean is 1.47011.

# Median
median_happiness <- median(data$hapmar, na.rm = TRUE)
print(median_happiness)
# The median is 1.

# Mode
mode_happiness <- names(sort(table(data$hapmar), decreasing = TRUE))[1]
print(mode_happiness)
# The mode is 1.

# Standard Deviation
sd_happiness <- sd(data$hapmar, na.rm = TRUE)
print(sd_happiness)
# The standard deviation is 0.5986874.

# Linear Regression

# Model 1
# DV: HAPMAR, IV:CHILDS

model <- lm(hapmar ~ childs, data = data)
summary(model)

# Model 2
# DV: HAPMAR, IVs: CHILDS, SEX, WORKHRS

model2 <- lm(hapmar ~ childs+sex+hrs1, data = data)

summary(model2)

# Testing for Homoskedasticity

# Breusch-Pagan test
bptest(model2)  
# p-value: 0.1012

# Testing for Normality
# Shapiro-Wilk test
shapiro.test(residuals(model2))
