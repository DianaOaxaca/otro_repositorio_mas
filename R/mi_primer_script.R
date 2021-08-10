#generar una tabla con los datos presidents
presidentes <- presidents
#Guardar la tabla en mi directorio
write.csv(presidentes, file = "../data/presidentes.csv", header = TRUE)
#Cargar librerias
library(tidyverse)

# leer la tabla
mitabla <- read.csv("../data/01_presidentes.csv", header = TRUE )

# Filtra los datos y guarda solamente los de partidos "party"
presidentes_partido <- mitabla %>% group_by(party)

# Exporta los datos filtrados
write.table(presidentes_partido, "../data/02_presidentes_partido.txt",
            sep = "\t",quote = FALSE,row.names = FALSE)

# Grafica cuántos pingüinos de la especie Adelie viven en cada isla.
grafica_partido <- ggplot(presidentes_partido,aes(x = party, fill = party)) +
  geom_bar() +
  theme_minimal()

# Exporta la gráfica
png("../plots/barplot_partido.png")
grafica_partido
dev.off()