library(tidyverse)

dt <- penguins

library(ggplot2)

ggplot(penguins, aes(x = body_mass, y = bill_len, colour = sex)) +
  geom_point() + facet_wrap(~species) +
  scale_color_manual(values = c("red", "blue"))

ggplot(penguins, aes(x = body_mass, y = bill_len)) + 
  geom_smooth(method = lm, aes(colour = species)) + 
  geom_point()

#Graficando otras variables: relación entre isla y peso
ggplot(penguins, aes(x = island, y = body_mass)) +
  geom_jitter(width = 0.2, alpha = 0.3, aes(colour = sex)) + 
  geom_boxplot(colour = "black", fill = "white", alpha = 0.5) +
  facet_wrap(~species)


  