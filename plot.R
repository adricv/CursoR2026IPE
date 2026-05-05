library(tidyverse)

dt <- penguins

library(ggplot2)

ggplot(penguins, aes(x = body_mass, y = bill_len, colour = sex)) +
  geom_point() + facet_wrap(~species)
