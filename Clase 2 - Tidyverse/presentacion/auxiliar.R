library(tidyverse)
base <- read.table(file = "Clase 2 - Tidyverse/data/Individual_t215.txt", sep = ";", header = TRUE)

colnames(base)

base <- select(.data = base,  
               ANO4, TRIMESTRE, AGLOMERADO, CH04, CH06, ESTADO, CAT_OCUP, NIVEL_ED, P21, TOT_P12)

colnames(base)

write.table(x = base, file = "Clase 2 - Tidyverse/data/base_juguete_t3_16.txt", sep = "|")


options(getOption("max.print"))


base <- read.table(file = "Clase 2 - Tidyverse/data/base_juguete_t3_16.txt", sep = "|")
base %>%
        select(2:5, ESTADO, CAT_OCUP)
