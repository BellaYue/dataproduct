library(shiny)
library(ggplot2)



shinyServer(function(input, output) {
  
  data("ToothGrowth")
  td <- ToothGrowth
  
  output$ToothGrowthPlot <- renderPlot({
    
    if (input$dose == 0.5) {
      # Dose level 0.5
      td_dose5 <- td[td$dose== 0.5,]
      boxplot(len ~ supp, td_dose5, col=input$color, ylab="Tooth Length in mm", 
              xlab="Delivery type",
              main = "Tooth Length by Delivery Method - 0.5 mg")     
    }
    else if (input$dose == 1) {
      # Dose level 1
      td_dose1 <- td[td$dose== 1,]
      boxplot(len ~ supp, td_dose1, col=input$color, ylab="Tooth Length in mm", 
              xlab="Delivery type",
              main = "Tooth Length by Delivery Method - 1 mg")
    }
    else if (input$dose == 2) {
      # Dose level 2
      td_dose2 <- td[td$dose== 2,]
      boxplot(len ~ supp, td_dose2, col=input$color, ylab="Tooth Length in mm", 
              xlab="Delivery type",
              main = "Tooth Length by Delivery Method - 2 mg")     
    }
  })
  
})