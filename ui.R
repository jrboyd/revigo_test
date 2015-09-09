goList = "GO:0009268 1e-14
GO:0010447 1e-14
GO:0000027 1e-297
GO:0042255 1e-297
GO:0042257 1e-297
GO:0042273 1e-297"

goList2 = 'GOGOGO'

shinyUI(bootstrapPage(
  
  tags$script(src = "submitform.js"),
  tags$p(tags$a(href = "javascript: submitform('button 1 was clicked')", "Submit Revigo")),
  uiOutput("rev_btn"),
  actionButton("submit_revigo", "Submit Revigo")
)


)