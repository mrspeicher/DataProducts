
# This is the server logic for a Shiny web application.

library(shiny)

weightrisk.RSV <- function(weight) as.numeric(weight)
monthrisk.RSV <- function(month) as.numeric(month)
sibrisk.RSV <- function(sibs) as.numeric(sibs) * 2
educationrisk.RSV <- function(education) as.numeric(education)

shinyServer(
  function(input, output) {
  
  output$month <- renderPrint({ input$month })
  output$weight <- renderPrint({ input$weight })
  output$sibs <- renderPrint({ input$sibs })
  output$education <- renderPrint({ input$education })
  output$weightrisk.RSV <- renderPrint({ weightrisk.RSV(input$weight) })
  output$monthrisk.RSV <- renderPrint({ monthrisk.RSV(input$month) })
  output$sibrisk.RSV <- renderPrint({ sibrisk.RSV(input$sibs) })
  output$educationrisk.RSV <- renderPrint({ educationrisk.RSV(input$education )})
})