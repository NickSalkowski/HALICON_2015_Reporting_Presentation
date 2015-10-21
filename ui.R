library(shiny)
shinyUI(pageWithSidebar(
  headerPanel('Iris Summary Plots'),
  sidebarPanel(
    selectInput('species', 'Species', 
                unique(as.character(iris$Species)))),
  mainPanel(
    htmlOutput("spec_title"),
    plotOutput('plot1'),
    plotOutput('plot2')
  )
))