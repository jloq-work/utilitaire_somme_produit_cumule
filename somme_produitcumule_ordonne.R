library(data.table)
library(tidyverse)

#chargement des données de la table exemple
chemin="path"
dt=read.csv(paste0(chemin,"table_exemple_R.csv"),
              sep=",",
              fileEncoding = 'UTF-8')

#calcul et sommation du produit cumulatif par row et suivant un ensemble de columns ordonné filtrant
dt= dt %>% 
    rowwise() %>%
    mutate(somme_filtre_ordinal_produitcumule = sum(cumprod(c_across(c(
                                                                X2025M01, 
                                                                X2025M02, 
                                                                X2025M03,
                                                                X2025M04, 
                                                                X2025M05, 
                                                                X2025M06,
                                                                X2025M07, 
                                                                X2025M08, 
                                                                X2025M09,
                                                                X2025M10, 
                                                                X2025M11, 
                                                                X2025M12,
                                                                X2026M01,
                                                                X2026M02))))) %>% 
    ungroup() 
