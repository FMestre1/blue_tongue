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
  Water_Var = "total_precipitation",
  Y_start = 2004,
  Y_end = 2004,
  T_res = "day",
  Extent = extent(-9.6, -6.3, 36.7, 42.40),
  DataSet = "era5-land",
  Dir = "D:\\Dados climáticos\\eras2",
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
  Water_Var = "total_precipitation",
  Y_start = 2007,
  Y_end = 2007,
  T_res = "day",
  Extent = extent(-9.6, -6.3, 36.7, 42.40),
  DataSet = "era5-land",
  Dir = "D:\\Dados climáticos\\eras2",
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
  Water_Var = "total_precipitation",
  Y_start = 2008,
  Y_end = 2008,
  T_res = "day",
  Extent = extent(-9.6, -6.3, 36.7, 42.40),
  DataSet = "era5-land",
  Dir = "D:\\Dados climáticos\\eras2",
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
  Water_Var = "total_precipitation",
  Y_start = 2009,
  Y_end = 2009,
  T_res = "day",
  Extent = extent(-9.6, -6.3, 36.7, 42.40),
  DataSet = "era5-land",
  Dir = "D:\\Dados climáticos\\eras2",
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
  Water_Var = "total_precipitation",
  Y_start = 2010,
  Y_end = 2010,
  T_res = "day",
  Extent = extent(-9.6, -6.3, 36.7, 42.40),
  DataSet = "era5-land",
  Dir = "D:\\Dados climáticos\\eras2",
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
  Water_Var = "total_precipitation",
  Y_start = 2015,
  Y_end = 2015,
  T_res = "day",
  Extent = extent(-9.6, -6.3, 36.7, 42.40),
  DataSet = "era5-land",
  Dir = "D:\\Dados climáticos\\eras2",
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
  Water_Var = "total_precipitation",
  Y_start = 2016,
  Y_end = 2016,
  T_res = "day",
  Extent = extent(-9.6, -6.3, 36.7, 42.40),
  DataSet = "era5-land",
  Dir = "D:\\Dados climáticos\\eras2",
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
  Water_Var = "total_precipitation",
  Y_start = 2021,
  Y_end = 2021,
  T_res = "day",
  Extent = extent(-9.6, -6.3, 36.7, 42.40),
  DataSet = "era5-land",
  Dir = "D:\\Dados climáticos\\eras2",
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


################################################################################

tmin_2004 <- stack("terraclimate\\tmin\\TerraClimate_tmin_2004.nc")
tmin_2007 <- stack("terraclimate\\tmin\\TerraClimate_tmin_2007.nc")
tmin_2008 <- stack("terraclimate\\tmin\\TerraClimate_tmin_2008.nc")
tmin_2009 <- stack("terraclimate\\tmin\\TerraClimate_tmin_2009.nc")
tmin_2010 <- stack("terraclimate\\tmin\\TerraClimate_tmin_2010.nc")
tmin_2015 <- stack("terraclimate\\tmin\\TerraClimate_tmin_2015.nc")
tmin_2016 <- stack("terraclimate\\tmin\\TerraClimate_tmin_2016.nc")
tmin_2021 <- stack("terraclimate\\tmin\\TerraClimate_tmin_2021.nc")
#
tmin_2004_2 <- mask(tmin_2004, portugal_shapefile)
tmin_2007_2 <- mask(tmin_2007, portugal_shapefile)
tmin_2008_2 <- mask(tmin_2008, portugal_shapefile)
tmin_2009_2 <- mask(tmin_2009, portugal_shapefile)
tmin_2010_2 <- mask(tmin_2010, portugal_shapefile)
tmin_2015_2 <- mask(tmin_2015, portugal_shapefile)
tmin_2016_2 <- mask(tmin_2016, portugal_shapefile)
tmin_2021_2 <- mask(tmin_2021, portugal_shapefile)

