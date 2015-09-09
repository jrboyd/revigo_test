source("setup.R")

shinyServer(function(input, output, session) {
  goList = reactive({
    v = input$rev_examples
    out = goList1
    if(v == 2){
      out = goList2
    }else if(v == 3){
      out = goList3
    }
    # out = goList_tiny
    return(out)
  })
  
  output$rev_btn = renderUI({
    gl = prep_goList(goList())
    # gl = "test test"
    tags$p(tags$a(href = paste0("javascript: submitform('", gl , "')"), "Submit Revigo"))
  })
  
  observeEvent(input$submit_revigo, {
    print('gogogo')
    
  })
})