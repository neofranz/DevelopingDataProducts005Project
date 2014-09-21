# Code Developed by neofranz user, for the Coursera Developing Data Products Course, enrolled initials JFZ
library(shiny)
# ui.R

shinyUI(pageWithSidebar(
  headerPanel("Gaussian distributions dynamic plotting and multiplication"),
  sidebarPanel(
    h4("Parameters to modify the Gaussian distributions:"),
    helpText("Instructions: Select the mean and variance of each of the Gaussian distributions.",
             "Use the sliders to change the respective values. Use the button to hide or display",
             "the multiplication of these distributions."),
    sliderInput('mean1', 'Mean of Gaussian 1',value = -1, min = -10, max = 10, step = .01,),
    sliderInput('sdev1', 'Variance of Gaussian 1', value = 1, min = .1, max = 5.0, step = 0.1,),
    sliderInput('mean2', 'Mean of Gaussian 2',value = 1, min = -10, max = 10, step = .01,),
    sliderInput('sdev2', 'Variance of Gaussian 2', value = 2, min = .1, max = 5.0, step = 0.1,),
    h4("Show Gaussian multiplication checkbox"),
    helpText("The Gaussian curve in red is the non-normalized multiplication of Gaussian 1 and 2.", 
             "Click on the checkbox below to display or hide the Gaussian in red."),
    checkboxInput("displayMultiplication", label = "Display multiplication", value = TRUE)

  ),
  mainPanel(
    # Area to render the plots
    h4("Dynamic plot of Gaussian distributions:"),
    helpText("A Gaussian or normal distribution is one of the most important concepts in statistics.",
             "The mean or expectation of the distribution it is also its median and mode.", 
             "The variance  measures how far a set of numbers is spread out with respect to the mean.",
             "The product of two Gaussian distribtions lead to another Gaussian distribution as rendered below.",
             "Follow the instructions in the  sidebar panel on the left to modify these distributions."),
    plotOutput('gaussianPlots')
    
  )
))

