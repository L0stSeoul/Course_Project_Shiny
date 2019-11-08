
library(shiny)

shinyUI(fluidPage(
  titlePanel("Stock Visualizer"),
  
  sidebarLayout(
    sidebarPanel(
      helpText("Plot stock graph"),
      
      textInput("symb", "Ticker Symbol", "BHP"),
      
      dateRangeInput("dates", 
                     "Date slider",
                     start = "2006-01-01", 
                     end = as.character(Sys.Date())),
      
      br(),
      br(),
      
      checkboxInput("log", "Plot y Axis on Log Scale", 
                    value = FALSE)
    ),
    
    mainPanel(plotOutput("plot"))
  )
))