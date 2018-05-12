shinyServer(function(input, output) {
  #comparison<-input
  weights<-c(.3,.25,.15,.10,.10,.5,.5)
  vals<-reactiveValues()
  observe({
    vals$v0<-input$ref
    vals$v1<-input$management
    vals$v2<-input$opp
    vals$v3<-input$tech
    vals$v4<-input$comp
    vals$v5<-input$hihis
    vals$v6<-input$invest
    vals$v7<-input$other
    comparison_vector<-c(vals$v1,vals$v2,vals$v3,vals$v4,vals$v5,vals$v6,vals$v7)
    output$val<-renderText({(as.numeric(weights%*%comparison_vector)*vals$v0)})
    output$string<-renderText({paste(' million Euros')})
                                
  })
  
  
}) 
