library(datasets)
data(women)

weightAverage <- function(height){
    weight <- women[women$height == height, ]
    weight[,2]
}

shinyServer(
    function(input, output){
        output$inputValue <- renderPrint({input$height})
        output$prediction <- renderPrint({weightAverage(input$height)})
    }
    )