tmax_2004 <- stack("terraclimate\\tmax\\TerraClimate_tmax_2004.nc")
tmax_2007 <- stack("terraclimate\\tmax\\TerraClimate_tmax_2007.nc")
tmax_2008 <- stack("terraclimate\\tmax\\TerraClimate_tmax_2008.nc")
tmax_2009 <- stack("terraclimate\\tmax\\TerraClimate_tmax_2009.nc")
tmax_2010 <- stack("terraclimate\\tmax\\TerraClimate_tmax_2010.nc")
tmax_2015 <- stack("terraclimate\\tmax\\TerraClimate_tmax_2015.nc")
tmax_2016 <- stack("terraclimate\\tmax\\TerraClimate_tmax_2016.nc")
tmax_2021 <- stack("terraclimate\\tmax\\TerraClimate_tmax_2021.nc")
#
tmax_2004_2 <- mask(tmax_2004, portugal_shapefile)
tmax_2007_2 <- mask(tmax_2007, portugal_shapefile)
tmax_2008_2 <- mask(tmax_2008, portugal_shapefile)
tmax_2009_2 <- mask(tmax_2009, portugal_shapefile)
tmax_2010_2 <- mask(tmax_2010, portugal_shapefile)
tmax_2015_2 <- mask(tmax_2015, portugal_shapefile)
tmax_2016_2 <- mask(tmax_2016, portugal_shapefile)
tmax_2021_2 <- mask(tmax_2021, portugal_shapefile)

prec_2004 <- stack("terraclimate\\prec\\TerraClimate_ppt_2004.nc")
prec_2007 <- stack("terraclimate\\prec\\TerraClimate_ppt_2007.nc")
prec_2008 <- stack("terraclimate\\prec\\TerraClimate_ppt_2008.nc")
prec_2009 <- stack("terraclimate\\prec\\TerraClimate_ppt_2009.nc")
prec_2010 <- stack("terraclimate\\prec\\TerraClimate_ppt_2010.nc")
prec_2015 <- stack("terraclimate\\prec\\TerraClimate_ppt_2015.nc")
prec_2016 <- stack("terraclimate\\prec\\TerraClimate_ppt_2016.nc")
prec_2021 <- stack("terraclimate\\prec\\TerraClimate_ppt_2021.nc")
#
prec_2004_2 <- mask(prec_2004, portugal_shapefile)
prec_2007_2 <- mask(prec_2007, portugal_shapefile)
prec_2008_2 <- mask(prec_2008, portugal_shapefile)
prec_2009_2 <- mask(prec_2009, portugal_shapefile)
prec_2010_2 <- mask(prec_2010, portugal_shapefile)
prec_2015_2 <- mask(prec_2015, portugal_shapefile)
prec_2016_2 <- mask(prec_2016, portugal_shapefile)
prec_2021_2 <- mask(prec_2021, portugal_shapefile)

#Derive bioclimatic
biovars_2004 <- dismo::biovars(prec = prec_2004_2, tmin = tmin_2004_2, tmax = tmax_2004_2) 
biovars_2007 <- dismo::biovars(prec = prec_2007_2, tmin = tmin_2007_2, tmax = tmax_2007_2) 
biovars_2008 <- dismo::biovars(prec = prec_2008_2, tmin = tmin_2008_2, tmax = tmax_2008_2) 
biovars_2009 <- dismo::biovars(prec = prec_2009_2, tmin = tmin_2009_2, tmax = tmax_2009_2) 
biovars_2010 <- dismo::biovars(prec = prec_2010_2, tmin = tmin_2010_2, tmax = tmax_2010_2) 
biovars_2015 <- dismo::biovars(prec = prec_2015_2, tmin = tmin_2015_2, tmax = tmax_2015_2) 
biovars_2016 <- dismo::biovars(prec = prec_2016_2, tmin = tmin_2016_2, tmax = tmax_2016_2) 
biovars_2021 <- dismo::biovars(prec = prec_2021_2, tmin = tmin_2021_2, tmax = tmax_2021_2) 

