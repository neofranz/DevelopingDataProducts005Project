# Code Developed by neofranz user, for the Coursera Developing Data Products Course, enrolled as jfrancisco.zr@gmail.com
library(shiny)
# ui.R

shinyUI(pageWithSidebar(
  headerPanel("Demo of multiplication"),
  sidebarPanel(
    sliderInput('mean1', 'Mean of Gaussian 1',value = -1, min = -10, max = 10, step = .01,),
    sliderInput('sdev1', 'Variance of Gaussian 1', value = 1, min = .1, max = 5.0, step = 0.1,),
    sliderInput('mean2', 'Mean of Gaussian 2',value = 1, min = -10, max = 10, step = .01,),
    sliderInput('sdev2', 'Variance of Gaussian 2', value = 2, min = .1, max = 5.0, step = 0.1,),
    h3("Multiplication checkbox"),
    checkboxInput("displayMultiplication", label = "Display multiplication", value = TRUE),
    helpText("Note: select the mean and variance of each of the Gaussian distributions.",
               "Use the sliders to change the respective values. Use the button to hide or display",
                "the multiplication of these distributions.")
  ),
  mainPanel(
    img(src="gaussianCvs.jpg", height=150, width= 300),
    plotOutput('gaussianPlots')
    
  )
))


