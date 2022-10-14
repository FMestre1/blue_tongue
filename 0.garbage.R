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





