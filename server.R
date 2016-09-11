fineval <- vector()
bmi <- function(hft,hin,wt) {
        rbmi <- round((wt/(hft*12+hin)^2)*703,1)

        ev <- vector()
        if(rbmi<18.5){
                ev <- c("Underweight")
        } else if(rbmi < 24.9) {
                ev <- c("Normal")
        } else if(rbmi < 29.9){
                ev <- c("Overweight")
        } else {
                ev <- c("Obese")
        }

        fineval <- c(rbmi,ev)
        return(fineval)

}

library(shiny)
shinyServer(
        function(input, output) {
                output$prediction <- renderPrint({bmi(input$heightft,input$heightin,input$weight)[1]})
                output$evaluation <- renderPrint({bmi(input$heightft,input$heightin,input$weight)[2]})


        }


)
