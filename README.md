
<!-- README.md is generated from README.Rmd. Please edit that file -->

# shinyREDCap

<!-- badges: start -->

<!-- badges: end -->

The goal of shinyREDCap is to allow you to interact with your REDCap
Projects from within a Shiny application. REDCap instruments are
translated into native Shiny controls/widgets and allow for the capture
of abstracted information from within the R Shiny environment.
Additionally, error prone fields such as MRN and reviewer information
are populated automatically, based on user configured information, thus
reducing the potential for error in abstracted information.

## Installation

You can install the released version of shinyREDCap from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("thewileylab/shinyREDCap")
```

## Usage

To connect shinyREDCap to your REDCap project, users must have read and
write access to a previously created REDCap project. Additionally, users
must request an API key. The setup and instrument modules then must be
placed in your Shiny application’s ui and server functions.

``` r
library(shiny)
library(shinyREDCap)
ui <- fluidPage(
    column(width = 6,
           tags$h2("Setup REDCap Instrument"),
           # Call the setup UI function
           redcap_setup_ui(id = 'setup_namespace')
           ),
    column(width = 6,
           tags$h2("Interact with REDCap Project Instruments"),
           tags$h3("Select a patient from the list"),
           # Create a subject ID selector. This can come from anywhere, 
           selectInput(inputId = 'subject_id',label = 'Subject ID',choices = c('922873','922874', '922875','922876','922877','922878')),
           # Call the redcap instrument UI function
           redcap_instrument_ui(id = 'instrument_namespace')
           )
  )

server <- function(input, output, session) {
  # Call the setup server function
  setup_vars <- redcap_setup_server(id = 'setup_namespace')
  
  # Encapsulate the subject ID selector as a reactive
  subject_id <- reactive({ input$subject_id }) ## Pass to instrument function
  # Call the instrument server function
  instrurment_vars <- redcap_instrument_server(id = 'instrument_namespace', setup_vars, subject_id )
}

if (interactive())
  shinyApp(ui = ui, server = server)
```

## Code of Conduct

Please note that the shinyREDCap project is released with a [Contributor
Code of
Conduct](https://contributor-covenant.org/version/2/0/CODE_OF_CONDUCT.html).
By contributing to this project, you agree to abide by its terms.
