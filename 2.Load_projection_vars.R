################################################################################
# LOAD PROJECTION VARIABLES
################################################################################

#FMestre
#06-09-2022

#Load the ncdf4 package
library(ncdf4)
library(raster)
library(terra)
library(dismo)

#Upload Portugal and mask
portugal_shapefile <- raster::shapefile("dados/Portugal.shp")

#################
# Tmin
#################

tmin_2004 <- stack("C:\\Users\\asus\\Documents\\github\\blue_tongue\\terraclimate\\tmin\\TerraClimate_tmin_2004.nc")
tmin_2007 <- stack("C:\\Users\\asus\\Documents\\github\\blue_tongue\\terraclimate\\tmin\\TerraClimate_tmin_2007.nc")
tmin_2008 <- stack("C:\\Users\\asus\\Documents\\github\\blue_tongue\\terraclimate\\tmin\\TerraClimate_tmin_2008.nc")
tmin_2009 <- stack("C:\\Users\\asus\\Documents\\github\\blue_tongue\\terraclimate\\tmin\\TerraClimate_tmin_2009.nc")
tmin_2010 <- stack("C:\\Users\\asus\\Documents\\github\\blue_tongue\\terraclimate\\tmin\\TerraClimate_tmin_2010.nc")
tmin_2015 <- stack("C:\\Users\\asus\\Documents\\github\\blue_tongue\\terraclimate\\tmin\\TerraClimate_tmin_2015.nc")
tmin_2016 <- stack("C:\\Users\\asus\\Documents\\github\\blue_tongue\\terraclimate\\tmin\\TerraClimate_tmin_2016.nc")
tmin_2021 <- stack("C:\\Users\\asus\\Documents\\github\\blue_tongue\\terraclimate\\tmin\\TerraClimate_tmin_2021.nc")
#
tmin_2004_2 <- mask(tmin_2004, portugal_shapefile)
tmin_2007_2 <- mask(tmin_2007, portugal_shapefile)
tmin_2008_2 <- mask(tmin_2008, portugal_shapefile)
tmin_2009_2 <- mask(tmin_2009, portugal_shapefile)
tmin_2010_2 <- mask(tmin_2010, portugal_shapefile)
tmin_2015_2 <- mask(tmin_2015, portugal_shapefile)
tmin_2016_2 <- mask(tmin_2016, portugal_shapefile)
tmin_2021_2 <- mask(tmin_2021, portugal_shapefile)
#
tmin_2004_2 <- crop(tmin_2004_2, portugal_shapefile)
tmin_2007_2 <- crop(tmin_2007_2, portugal_shapefile)
tmin_2008_2 <- crop(tmin_2008_2, portugal_shapefile)
tmin_2009_2 <- crop(tmin_2009_2, portugal_shapefile)
tmin_2010_2 <- crop(tmin_2010_2, portugal_shapefile)
tmin_2015_2 <- crop(tmin_2015_2, portugal_shapefile)
tmin_2016_2 <- crop(tmin_2016_2, portugal_shapefile)
tmin_2021_2 <- crop(tmin_2021_2, portugal_shapefile)

#################
# Tmax
#################

tmax_2004 <- stack("C:\\Users\\asus\\Documents\\github\\blue_tongue\\terraclimate\\tmax\\TerraClimate_tmax_2004.nc")
tmax_2007 <- stack("C:\\Users\\asus\\Documents\\github\\blue_tongue\\terraclimate\\tmax\\TerraClimate_tmax_2007.nc")
tmax_2008 <- stack("C:\\Users\\asus\\Documents\\github\\blue_tongue\\terraclimate\\tmax\\TerraClimate_tmax_2008.nc")
tmax_2009 <- stack("C:\\Users\\asus\\Documents\\github\\blue_tongue\\terraclimate\\tmax\\TerraClimate_tmax_2009.nc")
tmax_2010 <- stack("C:\\Users\\asus\\Documents\\github\\blue_tongue\\terraclimate\\tmax\\TerraClimate_tmax_2010.nc")
tmax_2015 <- stack("C:\\Users\\asus\\Documents\\github\\blue_tongue\\terraclimate\\tmax\\TerraClimate_tmax_2015.nc")
tmax_2016 <- stack("C:\\Users\\asus\\Documents\\github\\blue_tongue\\terraclimate\\tmax\\TerraClimate_tmax_2016.nc")
tmax_2021 <- stack("C:\\Users\\asus\\Documents\\github\\blue_tongue\\terraclimate\\tmax\\TerraClimate_tmax_2021.nc")
#
tmax_2004_2 <- mask(tmax_2004, portugal_shapefile)
tmax_2007_2 <- mask(tmax_2007, portugal_shapefile)
tmax_2008_2 <- mask(tmax_2008, portugal_shapefile)
tmax_2009_2 <- mask(tmax_2009, portugal_shapefile)
tmax_2010_2 <- mask(tmax_2010, portugal_shapefile)
tmax_2015_2 <- mask(tmax_2015, portugal_shapefile)
tmax_2016_2 <- mask(tmax_2016, portugal_shapefile)
tmax_2021_2 <- mask(tmax_2021, portugal_shapefile)
#
tmax_2004_2 <- crop(tmax_2004_2, portugal_shapefile)
tmax_2007_2 <- crop(tmax_2007_2, portugal_shapefile)
tmax_2008_2 <- crop(tmax_2008_2, portugal_shapefile)
tmax_2009_2 <- crop(tmax_2009_2, portugal_shapefile)
tmax_2010_2 <- crop(tmax_2010_2, portugal_shapefile)
tmax_2015_2 <- crop(tmax_2015_2, portugal_shapefile)
tmax_2016_2 <- crop(tmax_2016_2, portugal_shapefile)
tmax_2021_2 <- crop(tmax_2021_2, portugal_shapefile)

