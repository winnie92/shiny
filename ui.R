library(shiny)
shinyUI(pageWithSidebar(
  headerPanel("Calculating your BMI"),
  sidebarPanel(
    h5("The body mass index (BMI) is a measure of relative weight based on an individual's mass and heigh, which is also commonly used to measure if you are overweight by the health insituations."),
    numericInput("height","Please enter your Height:cm",160,min=50,max=250,step=1),
    numericInput("weight","Please enter your Weight:kg",50,min=30,max=90,step=1),
    submitButton("submit")
    
  ),
  mainPanel(
    
    p("you entered a height of"),
    verbatimTextOutput("houtput"),    
    p("you entered a weight of"),
    verbatimTextOutput("woutput"),
    p("Your Body Mass Index"),
    verbatimTextOutput("bmi"),
    p("result"),
    verbatimTextOutput("result")
  )
))

