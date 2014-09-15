# Code Developed by neofranz user, for the Coursera Developing Data Products Course, enrolled as jfrancisco.zr@gmail.com
library("shiny")


shinyServer(
  
  function(input, output) {
    x   <- seq(-10,10,length=1001)
    col1 = 'black' # color for Gaussian1
    col2 = 'blue' # color for Gaussian2
    col3 = 'red' # color for Multiplication of Gaussian1 and Gaussian2
   
    output$gaussianPlots <- renderPlot({
 
      df1 <- dnorm(x, mean = input$mean1, sd = input$sdev1, log = FALSE)
      df2 <- dnorm(x, mean = input$mean2, sd = input$sdev2, log = FALSE)
      df3 <- df1 * df2
      minY = min(df1, df2)
      maxY = max(df1, df2)
      plot(x,y=df1,  type="l", col = col1 ,ylim=c(minY, maxY), xlim=c(-10,15), 
           main='Gaussian distributions modelling', ylab='probability')
      legend(x=9.5, y=maxY*0.8, legend='Gaussian 1', fill=NULL, col= col1, border=col1)
      lines(x,y=df2, col= col2)
      legend(x=9.5, y=maxY*0.6, legend='Gaussian 2', fill=NULL, col= col2, border=col2)
      if(input$displayMultiplication){
        lines(x,y=df3, col= col3)
        legend(x=9.5, y=maxY*0.4, legend='G1 x G2', fill=NULL, col= col3, border=col3)
      }  
  })
})
