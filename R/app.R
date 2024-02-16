#' Title
#'
#' @return
#' @export
#'
#' @examples
run_Shiny_ghawkR=function(){
library(shiny)
library(ghawkR)
library(sf)

options(shiny.maxRequestSize=100*1024^2)

ui <- fluidPage(
  titlePanel("App for plotting flight data"),
  sidebarLayout(
    sidebarPanel(
      fileInput('file1', 'Wybierz plik TXT'),
      sliderInput('value', 'Wybierz wartość odchudzania n-th:', min = 1, max = 1000, value = 50),
      actionButton("goButton", "Process"),
      textInput("folderPath", "Ścieżka do folderu zapisu:", value = "wpisz ścieżkę folderu"),
      textInput("fileName", "Nazwa pliku wynikowego:", value = "wynik"),
      actionButton("exportButton", "Save SHP")
    ),
    mainPanel(
      plotOutput('plot')
    )
  )
)

server <- function(input, output) {
  values <- reactiveValues(df = NULL)

  observeEvent(input$goButton, {
    req(input$file1)
    df <- read.table(input$file1$datapath)
    df <- ghawkR::colnames_Trajectory(df)
    df <- ghawkR::table_to_spatial(df, coords = c(2,3), remove=FALSE)
    df <- ghawkR::thin_records(df, input$value)
    values$df <- df

    output$plot <- renderPlot({
      if (nrow(values$df) > 0) {
        ghawkR::plot_points_coord(values$df)
      }
    })
  })

  observeEvent(input$exportButton, {
    req(values$df, input$folderPath, input$fileName)
    filePath <- paste0(input$folderPath, "/", input$fileName, ".shp")
    tryCatch({
      st_write(values$df, filePath)
      showModal(modalDialog(
        title = "Sukces",
        "Plik został zapisany.",
        easyClose = TRUE,
        footer = NULL
      ))
    }, error = function(e) {
      showModal(modalDialog(
        title = "Błąd",
        paste("Nie udało się zapisać pliku:", e$message),
        easyClose = TRUE,
        footer = NULL
      ))
    })
  })
}

shinyApp(ui = ui, server = server)
}
