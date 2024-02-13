#31-08-2022



#Test using the same bioclimatic variables to project the model ################
#31-08-2022
#preds2_test <- mask(preds2, portugal_shapefile)
#plot(preds2_test)

dewulfi_test <- sdm::ensemble(dewulfi_sdm,newdata=preds2_test,filename='test\\dewulfi_test.img',setting=list(method='weighted',stat='TSS'),overwrite=TRUE) 
pulicaris_test <- sdm::ensemble(pulicaris_sdm,newdata=preds2_test,filename='test\\pulicaris_test.img',setting=list(method='weighted',stat='TSS'),overwrite=TRUE) 
obsoletus_test <- sdm::ensemble(obsoletus_COMPLEX_sdm,newdata=preds2_test,filename='test\\obsoletus_test.img',setting=list(method='weighted',stat='TSS'),overwrite=TRUE) 
imicola_test <- sdm::ensemble(imicola_sdm,newdata=preds2_test,filename='test\\imicola_test.img',setting=list(method='weighted',stat='TSS'),overwrite=TRUE) 

################################################################################
################################################################################

bio1_proj <- stack("global_bioclimatic_79_18\\BIO01_era5_1979-2018_v1.0.nc")
bio2_proj <- stack("global_bioclimatic_79_18\\BIO02_era5_1979-2018_v1.0.nc")
bio3_proj <- stack("global_bioclimatic_79_18\\BIO03_era5_1979-2018_v1.0.nc")
bio4_proj <- stack("global_bioclimatic_79_18\\BIO04_era5_1979-2018_v1.0.nc")
bio5_proj <- stack("global_bioclimatic_79_18\\BIO05_era5_1979-2018_v1.0.nc")
bio6_proj <- stack("global_bioclimatic_79_18\\BIO06_era5_1979-2018_v1.0.nc")
bio7_proj <- stack("global_bioclimatic_79_18\\BIO07_era5_1979-2018_v1.0.nc")
bio8_proj <- stack("global_bioclimatic_79_18\\BIO08_era5_1979-2018_v1.0.nc")
bio9_proj <- stack("global_bioclimatic_79_18\\BIO09_era5_1979-2018_v1.0.nc")
bio10_proj <- stack("global_bioclimatic_79_18\\BIO10_era5_1979-2018_v1.0.nc")
bio11_proj <- stack("global_bioclimatic_79_18\\BIO11_era5_1979-2018_v1.0.nc")
bio12_proj <- stack("global_bioclimatic_79_18\\BIO12_era5_1979-2018_v1.0.nc")
bio13_proj <- stack("global_bioclimatic_79_18\\BIO13_era5_1979-2018_v1.0.nc")
bio14_proj <- stack("global_bioclimatic_79_18\\BIO14_era5_1979-2018_v1.0.nc")
bio15_proj <- stack("global_bioclimatic_79_18\\BIO15_era5_1979-2018_v1.0.nc")
bio16_proj <- stack("global_bioclimatic_79_18\\BIO16_era5_1979-2018_v1.0.nc")
bio17_proj <- stack("global_bioclimatic_79_18\\BIO17_era5_1979-2018_v1.0.nc")
bio18_proj <- stack("global_bioclimatic_79_18\\BIO18_era5_1979-2018_v1.0.nc")
bio19_proj <- stack("global_bioclimatic_79_18\\BIO19_era5_1979-2018_v1.0.nc")


names(bio19_proj) <- names(bio18_proj) <- names(bio17_proj) <- names(bio16_proj) <- 
  names(bio15_proj) <- names(bio14_proj) <- names(bio13_proj) <- names(bio12_proj) <- names(bio11_proj) <- 
  names(bio10_proj) <- names(bio9_proj) <- names(bio8_proj) <- names(bio7_proj) <- names(bio6_proj) <- 
  names(bio5_proj) <- names(bio4_proj) <- names(bio3_proj) <- names(bio2_proj) <- names(bio1_proj) <- 
  c("1979", "1980", "1981", "1982", "1983", "1984", "1985", "1986", "1987", 
    "1988", "1989", "1990", "1991", "1992", "1993", "1994", "1995", "1996", 
    "1997", "1998", "1999", "2000", "2001", "2002", "2003", "2004", "2005", 
    "2006", "2007", "2008", "2009", "2010", "2011", "2012", "2013", "2014",
    "2015", "2016", "2017", "2018")


