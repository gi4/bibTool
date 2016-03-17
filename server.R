## Shiny Server

shinyServer(function(input, output) {

  output$mytable1 <- DT::renderDataTable({
    DT::datatable(yesterday[, input$show_vars, drop = FALSE], escape=FALSE, options = list(search = list(regex = TRUE)), filter = 'top')
  })

  output$mytable2 <- DT::renderDataTable({
    DT::datatable(bibt, escape=FALSE, options = list(orderClasses = TRUE))
  })

  output$mytable3 <- DT::renderDataTable({
    DT::datatable(bibt, escape = FALSE, options = list(lengthMenu = c(5, 30, 50), pageLength = 5))
  })

   output$mytable4 <- DT::renderDataTable({
    DT::datatable(bibt, escape = FALSE,  options = list(lengthMenu = c(5, 30, 50), pageLength = 5))
  })

   output$mytable5 <- DT::renderDataTable({
   DT::datatable(bibt[, input$show_vars, drop = FALSE], escape=FALSE, options = list(search = list(regex = TRUE)), filter = 'top')
  })
  
})
