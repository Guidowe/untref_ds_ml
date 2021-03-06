# Materiales del curso Ciencia de Datos y Machine Learning. Aplicaciones en R

> Docentes: Germán Rosati - Pablo Tiscornia - Guido Weksler


### Presentación
Este curso se propone realizar una introducción a algunos conceptos fundamentales de la ciencia de datos. Se hará especial énfasis tanto en la etapa de extracción y limpieza de datos y se introducirán algunas técnicas para las etapas de modelado y comunicación. Se presentarán la implementación de análisis estadísticos básicos (descriptivos y regresiones) y algunas herramientas de visualización de datos. A su vez, el curso presentará algunos elementos metodológicos de la minería de datos/aprendizaje automático (balance sesgo-variancia, overfitting, etc.). Por último, se trabajará en la estimación de modelos basados en ensamble learning.

  
# Programa

+ Unidad 1. Elementos de programación estadística en R: Objetos en R (vectores, matrices, data frames y listas). Introducción al tydiverse: data wrangling (select(), filter(), arrange(), mutate(). summarise(), group_by(), left_join()). Estructuras de control: for, if, map. Uso e implementación de funciones ad-hoc. Importación y exportación de datos (.csv, .txt, .tab, .sav, etc.).
+ Unidad 2. Visualización y generación de gráficos en R: Nociones de graficación (forma, color, tamaño, color). Niveles de medición y gráficos adecuados. Introducción a ggplot2: ggplot(), geom_points(), geom_smooth(), aes(), facet_wrap(), facet_grid().
+ Unidad 3. Análisis estadístico básico en R. Estadística descriptiva. Implementación y análisis de modelos de regresión lineal y logística. Funciones lm, glm y predict.
+ Unidad 4. Nociones básicas de data mining/aprendizaje automático. Tipos de problemas en aprendizaje supervisado: clasificación y regresión. Error de entrenamiento (training error), error de prueba (test error). Sobre-ajuste. Balance entre el sesgo y la variancia de un modelo. Métodos de estimación del error: partición del dataset, validación cruzada. Introducción a caret.
+ Unidad 5. Ensamble Learning. Clasificadores basados en árboles: CART. Algoritmos de Ensamble: bagging, random forest, boosting, Gradient Boostin. Uso de caret para entrenamiento de modelos. Interpretable Machine Learning: Herramientas para la interpretación de modelos de caja negra (Feature Importance, Partial Dependence Plots, Individual Conditional Expectance
Plots. Aplicaciones en R.

### Clases
  
__Clase 1 - Introducción a R Base:__
  

+ Temas de clase: 
  + Descripción del programa “R”. Lógica sintáctica del lenguaje y comandos básicos
  + Presentación de la plataforma RStudio
  + Caracteres especiales en “R”
  + Operadores lógicos y aritméticos
  + Definición de Objetos: Valores, Vectores y DataFrames
  + Tipos de variable (numérica, de caracteres, lógicas)
  + Lectura y Escritura de Archivos

 - Descarga de materiales clase 1

[![](img/Download.png)](Clase 1 - R Base.rar)

<br>

__Clase 2 - Introducción a Tidyverse:__
  

+ Temas de clase: 
  + Paquetes y librerías
  + Presentación del paquete Tidyverse:
    + Paquete dplyr: Principales herramientas para el tratamiento del dato
    + Paquete tidyr: Re-estructuración de tablas y bases de datos
    + Operaciones segmentadas y tablas resúmenes
  
 - Descarga de materiales clase 2

[![](img/Download.png)](Clase 2 - Tidyverse.rar)

<br>

__Clase 3 - Visualización de la información__
  
+ Temas de clase:
  + Gráficos básicos de R (función “plot”): Comandos para la visualización ágil de la información
  + Gráficos elaborados en R (función “ggplot”): 
    + Gráficos de línea, barras, densidad, boxplots, geom_smooth 
    + Extensiones de ggplot

 - Descarga de materiales clase 3

[![](img/Download.png)](Clase 3 - Graficos.rar)


<br>

# Librerías a utilizar
El taller se desarrollará en R y se hará un uso extensivo de las siguientes librerías:

- `tidyverse`
- `caret`
- `eph`
- `openxlsx`
- `ggthemes`
- `ggridges`
- `GGally`

Pueden instalarse utilizando las instrucciones:

```{r}
install.packages('tidyverse')  
install.packages('caret') 
```


# Bibliografía básica y sitios de consulta

- [James, G., Witten, D., Hastie, T. y Tibshirani, R. (2015), _Introduction to Statistical Learning_, Berlin: Springer.](http://faculty.marshall.usc.edu/gareth-james/ISL/)

- [Kuhn, M. (s/f), _The `caret` package](http://topepo.github.io/caret/index.html)

- [Grolemund, G. y Wickham, H. (2019), R para Ciencia de Datos](https://es.r4ds.hadley.nz)

- [Molnar, C. (2019) Interpretable Machine Learning. A Guide for Making Black Box Explainable](https://christophm.github.io/interpretable-ml-book/)

- [Vázquez Brust, A. (2019), Ciencia de Datos para Gente Sociable](https://bitsandbricks.github.io/ciencia_de_datos_gente_sociable/)
