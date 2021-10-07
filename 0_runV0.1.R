#Load packages ----
library(raster)
library(sp)
library(rgdal)
library(plyr)
library(dplyr)
library(tidyr)
library(reshape)
library(data.table)
library(mice)
library(lattice)
library(lme4)
library(Rphylopars)
library(phytools)
library(norm)
library(ggplot2)
library(ggstance)
library(ggeffects)
library(ggpubr)
library(ggridges)
library(ggnewscale)
library(ggtree)
library(ggtreeExtra)
library(viridis)
library(directlabels)
library(grid)
library(ncdf4) 
library(sf)
library(xml2)
library(rvest)
library(tidyverse)
library(spdep)
library(compositions)
library(rgeos)
library(R2jags)
library(loo)
library(MetricsWeighted)
library(SPEI)
library(car)
library(segmented)
library(geoR)
library(phytools)
library(reshape2)
library(RColorBrewer)
library(stringr)
library(rworldmap)
library(betareg)

setwd("carnivorans/CarnivorePopulationTrends/")

#Spatially represent populations ----
source(file = "Documents/ModellingTrends/Bayesian2.0/1_spatial_representation_v0.1.R")
#source(file = "Documents/ModellingTrends/Bayesian2.0/2_create_polygonsV0.1.R")

#Land-use  ----
#source(file = "Documents/ModellingTrends/Bayesian2.0/3_extract_environment_v0.1.R")
#source(file = "Documents/ModellingTrends/Bayesian2.0/4_assign_environment_v0.1.R")
#source(file = "Documents/ModellingTrends/Bayesian2.0/5_model_environment_v0.1.R")
#rm(list=setdiff(ls(), c("CoordJoin","Coords")))

#Climate ----
#source(file = "Documents/ModellingTrends/Bayesian2.0/6_download_chelsa_v0.1.R")
#source(file = "Documents/ModellingTrends/Bayesian2.0/7_extract_climate_v0.1.R")
#source(file = "Documents/ModellingTrends/Bayesian2.0/8_model_climate_v0.1.R")
#rm(list=setdiff(ls(), c("CoordJoin","Coords")))

#Governance ----
#source(file = "Documents/ModellingTrends/Bayesian2.0/9_impute_governance_v0.1.R")
#source(file = "Documents/ModellingTrends/Bayesian2.0/10_plot_governance_imputation_v0.1.R")
#rm(list=setdiff(ls(), c("CoordJoin","Coords")))

#Protected areas ----
#source(file = "Documents/ModellingTrends/Bayesian2.0/11_download_pas_v0.1.R")
#source(file = "Documents/ModellingTrends/Bayesian2.0/12_protected_areas_v0.1.R")

#Traits ----
#source(file = "Documents/ModellingTrends/Bayesian2.0/13_impute_traits_v0.1.R")
#source(file = "Documents/ModellingTrends/Bayesian2.0/14_plot_trait_imputation_v0.1.R")
#rm(list=setdiff(ls(), c("CoordJoin","Coords")))

#Trend ----
source(file = "Documents/ModellingTrends/Bayesian2.0/15_prepare_trend_v0.2.R")
rm(list=setdiff(ls(), c("Trends", "Coords")))

#Add covariates ----
source(file = "Documents/ModellingTrends/Bayesian2.0/16_add_covariates_v0.2.R")
rm(list=setdiff(ls(), c("")))
Trends = readRDS("Documents/ModellingTrends/Data/Analysis/DataToModel2.rds")

#Select model ----
source("Documents/ModellingTrends/Bayesian2.0/17_simulate_trend_error_v0.1.R")
source("Documents/ModellingTrends/Bayesian2.0/18_prepare_data_v0.6.R")
source("Documents/ModellingTrends/Bayesian2.0/19_weight_models_v0.3.R")
source("Documents/ModellingTrends/Bayesian2.0/20_level_models_v0.2.R")
source("Documents/ModellingTrends/Bayesian2.0/21_lag_models_v0.2.R")
#source("Documents/ModellingTrends/Bayesian2.0/22_selected_model_v0.2.R")

#Describe data ----

#Assess model ----
source("Documents/ModellingTrends/Bayesian2.0/23_check_assumptions_v0.1.R")
source("Documents/ModellingTrends/Bayesian2.0/24_scrutinise_model_v0.4.R")
source("Documents/ModellingTrends/Bayesian2.0/25_prepare_region_intercept_v0.1.R")
source("Documents/ModellingTrends/Bayesian2.0/26_prepare_country_intercept_v0.1.R")
source("Documents/ModellingTrends/Bayesian2.0/27_prepare_genus_intercept_v0.1.R")
source("Documents/ModellingTrends/Bayesian2.0/28_prepare_species_intercept_v0.1.R")
source("Documents/ModellingTrends/Bayesian2.0/29_scenario_plots_v0.3.R")


