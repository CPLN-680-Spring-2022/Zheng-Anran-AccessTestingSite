library(mapview)
library(tigris)
library(tidycensus)
library(tidyverse)
library(sf)
library(rgdal)
library(maptools)
library(dplyr)
library(broom)
library(httr)
library(sp)
options(tigris_use_cache = TRUE)

nyc_tracts <- tracts(state = '36', county = c('061','047','081','005','085'))
Variables <- c(TotalPop = "B01003_001E", White = "B02001_002E", Bachelor = "B06009_005E", Trans_Mode = "B08301_001E", Pub_trans = "B08301_010E",MedInc="B06011_001E",MedAge="B01002_001E")
NYCCensus <- get_acs(geography = "tract", state = '36', county = c('061','047','081','005','085'), variables = Variables, year = 2019, survey = "acs5", output = "wide",geometry = TRUE) %>%
  select(TotalPop,White,Bachelor,Trans_Mode,Pub_trans,MedInc,MedAge,GEOID) %>%
  mutate(Per_White = White / TotalPop,
         Per_Bach = Bachelor/ TotalPop,
         Per_Public = Pub_trans / Trans_Mode)
setwd("C:/Users/zheng/Desktop/Capstone/Zheng-Anran-AccessTestingSite/rawdata")
st_write(NYCCensus,"NYCtracts.shp")
