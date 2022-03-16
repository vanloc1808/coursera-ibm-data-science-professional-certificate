# Plotting within RStudio (Advanced)

library(datasets)
data(iris)

library(GGally)
ggpairs(iris, mapping = ggplot2::aes(colour = Species))