#Write the raster
raster::writeRaster(biovars_2004$bio1, filename = "2004\\bio1.tif")
raster::writeRaster(biovars_2004$bio2, filename = "2004\\bio2.tif")
raster::writeRaster(biovars_2004$bio3, filename = "2004\\bio3.tif")
raster::writeRaster(biovars_2004$bio4, filename = "2004\\bio4.tif")
raster::writeRaster(biovars_2004$bio5, filename = "2004\\bio5.tif")
raster::writeRaster(biovars_2004$bio6, filename = "2004\\bio6.tif")
raster::writeRaster(biovars_2004$bio7, filename = "2004\\bio7.tif")
raster::writeRaster(biovars_2004$bio8, filename = "2004\\bio8.tif")
raster::writeRaster(biovars_2004$bio9, filename = "2004\\bio9.tif")
raster::writeRaster(biovars_2004$bio10, filename = "2004\\bio10.tif")
raster::writeRaster(biovars_2004$bio11, filename = "2004\\bio11.tif")
raster::writeRaster(biovars_2004$bio12, filename = "2004\\bio12.tif")
raster::writeRaster(biovars_2004$bio13, filename = "2004\\bio13.tif")
raster::writeRaster(biovars_2004$bio14, filename = "2004\\bio14.tif")
raster::writeRaster(biovars_2004$bio15, filename = "2004\\bio15.tif")
raster::writeRaster(biovars_2004$bio16, filename = "2004\\bio16.tif")
raster::writeRaster(biovars_2004$bio17, filename = "2004\\bio17.tif")
raster::writeRaster(biovars_2004$bio18, filename = "2004\\bio18.tif")
raster::writeRaster(biovars_2004$bio19, filename = "2004\\bio19.tif")

raster::writeRaster(biovars_2007$bio1, filename = "2007\\bio1.tif")
raster::writeRaster(biovars_2007$bio2, filename = "2007\\bio2.tif")
raster::writeRaster(biovars_2007$bio3, filename = "2007\\bio3.tif")
raster::writeRaster(biovars_2007$bio4, filename = "2007\\bio4.tif")
raster::writeRaster(biovars_2007$bio5, filename = "2007\\bio5.tif")
raster::writeRaster(biovars_2007$bio6, filename = "2007\\bio6.tif")
raster::writeRaster(biovars_2007$bio7, filename = "2007\\bio7.tif")
raster::writeRaster(biovars_2007$bio8, filename = "2007\\bio8.tif")
raster::writeRaster(biovars_2007$bio9, filename = "2007\\bio9.tif")
raster::writeRaster(biovars_2007$bio10, filename = "2007\\bio10.tif")
raster::writeRaster(biovars_2007$bio11, filename = "2007\\bio11.tif")
raster::writeRaster(biovars_2007$bio12, filename = "2007\\bio12.tif")
raster::writeRaster(biovars_2007$bio13, filename = "2007\\bio13.tif")
raster::writeRaster(biovars_2007$bio14, filename = "2007\\bio14.tif")
raster::writeRaster(biovars_2007$bio15, filename = "2007\\bio15.tif")
raster::writeRaster(biovars_2007$bio16, filename = "2007\\bio16.tif")
raster::writeRaster(biovars_2007$bio17, filename = "2007\\bio17.tif")
raster::writeRaster(biovars_2007$bio18, filename = "2007\\bio18.tif")
raster::writeRaster(biovars_2007$bio19, filename = "2007\\bio19.tif")

raster::writeRaster(biovars_2008$bio1, filename = "2008\\bio1.tif")
raster::writeRaster(biovars_2008$bio2, filename = "2008\\bio2.tif")
raster::writeRaster(biovars_2008$bio3, filename = "2008\\bio3.tif")
raster::writeRaster(biovars_2008$bio4, filename = "2008\\bio4.tif")
raster::writeRaster(biovars_2008$bio5, filename = "2008\\bio5.tif")
raster::writeRaster(biovars_2008$bio6, filename = "2008\\bio6.tif")
raster::writeRaster(biovars_2008$bio7, filename = "2008\\bio7.tif")
raster::writeRaster(biovars_2008$bio8, filename = "2008\\bio8.tif")
raster::writeRaster(biovars_2008$bio9, filename = "2008\\bio9.tif")
raster::writeRaster(biovars_2008$bio10, filename = "2008\\bio10.tif")
raster::writeRaster(biovars_2008$bio11, filename = "2008\\bio11.tif")
raster::writeRaster(biovars_2008$bio12, filename = "2008\\bio12.tif")
raster::writeRaster(biovars_2008$bio13, filename = "2008\\bio13.tif")
raster::writeRaster(biovars_2008$bio14, filename = "2008\\bio14.tif")
raster::writeRaster(biovars_2008$bio15, filename = "2008\\bio15.tif")
raster::writeRaster(biovars_2008$bio16, filename = "2008\\bio16.tif")
raster::writeRaster(biovars_2008$bio17, filename = "2008\\bio17.tif")
raster::writeRaster(biovars_2008$bio18, filename = "2008\\bio18.tif")
raster::writeRaster(biovars_2008$bio19, filename = "2008\\bio19.tif")

