

#' Title
#'
#' @return
#' @export
#'
#' @examples
nav_panel_fbcf_branche <- function() {
  return(
    nav_panel("FBCF - branches",icon = bs_icon("search"),
              navset_card_underline(
                nav_panel("Vue d'ensemble",
                          card(card_header("Éléments clés"),
                               card_body(value_box(title = "aaa",value = 34))),
                          card(card_header("Analyse sur longue période"),
                               card_body(highchartOutput("fbcf_branche_hc_synth"),
                                         sliderInput(inputId = "date_fbcf_branche",
                                                     label = "Années",
                                                     min = 1949,
                                                     max = 2023,
                                                     value = c(2000,2023),
                                                     step = 1))),
                          card(card_header("Données brutes"),
                               card_body(DTOutput("donnees_fbcf_branche")))),
                nav_panel("Analyse des révisions",
                          h3("En cours de construction"))))
  )
}
