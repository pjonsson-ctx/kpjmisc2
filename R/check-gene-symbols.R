#' Check gene symbols
#'
#' @param genes One or more gene symbols.
#' @param species Species of gene symbols
#' @param conversion Validation table, used to crosscheck for items in column `symbol`.
#'
#' @return A data frame containing the input gene symbols not matching any entry in the conversion table.
#'
#' @export
check_gene_symbols = function(genes,
                              species = 'human',
                              conversion = NULL) {

  if (class(genes) != 'character') stop('Input should be a character vector.')
  if (tolower(species) != 'human') stop('Not implemented for non-human genes.')

  if (is.null(conversion)) { conversion = ensembl }

  data_frame('symbol' = setdiff(genes, conversion$symbol))

}
