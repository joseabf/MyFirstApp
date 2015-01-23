shinyUI(pageWithSidebar(headerPanel("Visualize mtcars data"),
                        sidebarPanel(sliderInput('number',h3('Choose how many values'),
                                                 value=10, min=1, max=30,step=1,),
                                     
                                     helpText("Choose the number of lines,", 
                                              "that you want to see."),
                                     
                                     selectInput("select", label = h3("Select Column"), 
                                                 choices = list("Miles per Gallon" = "mpg", "Horse Power" = "hp",
                                                                "Displacement" = "disp"), selected = 1),
                                     
                                     helpText("Choose the column key by order,", 
                                              "you can choose mpg, hp or disp"),
                                     
                                     radioButtons("order", label = h3("Decreasing or increasing"),
                                                  choices = list("Decreasing" = TRUE, "Increasing" = FALSE),selected = 1),
                                     
                                     helpText("Easy, decresing order or not") 
                                              
                                     ),
                        mainPanel(
                                tableOutput('newtable')
                                )
                        ))