## Shiny App UI


shinyUI(navbarPage(
  title = "Bib",
  tabPanel('Columns',
           fluidPage(title="Columns",
           fluidRow(
      conditionalPanel(
         'input.dataset === "Yesterday"',
           checkboxGroupInput('show_vars', 'Columns in bib to show:',
           names(yesterday), c("title", "author", "publisher", "year", "format", "retail", "size", "snatches", "tags", "time", "desc", "dl"), inline=TRUE)
           ),
      conditionalPanel(
        'input.dataset === "Last 7 days"',
        helpText('Click the column header to sort a column.')
      ),
      conditionalPanel(
        'input.dataset === "Last week"',
        helpText('Click the column header to sort a column.')
      ),
      conditionalPanel(
        'input.dataset === "Last week (Archived)"',
        helpText('Display 5 records by default.')
      ),
      conditionalPanel(
        'input.dataset === "All (Archived)"',
        helpText('Display 5 records by default.')
      )
      ))),
  
  tabPanel('The Data',
           fluidPage(title = "The Data", shinyjs::useShinyjs(),
      tabsetPanel(
        id = 'dataset',
        tabPanel('Yesterday', DT::dataTableOutput('mytable1')),
        tabPanel('Last 7 days', DT::dataTableOutput('mytable2')),
        tabPanel('Last week', DT::dataTableOutput('mytable3')),
        tabPanel('Last week (Archived)', DT::dataTableOutput('mytable4')),
        tabPanel('All (Archived)', DT::dataTableOutput('mytable5'))
      )
    )
  ))
)
