#####################################################################
######################## HIGH RESOLUTION PT ######################### 
#####################################################################
# 8. Load the variables with higher resolution to project the model

#### Bioclimatic variables to project the model to (many not required, not in the model)
#I'll load all just in case...

#Load the ncdf4 package
library(ncdf4)
library(raster)
library(terra)
#remotes::install_github("ErikKusch/KrigR")
library(KrigR)

#2004
b2004 <- BioClim(
  Water_Var = "volumetric_soil_water_layer_1",
  Y_start = 2004,
  Y_end = 2004,
  T_res = "day",
  Extent = extent(-9.6, -6.3, 36.7, 42.40),
  DataSet = "era5-land",
  Dir = "D:\\Dados climáticos\\eras",
  verbose = TRUE,
  FileName = "2004",
  Keep_Raw = FALSE,
  Keep_Monthly = FALSE,
  #Buffer = 0.5,
  #ID = "ID",
  API_User = "46257",
  API_Key = "8954244a-cd45-4185-9d6b-7d71c665f6cf",
  TryDown = 10,
  TimeOut = 36000,
  SingularDL = FALSE
)

#2007
b2007 <- BioClim(
  Water_Var = "volumetric_soil_water_layer_1",
  Y_start = 2007,
  Y_end = 2007,
  T_res = "day",
  Extent = extent(-9.6, -6.3, 36.7, 42.40),
  DataSet = "era5-land",
  Dir = "D:\\Dados climáticos\\eras",
  verbose = TRUE,
  FileName = "2007",
  Keep_Raw = FALSE,
  Keep_Monthly = FALSE,
  #Buffer = 0.5,
  #ID = "ID",
  API_User = "46257",
  API_Key = "8954244a-cd45-4185-9d6b-7d71c665f6cf",
  TryDown = 10,
  TimeOut = 36000,
  SingularDL = FALSE
)

#2008
b2008 <- BioClim(
  Water_Var = "volumetric_soil_water_layer_1",
  Y_start = 2008,
  Y_end = 2008,
  T_res = "day",
  Extent = extent(-9.6, -6.3, 36.7, 42.40),
  DataSet = "era5-land",
  Dir = "D:\\Dados climáticos\\eras",
  verbose = TRUE,
  FileName = "2008",
  Keep_Raw = FALSE,
  Keep_Monthly = FALSE,
  #Buffer = 0.5,
  #ID = "ID",
  API_User = "46257",
  API_Key = "8954244a-cd45-4185-9d6b-7d71c665f6cf",
  TryDown = 10,
  TimeOut = 36000,
  SingularDL = FALSE
)

#2009
b2009 <- BioClim(
  Water_Var = "volumetric_soil_water_layer_1",
  Y_start = 2009,
  Y_end = 2009,
  T_res = "day",
  Extent = extent(-9.6, -6.3, 36.7, 42.40),
  DataSet = "era5-land",
  Dir = "D:\\Dados climáticos\\eras",
  verbose = TRUE,
  FileName = "2009",
  Keep_Raw = FALSE,
  Keep_Monthly = FALSE,
  #Buffer = 0.5,
  #ID = "ID",
  API_User = "46257",
  API_Key = "8954244a-cd45-4185-9d6b-7d71c665f6cf",
  TryDown = 10,
  TimeOut = 36000,
  SingularDL = FALSE
)

#2010 #REPETIR
b2010 <- BioClim(
  Water_Var = "volumetric_soil_water_layer_1",
  Y_start = 2010,
  Y_end = 2010,
  T_res = "day",
  Extent = extent(-9.6, -6.3, 36.7, 42.40),
  DataSet = "era5-land",
  Dir = "D:\\Dados climáticos\\eras",
  verbose = TRUE,
  FileName = "2010",
  Keep_Raw = FALSE,
  Keep_Monthly = FALSE,
  #Buffer = 0.5,
  #ID = "ID",
  API_User = "46257",
  API_Key = "8954244a-cd45-4185-9d6b-7d71c665f6cf",
  TryDown = 10,
  TimeOut = 36000,
  SingularDL = FALSE
)

#2015
b2015 <- BioClim(
  Water_Var = "volumetric_soil_water_layer_1",
  Y_start = 2015,
  Y_end = 2015,
  T_res = "day",
  Extent = extent(-9.6, -6.3, 36.7, 42.40),
  DataSet = "era5-land",
  Dir = "D:\\Dados climáticos\\eras",
  verbose = TRUE,
  FileName = "2015",
  Keep_Raw = FALSE,
  Keep_Monthly = FALSE,
  #Buffer = 0.5,
  #ID = "ID",
  API_User = "46257",
  API_Key = "8954244a-cd45-4185-9d6b-7d71c665f6cf",
  TryDown = 10,
  TimeOut = 36000,
  SingularDL = FALSE
)

#2016
b2016 <- BioClim(
  Water_Var = "volumetric_soil_water_layer_1",
  Y_start = 2016,
  Y_end = 2016,
  T_res = "day",
  Extent = extent(-9.6, -6.3, 36.7, 42.40),
  DataSet = "era5-land",
  Dir = "D:\\Dados climáticos\\eras",
  verbose = TRUE,
  FileName = "2016",
  Keep_Raw = FALSE,
  Keep_Monthly = FALSE,
  #Buffer = 0.5,
  #ID = "ID",
  API_User = "46257",
  API_Key = "8954244a-cd45-4185-9d6b-7d71c665f6cf",
  TryDown = 10,
  TimeOut = 36000,
  SingularDL = FALSE
)

#2021
b2021 <- BioClim(
  Water_Var = "volumetric_soil_water_layer_1",
  Y_start = 2021,
  Y_end = 2021,
  T_res = "day",
  Extent = extent(-9.6, -6.3, 36.7, 42.40),
  DataSet = "era5-land",
  Dir = "D:\\Dados climáticos\\eras",
  verbose = TRUE,
  FileName = "2021",
  Keep_Raw = FALSE,
  Keep_Monthly = FALSE,
  #Buffer = 0.5,
  #ID = "ID",
  API_User = "46257",
  API_Key = "8954244a-cd45-4185-9d6b-7d71c665f6cf",
  TryDown = 10,
  TimeOut = 36000,
  SingularDL = FALSE
)

getwd()
setwd("~/github/blue_tongue")

names_bioclimatic <- c("bio1", "bio2", "bio3", "bio4", "bio5", "bio6", "bio7", 
                       "bio8", "bio9", "bio10", "bio11", "bio12", "bio13", "bio14", 
                       "bio15", "bio16", "bio17", "bio18", "bio19")

names(b2004) <- names_bioclimatic
names(b2007) <- names_bioclimatic
names(b2008) <- names_bioclimatic
names(b2009) <- names_bioclimatic
names(b2010) <- names_bioclimatic
names(b2015) <- names_bioclimatic
names(b2016) <- names_bioclimatic
names(b2021) <- names_bioclimatic

#Upload Portugal and mask
portugal_shapefile <- raster::shapefile("C:/fw_space/Portugal.shp")
#
b2004_2 <- mask(b2004, portugal_shapefile)
b2007_2 <- mask(b2007, portugal_shapefile)
b2008_2 <- mask(b2008, portugal_shapefile)
b2009_2 <- mask(b2009, portugal_shapefile)
b2010_2 <- mask(b2010, portugal_shapefile)
b2015_2 <- mask(b2015, portugal_shapefile)
b2016_2 <- mask(b2016, portugal_shapefile)
b2021_2 <- mask(b2021, portugal_shapefile)




