

library(dplyr)

hogar <- eph::get_microdata(year = 2019, trimester = 1, type = "hogar")

individual <- eph::get_microdata(year = 2019, trimester = 1, type = "individual")

junto <- individual %>% 
  dplyr::left_join(hogar, by = c("CODUSU", "NRO_HOGAR", "TRIMESTRE", "ANO4"))

individual$PONDERA
hogar$PONDERA

identical(junto$PONDERA.x, junto$PONDERA.y)
identical(junto$RDECCFR.y, junto$RDECCFR.x)

dplyr::filter(junto, !is.na(RDECCFR.x)) %>% 
  dplyr::filter(RDECCFR.y != RDECCFR.x)
