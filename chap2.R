# R can do math
4 + 5
3 - 10
5 * 6
100 / 10
2^3
100%%10
100%%9

# Create some objects
y <- "bob"
x <- 3 * 4
x <- x * 2
primes <- c(2, 3, 5, 7, 11, 13)
primes[3]
primes * 2
primes * primes
#object_name <- value
4 -> z
xx = c("a", "b")
#function_name(arg1 = "a", arg2 = 4)
read.csv
#function_name(arg1, arg2, arg3)
my_seq <- seq(from = 1, to = 10, by = 2)
my_hi <- "hello world"
my_hi2 <- "hello world"

library(tidyverse)

ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy)) +
  geom_smooth(mapping = aes(x = displ, y = hwy), method = "lm")

my_bar_plot <- ggplot(mpg, aes(x = class)) +
  geom_bar()
my_scatter_plot <- ggplot(mpg, aes(x = cty, y = hwy)) +
  geom_point()
ggsave(filename = "mpg-plot.png", plot = my_bar_plot)

# Getting Help
?lm
help("lm")
help(package = "dplyr")
