#base
library(leaflet)
library(mapview)
library(jpeg)
library(png)
m <- leaflet(options = leafletOptions(minZoom = 0,maxZoom = 25)) %>%
  addTiles() %>%  # Add default OpenStreetMap map tiles
  addMarkers(lng=174.768, lat=-36.852, popup="The birthplace of R")
m 
#playing with providers
#providers$Stamen.TonerLite
m <- leaflet() %>% 
  setView(lng = 23.727539, lat = 37.983810, zoom = 12) %>%
  addProviderTiles(providers$CartoDB.Positron)#,options = providerTileOptions(opacity = 1.2))%>%
  #addProviderTiles(providers$Stamen.TonerLabels)
m
#markers
pth='C:/Users/karvo/Desktop/vinocular/crack-beginning/shiny_app/tests/'
pth2=paste(pth,'2.PNG',sep='')
pth3=paste(pth,'3.png',sep='')
pth4=paste(pth,'4.png',sep='')
pth5=paste(pth,'5.png',sep='')
pth6=paste(pth,'6.png',sep='')

#img <- system.file('img','first.png',package="png")
m <- leaflet() %>%
  addProviderTiles(providers$CartoDB.Positron)%>%
  addMarkers(lng=22.145549,lat = 38.202045,popup = popupImage(pth2))%>%
  addMarkers(lng=22.084837,lat = 38.232141,popup = popupImage(pth3))%>%
  addMarkers(lng=22.734404,lat = 37.984656,popup = popupImage(pth4))%>%
  addMarkers(lng=23.359569,lat = 37.993534,popup = popupImage(pth5))%>%
  addMarkers(lng=23.594230,lat = 38.093268,popup = popupImage(pth6))
m