#

b2004 <- stack(bio2_proj$X2004,
               bio3_proj$X2004,
               bio4_proj$X2004,
               bio8_proj$X2004,
               bio9_proj$X2004,
               bio13_proj$X2004,
               bio14_proj$X2004,
               bio15_proj$X2004,
               bio18_proj$X2004,
               bio19_proj$X2004)

names(b2004) <- c("bio2",  "bio3", "bio4", "bio8", "bio9", "bio13",  "bio14",  "bio15",  "bio18",  "bio19")

################################################################################
################################################################################

library(ncdf4) # package for netcdf manipulation

terra_2004 <- stack("terraclimate\\TerraClimate_ws_2004.nc")
names(terra_2004)

terra_2004_1 <- nc_open("terraclimate\\TerraClimate_ws_2004.nc")
names(terra_2004_1)

terra_2004_2 <- brick("terraclimate\\TerraClimate_ws_2004.nc")
nlayers(terra_2004_2)


################################################################################
################################################################################

tmin_2004 <- stack("tmin\\TerraClimate_tmin_2004.nc")

nlayers(tmin_2004)


tmin_2007 <- stack("tmin\\TerraClimate_tmin_2007.nc")
tmin_2008 <- stack("tmin\\TerraClimate_tmin_2008.nc")
tmin_2009 <- stack("tmin\\TerraClimate_tmin_2009.nc")
tmin_2010 <- stack("tmin\\TerraClimate_tmin_2010.nc")
tmin_2015 <- stack("tmin\\TerraClimate_tmin_2015.nc")
tmin_2016 <- stack("tmin\\TerraClimate_tmin_2016.nc")
tmin_2021 <- stack("tmin\\TerraClimate_tmin_2021.nc")

tmax_2004 <- stack("tmax\\TerraClimate_tmax_2004.nc")
tmax_2007 <- stack("tmax\\TerraClimate_tmax_2007.nc")
tmax_2008 <- stack("tmax\\TerraClimate_tmax_2008.nc")
tmax_2009 <- stack("tmax\\TerraClimate_tmax_2009.nc")
tmax_2010 <- stack("tmax\\TerraClimate_tmax_2010.nc")
tmax_2015 <- stack("tmax\\TerraClimate_tmax_2015.nc")
tmax_2016 <- stack("tmax\\TerraClimate_tmax_2016.nc")
tmax_2021 <- stack("tmax\\TerraClimate_tmax_2021.nc")

prec_2004 <- stack("prec\\TerraClimate_ppt_2004.nc")
prec_2007 <- stack("prec\\TerraClimate_ppt_2007.nc")
prec_2008 <- stack("prec\\TerraClimate_ppt_2008.nc")
prec_2009 <- stack("prec\\TerraClimate_ppt_2009.nc")
prec_2010 <- stack("prec\\TerraClimate_ppt_2010.nc")
prec_2015 <- stack("prec\\TerraClimate_ppt_2015.nc")
prec_2016 <- stack("prec\\TerraClimate_ppt_2016.nc")
prec_2021 <- stack("prec\\TerraClimate_ppt_2021.nc")

################################################################################
# A WAY OF GETTING BIOCLIMATIC VARIABLES
################################################################################

#remotes::install_github("ErikKusch/KrigR")
library(KrigR)

#Upload Portugal and mask
portugal_shapefile <- raster::shapefile("dados/Portugal.shp")

b2004 <- stack("bioclimaticas\\2004.nc")
b2007 <- stack("bioclimaticas\\2007.nc")
b2008 <- stack("bioclimaticas\\2008.nc")
b2009 <- stack("bioclimaticas\\2009.nc")
b2010 <- stack("bioclimaticas\\2010.nc")
b2015 <- stack("bioclimaticas\\2015.nc")
b2016 <- stack("bioclimaticas\\2016.nc")
b2021 <- stack("bioclimaticas\\2021.nc")

