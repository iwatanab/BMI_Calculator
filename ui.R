library(shiny)
require(markdown)
shinyUI(pageWithSidebar(
        headerPanel("BMI Calculation"),

        #################################################

        sidebarPanel(
                numericInput('weight','Enter your weight in lbs',0,step = 1),
                numericInput('heightft','Enter the first part of your height in feet',0,step = 1),
                numericInput('heightin','Enter the second part of your height in inches',min = 0, max = 12,0,step = 1),
                submitButton('Submit')
        ),

        #################################################

        mainPanel(
                includeMarkdown("include.md"),
                h3('BMI'),
                verbatimTextOutput("prediction"),
                h3('Evaluation'),
                verbatimTextOutput("evaluation")




        )


))