#################
# Prec
#################

prec_2004 <- stack("C:\\Users\\asus\\Documents\\github\\blue_tongue\\terraclimate\\prec\\TerraClimate_ppt_2004.nc")
prec_2007 <- stack("C:\\Users\\asus\\Documents\\github\\blue_tongue\\terraclimate\\prec\\TerraClimate_ppt_2007.nc")
prec_2008 <- stack("C:\\Users\\asus\\Documents\\github\\blue_tongue\\terraclimate\\prec\\TerraClimate_ppt_2008.nc")
prec_2009 <- stack("C:\\Users\\asus\\Documents\\github\\blue_tongue\\terraclimate\\prec\\TerraClimate_ppt_2009.nc")
prec_2010 <- stack("C:\\Users\\asus\\Documents\\github\\blue_tongue\\terraclimate\\prec\\TerraClimate_ppt_2010.nc")
prec_2015 <- stack("C:\\Users\\asus\\Documents\\github\\blue_tongue\\terraclimate\\prec\\TerraClimate_ppt_2015.nc")
prec_2016 <- stack("C:\\Users\\asus\\Documents\\github\\blue_tongue\\terraclimate\\prec\\TerraClimate_ppt_2016.nc")
prec_2021 <- stack("C:\\Users\\asus\\Documents\\github\\blue_tongue\\terraclimate\\prec\\TerraClimate_ppt_2021.nc")
#
prec_2004_2 <- mask(prec_2004, portugal_shapefile)
prec_2007_2 <- mask(prec_2007, portugal_shapefile)
prec_2008_2 <- mask(prec_2008, portugal_shapefile)
prec_2009_2 <- mask(prec_2009, portugal_shapefile)
prec_2010_2 <- mask(prec_2010, portugal_shapefile)
prec_2015_2 <- mask(prec_2015, portugal_shapefile)
prec_2016_2 <- mask(prec_2016, portugal_shapefile)
prec_2021_2 <- mask(prec_2021, portugal_shapefile)
#
prec_2004_2 <- crop(prec_2004_2, portugal_shapefile)
prec_2007_2 <- crop(prec_2007_2, portugal_shapefile)
prec_2008_2 <- crop(prec_2008_2, portugal_shapefile)
prec_2009_2 <- crop(prec_2009_2, portugal_shapefile)
prec_2010_2 <- crop(prec_2010_2, portugal_shapefile)
prec_2015_2 <- crop(prec_2015_2, portugal_shapefile)
prec_2016_2 <- crop(prec_2016_2, portugal_shapefile)
prec_2021_2 <- crop(prec_2021_2, portugal_shapefile)

####################################################
# Derive bioclimatic variables
####################################################

biovars_2004 <- dismo::biovars(prec = prec_2004_2, tmin = tmin_2004_2, tmax = tmax_2004_2) 
biovars_2007 <- dismo::biovars(prec = prec_2007_2, tmin = tmin_2007_2, tmax = tmax_2007_2) 
biovars_2008 <- dismo::biovars(prec = prec_2008_2, tmin = tmin_2008_2, tmax = tmax_2008_2) 
biovars_2009 <- dismo::biovars(prec = prec_2009_2, tmin = tmin_2009_2, tmax = tmax_2009_2) 
biovars_2010 <- dismo::biovars(prec = prec_2010_2, tmin = tmin_2010_2, tmax = tmax_2010_2) 
biovars_2015 <- dismo::biovars(prec = prec_2015_2, tmin = tmin_2015_2, tmax = tmax_2015_2) 
biovars_2016 <- dismo::biovars(prec = prec_2016_2, tmin = tmin_2016_2, tmax = tmax_2016_2) 
biovars_2021 <- dismo::biovars(prec = prec_2021_2, tmin = tmin_2021_2, tmax = tmax_2021_2) 

#Save it...
#save(biovars_2004, file = "biovars_2004.RData") 
#save(biovars_2007, file = "biovars_2007.RData") 
#save(biovars_2008, file = "biovars_2008.RData") 
#save(biovars_2009, file = "biovars_2009.RData") 
#save(biovars_2010, file = "biovars_2010.RData")
#save(biovars_2015, file = "biovars_2015.RData") 
#save(biovars_2016, file = "biovars_2016.RData") 
#save(biovars_2021, file = "biovars_2021.RData") 

####################################################
# Remove individual rasters from the environment
####################################################

rm(tmin_2004, tmin_2007, tmin_2008, tmin_2009, tmin_2010, tmin_2015, tmin_2016,
tmin_2021, tmin_2004_2, tmin_2007_2, tmin_2008_2, tmin_2009_2, tmin_2010_2,
tmin_2015_2, tmin_2016_2, tmin_2021_2, tmax_2004, tmax_2007, tmax_2008, tmax_2009,
tmax_2010, tmax_2015, tmax_2016, tmax_2021, tmax_2004_2, tmax_2007_2, tmax_2008_2,
tmax_2009_2, tmax_2010_2, tmax_2015_2, tmax_2016_2, tmax_2021_2, prec_2004, prec_2007,
prec_2008, prec_2009, prec_2010, prec_2015, prec_2016, prec_2021, prec_2004_2,
prec_2007_2, prec_2008_2, prec_2009_2, prec_2010_2, prec_2015_2, prec_2016_2, prec_2021_2
)

####################################################
# Write to raster
####################################################

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