raster::writeRaster(biovars_2009$bio1, filename = "2009\\bio1.tif")
raster::writeRaster(biovars_2009$bio2, filename = "2009\\bio2.tif")
raster::writeRaster(biovars_2009$bio3, filename = "2009\\bio3.tif")
raster::writeRaster(biovars_2009$bio4, filename = "2009\\bio4.tif")
raster::writeRaster(biovars_2009$bio5, filename = "2009\\bio5.tif")
raster::writeRaster(biovars_2009$bio6, filename = "2009\\bio6.tif")
raster::writeRaster(biovars_2009$bio7, filename = "2009\\bio7.tif")
raster::writeRaster(biovars_2009$bio8, filename = "2009\\bio8.tif")
raster::writeRaster(biovars_2009$bio9, filename = "2009\\bio9.tif")
raster::writeRaster(biovars_2009$bio10, filename = "2009\\bio10.tif")
raster::writeRaster(biovars_2009$bio11, filename = "2009\\bio11.tif")
raster::writeRaster(biovars_2009$bio12, filename = "2009\\bio12.tif")
raster::writeRaster(biovars_2009$bio13, filename = "2009\\bio13.tif")
raster::writeRaster(biovars_2009$bio14, filename = "2009\\bio14.tif")
raster::writeRaster(biovars_2009$bio15, filename = "2009\\bio15.tif")
raster::writeRaster(biovars_2009$bio16, filename = "2009\\bio16.tif")
raster::writeRaster(biovars_2009$bio17, filename = "2009\\bio17.tif")
raster::writeRaster(biovars_2009$bio18, filename = "2009\\bio18.tif")
raster::writeRaster(biovars_2009$bio19, filename = "2009\\bio19.tif")

raster::writeRaster(biovars_2010$bio1, filename = "2010\\bio1.tif")
raster::writeRaster(biovars_2010$bio2, filename = "2010\\bio2.tif")
raster::writeRaster(biovars_2010$bio3, filename = "2010\\bio3.tif")
raster::writeRaster(biovars_2010$bio4, filename = "2010\\bio4.tif")
raster::writeRaster(biovars_2010$bio5, filename = "2010\\bio5.tif")
raster::writeRaster(biovars_2010$bio6, filename = "2010\\bio6.tif")
raster::writeRaster(biovars_2010$bio7, filename = "2010\\bio7.tif")
raster::writeRaster(biovars_2010$bio8, filename = "2010\\bio8.tif")
raster::writeRaster(biovars_2010$bio9, filename = "2010\\bio9.tif")
raster::writeRaster(biovars_2010$bio10, filename = "2010\\bio10.tif")
raster::writeRaster(biovars_2010$bio11, filename = "2010\\bio11.tif")
raster::writeRaster(biovars_2010$bio12, filename = "2010\\bio12.tif")
raster::writeRaster(biovars_2010$bio13, filename = "2010\\bio13.tif")
raster::writeRaster(biovars_2010$bio14, filename = "2010\\bio14.tif")
raster::writeRaster(biovars_2010$bio15, filename = "2010\\bio15.tif")
raster::writeRaster(biovars_2010$bio16, filename = "2010\\bio16.tif")
raster::writeRaster(biovars_2010$bio17, filename = "2010\\bio17.tif")
raster::writeRaster(biovars_2010$bio18, filename = "2010\\bio18.tif")
raster::writeRaster(biovars_2010$bio19, filename = "2010\\bio19.tif")

