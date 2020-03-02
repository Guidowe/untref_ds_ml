# iris es un set de datos clásico, que ya viene incorporado en R
iris[1:10,]
plot(iris)
#Al especificar una variable, puedo ver el valor que toma cada uno de sus registros (Index)
plot(iris$Sepal.Length,type = "p") # Un punto por cada valor
plot(iris$Sepal.Length,type = "l") # Una linea que una cada valor
plot(iris$Sepal.Length,type = "b") #Ambas
hist(iris$Sepal.Length, col = "lightsalmon1", main = "Histograma")

## ruta_archivo <- "../Resultados/grafico1.PNG"
## ruta_archivo
## png(ruta_archivo)
## plot(iris$Sepal.Length,type = "b")
## dev.off()

library(tidyverse) # cargamos la librería

ggplot(data = iris, aes(x = Petal.Length, Petal.Width, color = Species))+
  geom_point(alpha=0.75)+
  labs(title = "Medidas de los pétalos por especie")+
  theme(legend.position = 'none')+
  facet_wrap(~Species)

g <- ggplot(data = iris, aes(x = Petal.Length, Petal.Width, color = Species))
g

g <- g +  geom_point(alpha=0.25)
g

g <- g +
  labs(title = "Medidas de los pétalos por especie")+
  theme(legend.position = 'none')+
  facet_wrap(~Species)
g


## ggsave(filename = "../Resultados/plotiris.png",plot = g)

library(GGally)

ggpairs(iris,  mapping = aes(color = Species))

library(ggridges)
ggplot(iris, aes(x = Sepal.Length, y = Species, fill=Species)) + 
  geom_density_ridges()

## 
## iris <- iris
## #Correr en la consola
## 
## library(esquisse)
## esquisse::esquisser()


load("Clase 3 - Graficos/data/EPH_2015_II.RData")


ggdata <- data %>% 
  filter(p21>0) 

ggplot(ggdata, aes(x = calif, y = p21)) +
  geom_boxplot()+
  scale_y_continuous(limits = c(0, 40000))


ggplot(ggdata, aes(x= calif, y = p21, group = calif, fill = calif )) +
  geom_boxplot()+
  scale_y_continuous(limits = c(0, 40000))+
  theme(legend.position = "none", # saco la leyenda,
        axis.title  = element_blank(), # saco los titulos de ejes,
        axis.text.x = element_text(angle = 45))+ #inclino texto de eje x     
  facet_wrap(~ ch04, labeller = "label_both")

ggplot(ggdata, aes(x= ch04, y = p21, group = ch04, fill = ch04 )) +
  geom_boxplot()+
  scale_y_continuous(limits = c(0, 40000))+
  facet_grid(~ calif) +
  theme(legend.position = "none")

