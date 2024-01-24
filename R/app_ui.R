#' The application User-Interface
#'
#' @param request Internal parameter for `{shiny}`.
#'     DO NOT REMOVE.
#' @import shiny bslib highcharter bsicons shinyWidgets DBI RSQLite arrow DT shinycssloaders markdown shinyRatings data.table
#' @noRd
app_ui <- function(request) {
  tagList(
    # Leave this function for adding external resources
    golem_add_external_resources(),
    # Your application UI logic
    page_fluid(
      theme =  bs_theme(),
      list(tags$head(HTML('<link rel="icon", href="www/logoapp.png",
                                   type="image/png" />')),
           tags$head(
             tags$style(HTML("
            @font-face {
                font-family: 'Marianne';
                src: url('www/Marianne-Regular.woff') format('woff');
            }
            body {
                font-family: 'Marianne', sans-serif;
            }
        "))
           )),
      page_navbar(
        lang = "fr",
        title="Comptes annuels",
        sidebar = sidebar_app(),
        nav_panel_csi(),
        nav_panel_cpeb(),
        nav_panel_ere(),
        nav_menu(title = "APU",
                 nav_panel_dep_apu(),
                 nav_panel_dette_apu()),
        nav_menu(title = "FBCF",
                 nav_panel_fbcf_si(),
                 nav_panel_fbcf_branche()),
        nav_menu(title = "Conso",
                 nav_panel_p3(),
                 nav_panel_p4()),
        nav_panel_emploi(),
        nav_panel_pib(),
        nav_panel_rdb(),
        nav_panel_tei(),
        nav_panel_tof(),
        nav_menu_apropos(),
        nav_spacer(),
        nav_item(actionBttn("suggestions",label = "Envoyez une suggestion",size = "xs")),
        nav_menu("Notez-moi",
                 nav_item(uiOutput("ratings"))),
        nav_item(input_dark_mode(mode = "light")),
        tags$style(".footer{position: fixed;bottom: 0;width: 100%;background-color: rgba(8, 60, 116, 1);color: white;text-align: center;padding: 5px;margin-left:-25px;}"),
        tags$style(".footer a{color: white;}"),
        footer = tags$div(
          class = "footer",
          "Développé par ",
          tags$a(href = "https://www.linkedin.com/in/philippe-fontaine-ds/", target = "_blank", "Philippe Fontaine"))
      )
    )
  )

}

#' Add external Resources to the Application
#'
#' This function is internally used to add external
#' resources inside the Shiny application.
#'
#' @import shiny
#' @importFrom golem add_resource_path activate_js favicon bundle_resources
#' @noRd
golem_add_external_resources <- function() {
  add_resource_path(
    "www",
    app_sys("app/www")
  )

  tags$head(
    favicon(ext = 'png'),
    bundle_resources(
      path = app_sys("app/www"),
      app_title = "Comptes annuels"
    )
    # Add here other external resources
    # for example, you can add shinyalert::useShinyalert()
  )
}
