library(tidyverse)
library(readr)
library(usethis)

ensembl = readr::read_csv('/Volumes/cbbi-data00/references/ensembl_to_gene_symbol/human/ensembl_to_symbol.csv',
                          col_names = c('ensembl', 'symbol'))

# use_data(ensembl, internal = F)
