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

# Plotting unlikely relationships (are penguins fattening or starving?)
ggplot(penguins, aes(x = year, y = body_mass, color = species)) +
  geom_point() +
  geom_smooth(method = lm)

library(renv) #crea una carpeta con la librería activa
renv::init() #to set up the R dependency management
renv::snapshot() #to update the dependency management
renv::restore() #restaura el environment de ese proyecto. Corre el código con los paquetes
#en la versión que tenías.