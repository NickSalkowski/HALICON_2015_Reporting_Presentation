library(shiny)
shinyServer(function(input, output, session) {
  selectedData <- reactive({
    iris[which(iris$Species == input$species), -5]
  })
  output$spec_title <- renderPrint({
    (h2(paste("Species:", input$species)))
  })
  output$plot1 <- renderPlot({
    with(selectedData(), plot(Sepal.Length, Sepal.Width))
  })
  output$plot2 <- renderPlot({
    with(selectedData(), plot(Petal.Length, Petal.Width))
  })
})
