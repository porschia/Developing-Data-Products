shinyUI(
    navbarPage("US Average Weight Calculator",
        tabPanel("Plot",
            headerPanel("US Average Weights of Women Based on Height"),
        
            sidebarPanel(
                sliderInput('height', 'Height in Inches', value=58, min=58, max=72, step=1)
                ),
        
            mainPanel(
                h3("Results"),
                h4("You selected a height of"),
                verbatimTextOutput("inputValue"),
                h4("Which resulted in an average weight of "),
                verbatimTextOutput("prediction")
                )
            ),
        tabPanel("Documentation",
                 mainPanel(
                     includeMarkdown("include.md")
                     )
                 )
        )
    )