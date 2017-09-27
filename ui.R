library(shiny)
require(markdown)

shinyUI(fluidPage(
  navbarPage("Tooth Length Explorer",
  # multi-page user-interface that includes a navigation bar
  
  tabPanel("Use the App",
    sidebarPanel(
      h3("Input Panel"),
      p("Play with the ToothGrowth dataset"),
      p("Select the predictor variable with length as outcome:"),
      
      selectInput("dose", label=strong("Pick up a Dose Level:"),
                   choices = list("0.5"= 0.5,"1" = 1, "2" = 2)),
      p('It is possible to choose the bar color:'),
      selectInput('color', label='Color', selected = "blue", choices=palette())
                  ),
      
      mainPanel(
      plotOutput("ToothGrowthPlot")
    )),
      
  tabPanel("About",
           mainPanel(
             includeMarkdown("about.md")
           )
  )
)))