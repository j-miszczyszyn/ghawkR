library(shiny)
library(ghawkR)
# Załaduj potrzebne pakiety, jeśli korzystasz z dodatkowych funkcji

options(shiny.maxRequestSize=100*1024^2) # Ustaw limit rozmiaru pliku na 100 MB

ui <- fluidPage(
  titlePanel("Prosta aplikacja Shiny z przyciskiem akcji"),
  sidebarLayout(
    sidebarPanel(
      fileInput('file1', 'Wybierz plik TXT'),
      sliderInput('value',
                  'Wybierz wartość:',
                  min = 1,
                  max = 5000,
                  value = 10),
      actionButton("goButton", "Przetwarzaj")
    ),
    mainPanel(
      plotOutput('plot')
    )
  )
)

server <- function(input, output) {
  observeEvent(input$goButton, {
    req(input$file1) # Zapewnia, że przetwarzanie rozpocznie się tylko po wczytaniu pliku
    df <- read.table(input$file1$datapath) # Dostosuj do formatu pliku

    # Tutaj umieść logikę przetwarzania danych, np. filtrowanie, obliczenia statystyczne itp.
    df=ghawkR::colnames_Trajectory(df)
    df=ghawkR::table_to_spatial(df, coords = c(2,3), remove=FALSE)
    df=ghawkR::thin_records(df, input$value)
    # Możesz również dodać logikę generowania wykresu, jeśli dane są odpowiednie
    output$plot <- renderPlot({
      # Zakładając, że df to Twój przetworzony dataframe
      if (nrow(df) > 0) {
        ghawkR::plot_points_coord(df) # Przykładowe wykorzystanie wartości suwaka
      }
    })
    })
}

shinyApp(ui = ui, server = server)
