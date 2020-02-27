A <- 1
B = 2000
C = "Buenas"

base.de.trabajo <- readRDS("../data/EPH.RDS")



A + 6

A <- B

#Ahora A toma el valor de B, y B continua conservando el mismo valor
A   
B

#suma
A <- 5+6
A
#Resta
B <- 6-8
B
#cociente
C <- 6/2
C
#multiplicacion
D <- 6*2
D

#Redefinimos los valores A y B
A <- 5
B <- 20

#Realizamos comparaciones lógicas
A > B
A >= B
A < B
A <= B
A == B
A != B
A %in% c(1,2,3,4,5,6)
A %in% 1:6


#Realizamos comparaciones lógicas
A == 5 | B == 5

A == 5 & B == 5


A <- 1
class(A)

A <- "Hola"
class(A)

A <- "Hola, ¿qué tal?"
class(A)


# Vector numérico
A <- c(1, 2, 2, 2, 1, 1, 1)
A
class(A)

# Vector de caracteres
B <- c("Uno", "Dos", "Dos", "Dos", "Uno", "Uno", "Uno")
B
class(B)


# Vector de tipo factor
C <- as.factor(A)
C
class(C)

# Defino etiquetas del vector numérico o caracter
A
A_etiquetas <- factor(A,
                     labels = c('Varón','Mujer'))
A_etiquetas



D <- c(1, 3, 4)
D <- D + 2
D

E <- D + 1:3 #esto es equivalente a hacer 3+1, 5+2, 6+9 
E

# Si quiero al elemento 2 del objeto E:
E 
E[2]

E_posicion2 <-  E[2]
E_posicion2

rm(E_posicion2)
E_posicion2

E
E[2] <- "Pablo"
E

# Tener cuidado al modificar el tipo de uno de los valores y no el de todos los del objeto:
class(E)

Datos <- data.frame(AGLOMERADO = c(32,33,33,33,32),
                    SEXO = c("Varon","Mujer","Mujer","Varon","Mujer"),
                    EDAD = c(60,54,18,27,32))
Datos
class(Datos)

Datos[3,2]
Datos[4,3]

Datos$AGLOMERADO
class(Datos$AGLOMERADO)

Datos$AGLOMERADO[2]

Datos$AGLOMERADO[3,2]

Datos[Datos$AGLOMERADO==32, ]

###Por separado
Edad_Aglo32 <- Datos$EDAD[Datos$AGLOMERADO==32]
Edad_Aglo32

mean(Edad_Aglo32)

# Otra forma de lograr el mismo resultado
Edad_Aglo32 <- mean(Datos$EDAD[Datos$AGLOMERADO==32])

LISTA <- list(A,B,C,D,E,Datos$AGLOMERADO, DF = Datos)


LISTA$DF
LISTA$DF$EDAD
LISTA$DF$EDAD[2]

LISTA[[6]]

LISTA[[6]][1]

LISTA[[7]][2]

LISTA[[7]][2,1]

paste("Pega","estas", 4, "palabras", sep = " ")

#Puedo concatenar caracteres almacenados en objetos
a <- c(1, 2, 3)
b <- "con"
c <- c(4, 5, 6)

paste(a,b,c,sep = "-")

# Paste0 pega los caracteres sin separador
paste0(a,b,c)

1:5

# Función para sumar
sum(1:5)

# Para calcular medias
mean(1:5)

#Funciones para importar
load(file = "../data/EPH_2015_II.RData") #RDATA
base.de.trabajo <- readRDS(file = "../data/EPH.RDS")#RDS

## View(base.de.trabajo) # Abre la base en una ventana aparte
## names(base.de.trabajo) # Devuelve el nombre de todas las variables
## summary(base.de.trabajo)# Devuelve algunas medidas de resúmen para cada variable de la base
## head(base.de.trabajo)# Devuelve sólo los primeros registros de la base
## unique(base.de.trabajo$region)# Devuelve un listado de los diferentes valores que toma la variable en cuestión

## #Funciones para exportar
## save(list = c("Datos","LISTA"),file = "mi_resultado.RDATA")
## saveRDS(object = data,file = "../data/EPH.RDS")

individual_t117 <- read.table(file = '../data/usu_individual_t117.txt',
                              sep=";", 
                              dec=",", 
                              header = TRUE, 
                              fill = TRUE)
test <- read.csv(file = "../data/test.csv")

## #install.packages("openxlsx") # por única vez
## 
## # Activamos la librería para poder usar sus funciones
## library(openxlsx)
## listado.aglom <- openxlsx::read.xlsx("../data/Aglomerados EPH.xlsx")
## 
## # Procesamos los datos
## listado.aglom$Anio <- 2020
## 
## # Escribimos el archivo al disco
## write.xlsx( x = listado.aglom, file = "listado_con_anio.xlsx",
##             row.names = FALSE)

## #install.packages("foreing") # por única vez
## 
## # Activamos la librería para poder usar sus funciones
## library(foreing)
## base.en.dta <- foreign::read.dta("../data/Individual_t215.dta")
