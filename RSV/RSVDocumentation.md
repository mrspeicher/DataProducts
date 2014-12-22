RSV Documentation
========================================================
author: Mark Speicher
date: December 21, 2014
transition: rotate

The problem
========================================================

In 2011, the Journal Pediatrics (127:1 35 - 41) published an article by Houben et al. describing an algorithm for assessing risk for hospitalized respiratory syncytial virus (RSV) lower respiratory tract infection (LRTI), a common ailment that can be predicted by using host and environmental factors in children. No one has made this risk algorithm widely available to the public. 

Findings
========================================================
The authors found:

- A simple prediction rule
- Risk ranges from 3% to 32%
- The impact of outpatient-treated RSV LRTI includes 
    - increased number of physician visits and drug prescriptions
    - Parents’ missed work days.

Risk factors
========================================================
We developed a list of checkboxes assessing the following risk factors:

- Birthweight > 8.18 lbs (4.5 kg)
- Birthday between April 1 and September 30
- Contact with other children 
    - siblings <18 years of age in the home, or
    - spending any time during the year in day care

Slide With Server Code
========================================================


```r
# This is the server logic for a Shiny web application.

library(shiny)

weightrisk.RSV <- function(weight) as.numeric(weight)
monthrisk.RSV <- function(month) as.numeric(month)
sibrisk.RSV <- function(sibs) as.numeric(sibs) * 2
educationrisk.RSV <- function(education) as.numeric(education)
```

Slide With Server Code (cont.)
========================================================


```r
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
```

Slide With Input and Output Code
========================================================








```
Error in parse(text = x, srcfile = src) : 
  <text>:15:0: unexpected end of input
13:   checkboxInput("education", label = "At least one parent has earned a Bachelor's degree or higher", value = FALSE)
14: ),
   ^
```
