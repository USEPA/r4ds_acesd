#library("tidyverse")
library("ggplot2")
library("palmerpenguins")
library("ggthemes")

# Explore the penguins data
penguins
View(penguins) #Another way to look at a data frame

ggplot(data = penguins,
       mapping = aes(x = flipper_length_mm, y = body_mass_g)) +
  geom_point(mapping = aes(color = species, shape = species)) +
  geom_smooth(method = "lm") +
  labs(
    title = "Body mass and flipper length",
    subtitle = "Dimensions for Adelie, Chinstrap, and Gentoo Penguins",
    x = "Flipper length (mm)", y = "Body mass (g)",
    color = "Species", shape = "Species") +
  scale_color_colorblind()

# Continuation of ggplot2 chapter

# Explict and Verbose
ggplot(data = penguins, 
       mapping = aes(x = flipper_length_mm, y = body_mass_g)) +
  geom_point()

# Implicit and less verbose
ggplot(penguins, aes(x = flipper_length_mm, y = body_mass_g)) +
  geom_point()

# Bar Plots
ggplot(penguins, aes(x = species)) +
  geom_bar()

# Histogram
ggplot(penguins, aes(x = body_mass_g)) +
  geom_histogram(binwidth = 10)

# Density
ggplot(penguins, aes(x = body_mass_g)) +
  geom_density(mapping = aes(y = after_stat(count)))

# Boxplots
ggplot(penguins, aes(x = species, y = body_mass_g)) +
  geom_boxplot()

# Density Plots
island_plot <- ggplot(penguins, aes(x = body_mass_g, color = species, fill = species)) +
  geom_density(linewidth = 1.5, alpha = 0.25)

# Facet examples
ggplot(penguins, aes(x = flipper_length_mm, y = body_mass_g)) +
  geom_point(aes(color = species, shape = species)) +
  facet_grid(island~sex)
