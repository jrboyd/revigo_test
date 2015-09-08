note1 = "The text you enter here will be automagically transferred into REVIGO's input box. The user will just need to click 'Start Revigo'!"
note2 = "Put a list of your favorite Gene Ontology categories here. Of course, you may also enter other things which will be transferred to REVIGO, although it will not know how to handle them."
radio_note = "The option you select with the radio button will also be automatically transferred to REVIGO: "

shinyUI(bootstrapPage(
  
  selectInput(inputId = "n_breaks",
              label = "Number of bins in histogram (approximate):",
              choices = c(10, 20, 35, 50),
              selected = 20),
  
  checkboxInput(inputId = "individual_obs",
                label = strong("Show individual observations"),
                value = FALSE),
  
  checkboxInput(inputId = "density",
                label = strong("Show density estimate"),
                value = FALSE),
  
  plotOutput(outputId = "main_plot", height = "300px"),
  
  # Display this only if the density is shown
  conditionalPanel(condition = "input.density == true",
                   sliderInput(inputId = "bw_adjust",
                               label = "Bandwidth adjustment:",
                               min = 0.2, max = 2, value = 1, step = 0.2)
  ),
  
  tags$form(action = "http://revigo.irb.hr/", method="post", target="_blank",  note1,  
            tags$p(tags$textarea(name = "inputGoList", rows = "10", cols = "80", note2)),
            tags$p(radio_note),
            tags$p(
              tags$input(type="radio", name="isPValue", value="yes", "p-values"),
              tags$input(type="radio", name="isPValue", value="no", "some other quantity")),
            tags$br(),
            "This also works with dropdown lists",
            tags$select(name = 'whatIsBetter', 
                        tags$option(value="higher", "higher is better"),
                        tags$option(value="lower", "lower is better"),
                        tags$option(value="absolute", "larger absolute value is better"),
                        tags$option(value="abs_log", "larger absolute log2 value is better")),
            tags$input(type="submit", name="startRevigo", value="Start Revigo")),
  # tags$p(tags$a(target="_blank", href="file///H:/revigo_submission.html", "go somewhere" ))
  
)


)