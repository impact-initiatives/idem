if (isTRUE(getOption("webr.loaded"))) {
  # Pre-install deps from r-wasm.org; combined repos don't guarantee fallback.
  webr::install(c(
    "cli",
    "lifecycle",
    "purrr",
    "readxl",
    "rlang",
    "stringr",
    "tibble",
    "tidyr"
  ))
  webr::install("idem", repos = "https://impact-initiatives.r-universe.dev")
}

library(shiny)
library(bslib)
library(idem)
library(DT)

target <- msna_template_required

ui <- page_sidebar(
  title = "XLSForm Validator",
  theme = bs_theme(version = 5),
  sidebar = sidebar(
    width = 280,
    fileInput(
      "dev_form",
      "Upload dev form",
      accept = ".xlsx",
      buttonLabel = "Browse...",
      placeholder = ".xlsx file"
    ),
    hr(),
    downloadButton("export_csv", "Export to CSV")
  ),
  card(
    card_header("Validation results"),
    DTOutput("results_table")
  )
)

server <- function(input, output, session) {
  results <- reactive({
    req(input$dev_form)
    dev <- tryCatch(
      read_xlsform(input$dev_form$datapath),
      error = function(e) {
        showNotification(conditionMessage(e), type = "error", duration = 8)
        NULL
      }
    )
    req(dev)
    validate_xlsform(target, dev)
  })

  output$results_table <- renderDT(
    {
      df <- results()
      datatable(
        df,
        rownames = FALSE,
        options = list(pageLength = 25, scrollX = TRUE)
      )
    },
    server = FALSE
  )

  output$export_csv <- downloadHandler(
    filename = function() paste0("validation_", Sys.Date(), ".csv"),
    content = function(file) write.csv(results(), file, row.names = FALSE)
  )
}

shinyApp(ui, server)
