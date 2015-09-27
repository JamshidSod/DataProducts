library(shiny)
require(rCharts)
library(ggplot2)


shinyServer(function(input, output) {
        
        formulaText <- reactive({
                paste("Freq ~", input$variable)
        })
        
        
        output$caption <- renderText({
                formulaText()
        })
        
        output$myPlot <- renderChart({
                REGION = input$variable
                n1 <- nPlot(Freq ~ Region, group='Project.Status', type='multiBarChart',
                            data = subset(Threevar, Region == REGION)
                )
              
        })
        
         
})