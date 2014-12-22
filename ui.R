
# This is the user-interface definition of a Shiny web application.

library(shiny)

shinyUI(pageWithSidebar(
  headerPanel("What is the risk that your child has RSV?"),

sidebarPanel(
  checkboxInput("month", label = "Born between April 1 and September 30", value = FALSE),
  checkboxInput("weight", label = "Birthweight >= 8.18 pounds (4.5 kg)", value = FALSE),
  checkboxInput("sibs", label = "Has siblings (<= age 18) living in the home or has gone to day care in the past year", value = FALSE),
  checkboxInput("education", label = "At least one parent has earned a Bachelor's degree or higher", value = FALSE)
),

mainPanel(
  p('In a 2011 article in the journal Pediatrics (127:1, 35-41) Houben et al. published a scoring system to determine 
    a child’s risk for hospitalized respiratory syncytial virus (RSV) lower respiratory tract infection (LRTI), a 
    common infection in children seen in outpatient offices. You can determine a child’s risk for the disease by 
    answering these questions. If your total risk points are <4, the child has a 16.8% chance of developing RSV; 
    if risk points = 4, a 23.4% chance; and if >4, a 32% chance.'),
  p('For birthmonth between April and September, you responded'),
  verbatimTextOutput('month'),
  p('For birthweight >= 8.18 pounds, you responded'),
  verbatimTextOutput('weight'),
  p('For living with siblings or attending daycare, you responded'),
  verbatimTextOutput('sibs'),
  p('For parent educational attainment of undergraduate degree or higher, you responded'),
  verbatimTextOutput('education'),
  p('Based on these responses, risk points for birth month is'),
  verbatimTextOutput('monthrisk.RSV'),
  p('Based on these responses, risk points for birthweight is'),
  verbatimTextOutput('weightrisk.RSV'),
  p('Based on these responses, risk points for proximity to other children is'),
  verbatimTextOutput('sibrisk.RSV'),
  p('Based on these responses, risk points for parental educational achievement is'),
  verbatimTextOutput('educationrisk.RSV')
)
))
