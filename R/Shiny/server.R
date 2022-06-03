#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

#Import Données Préparés en Amont


# Define server logic required to draw a histogram
shinyServer(function(input, output) {
  

  output$Prediction <- renderText({ 
    paste("L'estimation de ",
          format(input$date, "%b %y"),
          " est de ",
          round(
            predict(Regression,newdata = data.frame(X = ((as.numeric(format(input$date, "%m")) - 1) * (1 / 12) 
                                                         + as.numeric(format(input$date, "%Y")))))
              + predict(Regression2, newdata = data.frame(mois = (as.numeric(format(input$date, "%m")) - 1) * (1 / 12)))
              ),
            " voyageurs")
  })

})
