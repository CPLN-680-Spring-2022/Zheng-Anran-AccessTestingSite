library(mapview)
library(tigris)
library(tidycensus)
library(tidyverse)
library(sf)
library(rgdal)
library(maptools)
options(tigris_use_cache = TRUE)

nyc_zctas <- zctas(
  cb = TRUE, 
  starts_with = c("100", "101","102","103","104","110","111","112","113","114","116","99999"),
  year = 2019
)
mapview(nyc_zctas)

Variables <- c(TotalPop = "B01003_001E", White = "B02001_002E", Bachelor = "B06009_005E", Trans_Mode = "B08301_001E", Pub_trans = "B08301_010E",MedInc="B06011_001E",MedAge="B01002_001E")

ZCTAGeography <- zctas(state = "NY", year = 2010)
NYCCensus <- get_acs(geography = "zcta", variables = Variables, year = 2019, survey = "acs5", output = "wide") %>%
  select(TotalPop,White,Bachelor,Trans_Mode,Pub_trans,MedInc,MedAge,GEOID) %>%
  mutate(Per_White = White / TotalPop,
         Per_Bach = Bachelor/ TotalPop,
         Per_Public = Pub_trans / Trans_Mode)

covidMap<-readShapeSpatial("C:/Users/zheng/Desktop/Capstone/MODZCTA_2010.shp")
NYCCensus2<-merge(covidMap,NYCCensus,by.x="MODZCTA",by.y="GEOID")
mapview(NYCCensus2)

write_sf(NYCCensus2, "C:/Users/zheng/Desktop/Capstone/NYCCensus.shp")
