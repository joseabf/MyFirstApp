library(UsingR)
data(mtcars)

shinyServer(
        function(input,output){
                output$newtable<-renderTable({
                        var<-input$select
                        order_table=order(mtcars[,var],decreasing=input$order)
                        mtcars_order=mtcars[order_table,]
                        head(mtcars_order,n=input$number)
                })
                
        })