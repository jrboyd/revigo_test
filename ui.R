source("setup.R")

shinyUI(bootstrapPage(
  
  tags$script(src = "submitform.js"),
  #   tags$p(tags$a(href = "javascript: submitform('button 1 was clicked')", "Submit Revigo")),
  uiOutput("rev_btn"),
  radioButtons("rev_examples", "Examples", choices = 1:3, selected = 1)
)


)