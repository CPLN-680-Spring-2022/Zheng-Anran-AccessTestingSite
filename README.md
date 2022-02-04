# Spatial accessibility to the COVID-19 testing sites and the driven factors behind in NYC
 Anran Zheng's Capstone Project
## Introduction
With the emerging variants, the COVID-19 is spreading all over the world, posing health and economic threats to numerous regions. The outbreak of COVID-19 has reflected some challenges that many cities are facing with, such as the inequal distribution of medical resources and the insufficient supply of COVID testing packages and vaccination. Currently few studies explored the spatial accessibility to COVID testing sites. Such research mainly focused on Florida state (Ghorbanzadeh et al., 2021). However, investigating a smaller, more precise level region will be more meaningful because in reality, people tend to travel within a sub-region to access the COVID-19 medical resources timely. In addition, many research analyzed the relationship between confirmed cases and its influencing factors (Cordes & Castro, 2020), and very few explored the driven factors of spatial accessibility to medical resources, especially from a geographic perspective.  
Based on these challenges, this study will explore the spatial distribution of COVID testing sites, analyze the testing sites accessibilities and its influencing factors in NYC. It will answer the following questions:  Based on the transit network, do New Yorkers have equal access to the COVID testing sites? If not, what’s the possible reasons and how to solve in the future? The findings can provide a framework for urban decision makers to plan the spatial distribution of medical infrastructures and allocate the medical resource rationally.
## Data
Instead of collecting data of ZCTA level at first, I gather the data of census tract level since this is much more precise. Here is the data source:
|     Data     |            Source            | 
| :------------: | :------------------------: | 
|    COVID testing sites    |      [URISA's GISCorps](https://covid-19-giscorps.hub.arcgis.com/apps/locate-a-covid-19-testing-provider/explore)     | 
| Subway/bus stations |          [OpenMobilityData](https://transitfeeds.com/p/mta)             | 
| Road network  |         [Open Street Map](https://download.bbbike.org/osm/bbbike/NewYork/)       |
| NYC Demographic Data (census tract) e.g. median income, age, race …    |         [US Census](https://www.census.gov/)       |  

Table 1. Possible data sources for capstone project  

## Methods
- the spatial distribution of COVID-19 testing sites  
With spatial autocorrelation and kernel density estimation methods, the spatial clustering pattern of COVID-19 testing sites will be identified at the very beginning.  
- the spatial accessibility of COVID-19 testing sites based on the transit network  
With the revised 2SFCA methods, I hope to explore the testing sites spatial accessibilities for residents in NYC by different transit modes, like walking, bicycles or cars. By integrating and analyzing the road network, residential sites and COVID-19 testing sites, the GIS-based network can build a O-D travel time matrix, which evaluate the travel time from residential sites to testing sites. 
- the influencing factors of spatial accessibility to COVID-19 testing sites  
Based on some internal factors (the COVID-19 confirmed cases, the density of testing sites, population and road network) and some external factors (median income, age, race, etc) in every ZCTA blocks in NYC, this study will apply Geodetector method to analyze the influencing factors of spatial accessibilities of testing sites.  
 ## Expected Results  
 My final deliverable will be a research paper with GIS analysis about a substantive question. 
 
