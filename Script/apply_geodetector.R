library(geodetector)
library(tidyverse)
options("scipen"=100, "digits"=4)
knitr::opts_knit$set(root.dir = rprojroot::find_rstudio_root_file())
setwd("C:/Users/zheng/Desktop/Capstone")
#natural
natural <- read.csv("natural.csv")
natural[is.na(natural)] <- 1
#apply factor detector and interaction detector
#access
access_factor<-factor_detector ("access_MEAN",c("pop_den_label","MedInc_label","MedAge_label","Per_White_label","Per_Bach_label","Per_Public_label","pos_label","hosp_den_label","transit_den_label","non_transit_den_label","stop_den_label"),natural)
access_intersect<-interaction_detector("access_MEAN",c("pop_den_label","MedInc_label","MedAge_label","Per_White_label","Per_Bach_label","Per_Public_label","pos_label","hosp_den_label","transit_den_label","non_transit_den_label","stop_den_label"),natural)
write.csv(x=access_intersect,file="./results/natural/natural_intersect.csv")

access_factor1<-do.call(rbind, Map(data.frame, Population_density=access_factor [[1]], Median_Income=access_factor [[2]],Median_Age=access_factor [[3]],Percentage_of_White=access_factor [[4]],Percentage_of_Bachelor=access_factor [[5]],Percentage_of_Public_Transport=access_factor [[6]],COVID_Positive_Rate=access_factor [[7]],Testing_site_Density=access_factor [[8]],Transit_Road_Density=access_factor[[9]],Non_Transit_Road_Density=access_factor[[10]],Stop_Density=access_factor[[11]]))
write.csv(x=access_factor1,file="./results/natural/natural_factor.csv")

#quantile
quantile <- read.csv("quantile.csv")
quantile[is.na(quantile)] <- 1
#apply factor detector and interaction detector
#access
access_factor1<-factor_detector ("access_MEAN",c("pop_den_label","MedInc_label","MedAge_label","Per_White_label","Per_Bach_label","Per_Public_label","pos_label","hosp_den_label","transit_den_label","non_transit_den_label","stop_den_label"),quantile)