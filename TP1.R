#TP 1


library(dplyr)
library(eph)
library(tidyr)



base_hogar_1t2019 <- get_microdata(year = 2019,
                                 trimester = 1,
                                 type = "hogar",
                                 vars = "all",
                                 destfile = "datos/base_hogar_1t2019")


base_individual <- get_microdata(year = 2018:2019,
                                 trimester = 1,
                                 type='individual',
                                 vars = c('PONDERA','ESTADO','CAT_OCUP'))