#2004
b2004 <- BioClim(
  Water_Var = "volumetric_soil_water_layer_1",
  Y_start = 2004,
  Y_end = 2004,
  T_res = "day",
  Extent = extent(-9.6, -6.3, 36.7, 42.40),
  DataSet = "era5-land",
  Dir = "bioclimaticas",
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
  Dir = "bioclimaticas",
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
  Dir = "bioclimaticas",
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
  Dir = "bioclimaticas",
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
  Dir = "bioclimaticas",
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
  Dir = "bioclimaticas",
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
  Dir = "bioclimaticas",
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
  Dir = "bioclimaticas",
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

#getwd()
#setwd("~/github/blue_tongue")

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

b2004_2 <- mask(b2004, portugal_shapefile)
b2007_2 <- mask(b2007, portugal_shapefile)
b2008_2 <- mask(b2008, portugal_shapefile)
b2009_2 <- mask(b2009, portugal_shapefile)
b2010_2 <- mask(b2010, portugal_shapefile)
b2015_2 <- mask(b2015, portugal_shapefile)
b2016_2 <- mask(b2016, portugal_shapefile)
b2021_2 <- mask(b2021, portugal_shapefile)


################################################################################


#Now in the cluster ############################################################

bio1_2004 <- raster::raster("terraclimate\\2004\\bio1.tif")
bio2_2004 <- raster::raster("terraclimate\\2004\\bio2.tif")
bio3_2004 <- raster::raster("terraclimate\\2004\\bio3.tif")
bio4_2004 <- raster::raster("terraclimate\\2004\\bio4.tif")
bio5_2004 <- raster::raster("terraclimate\\2004\\bio5.tif")
bio6_2004 <- raster::raster("terraclimate\\2004\\bio6.tif")
bio7_2004 <- raster::raster("terraclimate\\2004\\bio7.tif")
bio8_2004 <- raster::raster("terraclimate\\2004\\bio8.tif")
bio9_2004 <- raster::raster("terraclimate\\2004\\bio9.tif")
bio10_2004 <- raster::raster("terraclimate\\2004\\bio10.tif")
bio11_2004 <- raster::raster("terraclimate\\2004\\bio11.tif")
bio12_2004 <- raster::raster("terraclimate\\2004\\bio12.tif")
bio13_2004 <- raster::raster("terraclimate\\2004\\bio13.tif")
bio14_2004 <- raster::raster("terraclimate\\2004\\bio14.tif")
bio15_2004 <- raster::raster("terraclimate\\2004\\bio15.tif")
bio16_2004 <- raster::raster("terraclimate\\2004\\bio16.tif")
bio17_2004 <- raster::raster("terraclimate\\2004\\bio17.tif")
bio18_2004 <- raster::raster("terraclimate\\2004\\bio18.tif")
bio19_2004 <- raster::raster("terraclimate\\2004\\bio19.tif")

bio_2004 <- stack(bio1_2004, bio2_2004, bio3_2004, bio4_2004, bio5_2004, bio6_2004, bio7_2004, 
                  bio8_2004, bio9_2004, bio10_2004, bio11_2004, bio12_2004, bio13_2004, bio14_2004, 
                  bio15_2004, bio16_2004, bio17_2004, bio18_2004, bio19_2004)
bio_2004 <- mask(bio_2004, portugal_shapefile)
bio_2004 <- crop(bio_2004, portugal_shapefile)
rm(bio1_2004, bio2_2004, bio3_2004, bio4_2004, bio5_2004, bio6_2004, bio7_2004, 
   bio8_2004, bio9_2004, bio10_2004, bio11_2004, bio12_2004, bio13_2004, bio14_2004, 
   bio15_2004, bio16_2004, bio17_2004, bio18_2004, bio19_2004)
#
bio1_2007 <- raster::raster("terraclimate\\2007\\bio1.tif")
bio2_2007 <- raster::raster("terraclimate\\2007\\bio2.tif")
bio3_2007 <- raster::raster("terraclimate\\2007\\bio3.tif")
bio4_2007 <- raster::raster("terraclimate\\2007\\bio4.tif")
bio5_2007 <- raster::raster("terraclimate\\2007\\bio5.tif")
bio6_2007 <- raster::raster("terraclimate\\2007\\bio6.tif")
bio7_2007 <- raster::raster("terraclimate\\2007\\bio7.tif")
bio8_2007 <- raster::raster("terraclimate\\2007\\bio8.tif")
bio9_2007 <- raster::raster("terraclimate\\2007\\bio9.tif")
bio10_2007 <- raster::raster("terraclimate\\2007\\bio10.tif")
bio11_2007 <- raster::raster("terraclimate\\2007\\bio11.tif")
bio12_2007 <- raster::raster("terraclimate\\2007\\bio12.tif")
bio13_2007 <- raster::raster("terraclimate\\2007\\bio13.tif")
bio14_2007 <- raster::raster("terraclimate\\2007\\bio14.tif")
bio15_2007 <- raster::raster("terraclimate\\2007\\bio15.tif")
bio16_2007 <- raster::raster("terraclimate\\2007\\bio16.tif")
bio17_2007 <- raster::raster("terraclimate\\2007\\bio17.tif")
bio18_2007 <- raster::raster("terraclimate\\2007\\bio18.tif")
bio19_2007 <- raster::raster("terraclimate\\2007\\bio19.tif")

bio_2007 <- stack(bio1_2007, bio2_2007, bio3_2007, bio4_2007, bio5_2007, bio6_2007, bio7_2007, 
                  bio8_2007, bio9_2007, bio10_2007, bio11_2007, bio12_2007, bio13_2007, bio14_2007, 
                  bio15_2007, bio16_2007, bio17_2007, bio18_2007, bio19_2007)
bio_2007 <- mask(bio_2007, portugal_shapefile)
bio_2007 <- crop(bio_2007, portugal_shapefile)
rm(bio1_2007, bio2_2007, bio3_2007, bio4_2007, bio5_2007, bio6_2007, bio7_2007, 
   bio8_2007, bio9_2007, bio10_2007, bio11_2007, bio12_2007, bio13_2007, bio14_2007, 
   bio15_2007, bio16_2007, bio17_2007, bio18_2007, bio19_2007)
#
bio1_2008 <- raster::raster("terraclimate\\2008\\bio1.tif")
bio2_2008 <- raster::raster("terraclimate\\2008\\bio2.tif")
bio3_2008 <- raster::raster("terraclimate\\2008\\bio3.tif")
bio4_2008 <- raster::raster("terraclimate\\2008\\bio4.tif")
bio5_2008 <- raster::raster("terraclimate\\2008\\bio5.tif")
bio6_2008 <- raster::raster("terraclimate\\2008\\bio6.tif")
bio7_2008 <- raster::raster("terraclimate\\2008\\bio7.tif")
bio8_2008 <- raster::raster("terraclimate\\2008\\bio8.tif")
bio9_2008 <- raster::raster("terraclimate\\2008\\bio9.tif")
bio10_2008 <- raster::raster("terraclimate\\2008\\bio10.tif")
bio11_2008 <- raster::raster("terraclimate\\2008\\bio11.tif")
bio12_2008 <- raster::raster("terraclimate\\2008\\bio12.tif")
bio13_2008 <- raster::raster("terraclimate\\2008\\bio13.tif")
bio14_2008 <- raster::raster("terraclimate\\2008\\bio14.tif")
bio15_2008 <- raster::raster("terraclimate\\2008\\bio15.tif")
bio16_2008 <- raster::raster("terraclimate\\2008\\bio16.tif")
bio17_2008 <- raster::raster("terraclimate\\2008\\bio17.tif")
bio18_2008 <- raster::raster("terraclimate\\2008\\bio18.tif")
bio19_2008 <- raster::raster("terraclimate\\2008\\bio19.tif")

bio_2008 <- stack(bio1_2008, bio2_2008, bio3_2008, bio4_2008, bio5_2008, bio6_2008, bio7_2008, 
                  bio8_2008, bio9_2008, bio10_2008, bio11_2008, bio12_2008, bio13_2008, bio14_2008, 
                  bio15_2008, bio16_2008, bio17_2008, bio18_2008, bio19_2008)
bio_2008 <- mask(bio_2008, portugal_shapefile)
bio_2008 <- crop(bio_2008, portugal_shapefile)
rm(bio1_2008, bio2_2008, bio3_2008, bio4_2008, bio5_2008, bio6_2008, bio7_2008, 
   bio8_2008, bio9_2008, bio10_2008, bio11_2008, bio12_2008, bio13_2008, bio14_2008, 
   bio15_2008, bio16_2008, bio17_2008, bio18_2008, bio19_2008)

#
bio1_2009 <- raster::raster("terraclimate\\2009\\bio1.tif")
bio2_2009 <- raster::raster("terraclimate\\2009\\bio2.tif")
bio3_2009 <- raster::raster("terraclimate\\2009\\bio3.tif")
bio4_2009 <- raster::raster("terraclimate\\2009\\bio4.tif")
bio5_2009 <- raster::raster("terraclimate\\2009\\bio5.tif")
bio6_2009 <- raster::raster("terraclimate\\2009\\bio6.tif")
bio7_2009 <- raster::raster("terraclimate\\2009\\bio7.tif")
bio8_2009 <- raster::raster("terraclimate\\2009\\bio8.tif")
bio9_2009 <- raster::raster("terraclimate\\2009\\bio9.tif")
bio10_2009 <- raster::raster("terraclimate\\2009\\bio10.tif")
bio11_2009 <- raster::raster("terraclimate\\2009\\bio11.tif")
bio12_2009 <- raster::raster("terraclimate\\2009\\bio12.tif")
bio13_2009 <- raster::raster("terraclimate\\2009\\bio13.tif")
bio14_2009 <- raster::raster("terraclimate\\2009\\bio14.tif")
bio15_2009 <- raster::raster("terraclimate\\2009\\bio15.tif")
bio16_2009 <- raster::raster("terraclimate\\2009\\bio16.tif")
bio17_2009 <- raster::raster("terraclimate\\2009\\bio17.tif")
bio18_2009 <- raster::raster("terraclimate\\2009\\bio18.tif")
bio19_2009 <- raster::raster("terraclimate\\2009\\bio19.tif")

bio_2009 <- stack(bio1_2009, bio2_2009, bio3_2009, bio4_2009, bio5_2009, bio6_2009, bio7_2009, 
                  bio8_2009, bio9_2009, bio10_2009, bio11_2009, bio12_2009, bio13_2009, bio14_2009, 
                  bio15_2009, bio16_2009, bio17_2009, bio18_2009, bio19_2009)
bio_2009 <- mask(bio_2009, portugal_shapefile)
bio_2009 <- crop(bio_2009, portugal_shapefile)
rm(bio1_2009, bio2_2009, bio3_2009, bio4_2009, bio5_2009, bio6_2009, bio7_2009, 
   bio8_2009, bio9_2009, bio10_2009, bio11_2009, bio12_2009, bio13_2009, bio14_2009, 
   bio15_2009, bio16_2009, bio17_2009, bio18_2009, bio19_2009)

#
bio1_2010 <- raster::raster("terraclimate\\2010\\bio1.tif")
bio2_2010 <- raster::raster("terraclimate\\2010\\bio2.tif")
bio3_2010 <- raster::raster("terraclimate\\2010\\bio3.tif")
bio4_2010 <- raster::raster("terraclimate\\2010\\bio4.tif")
bio5_2010 <- raster::raster("terraclimate\\2010\\bio5.tif")
bio6_2010 <- raster::raster("terraclimate\\2010\\bio6.tif")
bio7_2010 <- raster::raster("terraclimate\\2010\\bio7.tif")
bio8_2010 <- raster::raster("terraclimate\\2010\\bio8.tif")
bio9_2010 <- raster::raster("terraclimate\\2010\\bio9.tif")
bio10_2010 <- raster::raster("terraclimate\\2010\\bio10.tif")
bio11_2010 <- raster::raster("terraclimate\\2010\\bio11.tif")
bio12_2010 <- raster::raster("terraclimate\\2010\\bio12.tif")
bio13_2010 <- raster::raster("terraclimate\\2010\\bio13.tif")
bio14_2010 <- raster::raster("terraclimate\\2010\\bio14.tif")
bio15_2010 <- raster::raster("terraclimate\\2010\\bio15.tif")
bio16_2010 <- raster::raster("terraclimate\\2010\\bio16.tif")
bio17_2010 <- raster::raster("terraclimate\\2010\\bio17.tif")
bio18_2010 <- raster::raster("terraclimate\\2010\\bio18.tif")
bio19_2010 <- raster::raster("terraclimate\\2010\\bio19.tif")

bio_2010 <- stack(bio1_2010, bio2_2010, bio3_2010, bio4_2010, bio5_2010, bio6_2010, bio7_2010, 
                  bio8_2010, bio9_2010, bio10_2010, bio11_2010, bio12_2010, bio13_2010, bio14_2010, 
                  bio15_2010, bio16_2010, bio17_2010, bio18_2010, bio19_2010)
bio_2010 <- mask(bio_2010, portugal_shapefile)
bio_2010 <- crop(bio_2010, portugal_shapefile)
rm(bio1_2010, bio2_2010, bio3_2010, bio4_2010, bio5_2010, bio6_2010, bio7_2010, 
   bio8_2010, bio9_2010, bio10_2010, bio11_2010, bio12_2010, bio13_2010, bio14_2010, 
   bio15_2010, bio16_2010, bio17_2010, bio18_2010, bio19_2010)

#
bio1_2015 <- raster::raster("terraclimate\\2015\\bio1.tif")
bio2_2015 <- raster::raster("terraclimate\\2015\\bio2.tif")
bio3_2015 <- raster::raster("terraclimate\\2015\\bio3.tif")
bio4_2015 <- raster::raster("terraclimate\\2015\\bio4.tif")
bio5_2015 <- raster::raster("terraclimate\\2015\\bio5.tif")
bio6_2015 <- raster::raster("terraclimate\\2015\\bio6.tif")
bio7_2015 <- raster::raster("terraclimate\\2015\\bio7.tif")
bio8_2015 <- raster::raster("terraclimate\\2015\\bio8.tif")
bio9_2015 <- raster::raster("terraclimate\\2015\\bio9.tif")
bio10_2015 <- raster::raster("terraclimate\\2015\\bio10.tif")
bio11_2015 <- raster::raster("terraclimate\\2015\\bio11.tif")
bio12_2015 <- raster::raster("terraclimate\\2015\\bio12.tif")
bio13_2015 <- raster::raster("terraclimate\\2015\\bio13.tif")
bio14_2015 <- raster::raster("terraclimate\\2015\\bio14.tif")
bio15_2015 <- raster::raster("terraclimate\\2015\\bio15.tif")
bio16_2015 <- raster::raster("terraclimate\\2015\\bio16.tif")
bio17_2015 <- raster::raster("terraclimate\\2015\\bio17.tif")
bio18_2015 <- raster::raster("terraclimate\\2015\\bio18.tif")
bio19_2015 <- raster::raster("terraclimate\\2015\\bio19.tif")

bio_2015 <- stack(bio1_2015, bio2_2015, bio3_2015, bio4_2015, bio5_2015, bio6_2015, bio7_2015, 
                  bio8_2015, bio9_2015, bio10_2015, bio11_2015, bio12_2015, bio13_2015, bio14_2015, 
                  bio15_2015, bio16_2015, bio17_2015, bio18_2015, bio19_2015)
bio_2015 <- mask(bio_2015, portugal_shapefile)
bio_2015 <- crop(bio_2015, portugal_shapefile)
rm(bio1_2015, bio2_2015, bio3_2015, bio4_2015, bio5_2015, bio6_2015, bio7_2015, 
   bio8_2015, bio9_2015, bio10_2015, bio11_2015, bio12_2015, bio13_2015, bio14_2015, 
   bio15_2015, bio16_2015, bio17_2015, bio18_2015, bio19_2015)

#
bio1_2016 <- raster::raster("terraclimate\\2016\\bio1.tif")
bio2_2016 <- raster::raster("terraclimate\\2016\\bio2.tif")
bio3_2016 <- raster::raster("terraclimate\\2016\\bio3.tif")
bio4_2016 <- raster::raster("terraclimate\\2016\\bio4.tif")
bio5_2016 <- raster::raster("terraclimate\\2016\\bio5.tif")
bio6_2016 <- raster::raster("terraclimate\\2016\\bio6.tif")
bio7_2016 <- raster::raster("terraclimate\\2016\\bio7.tif")
bio8_2016 <- raster::raster("terraclimate\\2016\\bio8.tif")
bio9_2016 <- raster::raster("terraclimate\\2016\\bio9.tif")
bio10_2016 <- raster::raster("terraclimate\\2016\\bio10.tif")
bio11_2016 <- raster::raster("terraclimate\\2016\\bio11.tif")
bio12_2016 <- raster::raster("terraclimate\\2016\\bio12.tif")
bio13_2016 <- raster::raster("terraclimate\\2016\\bio13.tif")
bio14_2016 <- raster::raster("terraclimate\\2016\\bio14.tif")
bio15_2016 <- raster::raster("terraclimate\\2016\\bio15.tif")
bio16_2016 <- raster::raster("terraclimate\\2016\\bio16.tif")
bio17_2016 <- raster::raster("terraclimate\\2016\\bio17.tif")
bio18_2016 <- raster::raster("terraclimate\\2016\\bio18.tif")
bio19_2016 <- raster::raster("terraclimate\\2016\\bio19.tif")

bio_2016 <- stack(bio1_2016, bio2_2016, bio3_2016, bio4_2016, bio5_2016, bio6_2016, bio7_2016, 
                  bio8_2016, bio9_2016, bio10_2016, bio11_2016, bio12_2016, bio13_2016, bio14_2016, 
                  bio15_2016, bio16_2016, bio17_2016, bio18_2016, bio19_2016)
bio_2016 <- mask(bio_2016, portugal_shapefile)
bio_2016 <- crop(bio_2016, portugal_shapefile)
rm(bio1_2016, bio2_2016, bio3_2016, bio4_2016, bio5_2016, bio6_2016, bio7_2016, 
   bio8_2016, bio9_2016, bio10_2016, bio11_2016, bio12_2016, bio13_2016, bio14_2016, 
   bio15_2016, bio16_2016, bio17_2016, bio18_2016, bio19_2016)

#
bio1_2021 <- raster::raster("terraclimate\\2021\\bio1.tif")
bio2_2021 <- raster::raster("terraclimate\\2021\\bio2.tif")
bio3_2021 <- raster::raster("terraclimate\\2021\\bio3.tif")
bio4_2021 <- raster::raster("terraclimate\\2021\\bio4.tif")
bio5_2021 <- raster::raster("terraclimate\\2021\\bio5.tif")
bio6_2021 <- raster::raster("terraclimate\\2021\\bio6.tif")
bio7_2021 <- raster::raster("terraclimate\\2021\\bio7.tif")
bio8_2021 <- raster::raster("terraclimate\\2021\\bio8.tif")
bio9_2021 <- raster::raster("terraclimate\\2021\\bio9.tif")
bio10_2021 <- raster::raster("terraclimate\\2021\\bio10.tif")
bio11_2021 <- raster::raster("terraclimate\\2021\\bio11.tif")
bio12_2021 <- raster::raster("terraclimate\\2021\\bio12.tif")
bio13_2021 <- raster::raster("terraclimate\\2021\\bio13.tif")
bio14_2021 <- raster::raster("terraclimate\\2021\\bio14.tif")
bio15_2021 <- raster::raster("terraclimate\\2021\\bio15.tif")
bio16_2021 <- raster::raster("terraclimate\\2021\\bio16.tif")
bio17_2021 <- raster::raster("terraclimate\\2021\\bio17.tif")
bio18_2021 <- raster::raster("terraclimate\\2021\\bio18.tif")
bio19_2021 <- raster::raster("terraclimate\\2021\\bio19.tif")

bio_2021 <- stack(bio1_2021, bio2_2021, bio3_2021, bio4_2021, bio5_2021, bio6_2021, bio7_2021, 
                  bio8_2021, bio9_2021, bio10_2021, bio11_2021, bio12_2021, bio13_2021, bio14_2021, 
                  bio15_2021, bio16_2021, bio17_2021, bio18_2021, bio19_2021)
bio_2021 <- mask(bio_2021, portugal_shapefile)
bio_2021 <- crop(bio_2021, portugal_shapefile)
rm(bio1_2021, bio2_2021, bio3_2021, bio4_2021, bio5_2021, bio6_2021, bio7_2021, 
   bio8_2021, bio9_2021, bio10_2021, bio11_2021, bio12_2021, bio13_2021, bio14_2021, 
   bio15_2021, bio16_2021, bio17_2021, bio18_2021, bio19_2021)