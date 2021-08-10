dir.create("mis_imagenes")
library(ggplot2)
library(MASS)
data(MASS::cats)
pdf("mis_imagenes/cats_plot.pdf") 
ggplot(cats, aes(x = Sex)) + 
  geom_bar(fill = "orange", color = "black") + theme_classic() +
  xlab("Sexo") + ylab("Número de Gatos") + ggtitle("Gatos")
dev.off()