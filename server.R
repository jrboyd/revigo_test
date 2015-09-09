shinyServer(function(input, output, session) {
  
  output$rev_btn = renderUI({
    tags$p(tags$a(href = paste0("javascript: submitform('renderUI gogog')"), "Submit Revigo"))
  })
  
  output$goList = reactive(goList)
  
  observeEvent(input$submit_revigo, {
    print('gogogo')
    
  })
})