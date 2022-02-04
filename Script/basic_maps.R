library(sf)
library(raster)
#> Warning: multiple methods tables found for 'direction'
#> Warning: multiple methods tables found for 'gridDistance'
library(dplyr)
library(spData)
library(tmap)    # for static and interactive maps
library(leaflet) # for interactive maps
library(ggplot2) # tidyverse data visualization package
library(tidyverse)

setwd("C:/Users/zheng/Desktop/Capstone/Zheng-Anran-AccessTestingSite/rawdata")
ny<-read_sf("NYCtracts.shp")%>%
  na.omit()

map1=tm_shape(ny) + tm_polygons(col = "Per_White", palette = "BuGn")
map2=tm_shape(ny) + tm_polygons(col = "MedInc", palette = "Blues",n=5)
map3=tm_shape(ny) + tm_polygons(col = "Per_Bach", palette = "Purples")
map4=tm_shape(ny) + tm_polygons(col = "Per_Public")
map5=tm_shape(ny) + tm_polygons(col = "MedAge", palette = "Greens")
map6=tm_shape(ny) + tm_polygons(col = "TotalPop", palette = "RdPu")

tmap_arrange(map1,map2,map3,map4,map5,map6)