raster::writeRaster(biovars_2015$bio1, filename = "2015\\bio1.tif")
raster::writeRaster(biovars_2015$bio2, filename = "2015\\bio2.tif")
raster::writeRaster(biovars_2015$bio3, filename = "2015\\bio3.tif")
raster::writeRaster(biovars_2015$bio4, filename = "2015\\bio4.tif")
raster::writeRaster(biovars_2015$bio5, filename = "2015\\bio5.tif")
raster::writeRaster(biovars_2015$bio6, filename = "2015\\bio6.tif")
raster::writeRaster(biovars_2015$bio7, filename = "2015\\bio7.tif")
raster::writeRaster(biovars_2015$bio8, filename = "2015\\bio8.tif")
raster::writeRaster(biovars_2015$bio9, filename = "2015\\bio9.tif")
raster::writeRaster(biovars_2015$bio10, filename = "2015\\bio10.tif")
raster::writeRaster(biovars_2015$bio11, filename = "2015\\bio11.tif")
raster::writeRaster(biovars_2015$bio12, filename = "2015\\bio12.tif")
raster::writeRaster(biovars_2015$bio13, filename = "2015\\bio13.tif")
raster::writeRaster(biovars_2015$bio14, filename = "2015\\bio14.tif")
raster::writeRaster(biovars_2015$bio15, filename = "2015\\bio15.tif")
raster::writeRaster(biovars_2015$bio16, filename = "2015\\bio16.tif")
raster::writeRaster(biovars_2015$bio17, filename = "2015\\bio17.tif")
raster::writeRaster(biovars_2015$bio18, filename = "2015\\bio18.tif")
raster::writeRaster(biovars_2015$bio19, filename = "2015\\bio19.tif")

raster::writeRaster(biovars_2016$bio1, filename = "2016\\bio1.tif")
raster::writeRaster(biovars_2016$bio2, filename = "2016\\bio2.tif")
raster::writeRaster(biovars_2016$bio3, filename = "2016\\bio3.tif")
raster::writeRaster(biovars_2016$bio4, filename = "2016\\bio4.tif")
raster::writeRaster(biovars_2016$bio5, filename = "2016\\bio5.tif")
raster::writeRaster(biovars_2016$bio6, filename = "2016\\bio6.tif")
raster::writeRaster(biovars_2016$bio7, filename = "2016\\bio7.tif")
raster::writeRaster(biovars_2016$bio8, filename = "2016\\bio8.tif")
raster::writeRaster(biovars_2016$bio9, filename = "2016\\bio9.tif")
raster::writeRaster(biovars_2016$bio10, filename = "2016\\bio10.tif")
raster::writeRaster(biovars_2016$bio11, filename = "2016\\bio11.tif")
raster::writeRaster(biovars_2016$bio12, filename = "2016\\bio12.tif")
raster::writeRaster(biovars_2016$bio13, filename = "2016\\bio13.tif")
raster::writeRaster(biovars_2016$bio14, filename = "2016\\bio14.tif")
raster::writeRaster(biovars_2016$bio15, filename = "2016\\bio15.tif")
raster::writeRaster(biovars_2016$bio16, filename = "2016\\bio16.tif")
raster::writeRaster(biovars_2016$bio17, filename = "2016\\bio17.tif")
raster::writeRaster(biovars_2016$bio18, filename = "2016\\bio18.tif")
raster::writeRaster(biovars_2016$bio19, filename = "2016\\bio19.tif")

raster::writeRaster(biovars_2021$bio1, filename = "2021\\bio1.tif")
raster::writeRaster(biovars_2021$bio2, filename = "2021\\bio2.tif")
raster::writeRaster(biovars_2021$bio3, filename = "2021\\bio3.tif")
raster::writeRaster(biovars_2021$bio4, filename = "2021\\bio4.tif")
raster::writeRaster(biovars_2021$bio5, filename = "2021\\bio5.tif")
raster::writeRaster(biovars_2021$bio6, filename = "2021\\bio6.tif")
raster::writeRaster(biovars_2021$bio7, filename = "2021\\bio7.tif")
raster::writeRaster(biovars_2021$bio8, filename = "2021\\bio8.tif")
raster::writeRaster(biovars_2021$bio9, filename = "2021\\bio9.tif")
raster::writeRaster(biovars_2021$bio10, filename = "2021\\bio10.tif")
raster::writeRaster(biovars_2021$bio11, filename = "2021\\bio11.tif")
raster::writeRaster(biovars_2021$bio12, filename = "2021\\bio12.tif")
raster::writeRaster(biovars_2021$bio13, filename = "2021\\bio13.tif")
raster::writeRaster(biovars_2021$bio14, filename = "2021\\bio14.tif")
raster::writeRaster(biovars_2021$bio15, filename = "2021\\bio15.tif")
raster::writeRaster(biovars_2021$bio16, filename = "2021\\bio16.tif")
raster::writeRaster(biovars_2021$bio17, filename = "2021\\bio17.tif")
raster::writeRaster(biovars_2021$bio18, filename = "2021\\bio18.tif")
raster::writeRaster(biovars_2021$bio19, filename = "2021\\bio19.tif")
