library(shiny)
shinyServer(
  function(input, output) {
    output$houtput<-renderPrint({input$height})
    output$woutput<-renderPrint({input$weight})
    output$bmi <- renderPrint({
      round(input$weight/(input$height/100)^2,2)
      })
   
    output$result <-renderText({
      if(input$weight/(input$height/100)^2 < 18.5) "malnutrition"
      else if(input$weight/(input$height/100)^2>=18.5 & input$weight/(input$height/100)^2<=24.99) "healthy" 
      else  "overweight"
    })
  }
)