####### SDM Olives + Vines ######## 
#FMestre
#06/07/2022

#Load required packages
library(sdm)
library(usdm)
#installAll()
library(raster)
library(rgdal)
#library(maptools)
#library(rgeos)
#library(rgbif)
#install.packages("devtools")
library(CoordinateCleaner)
library(ggplot2)
library(rgbif)
library(sp)
library(xlsx)
#remotes::install_github('adamlilith/enmSdm', dependencies=TRUE)
library(enmSdm)

# 1.Load Study site ############################################################
study_site_alentejo <- raster::shapefile("ssite_blue_tongue_merged.shp")
#raster::plot(study_site)

# 2.Load bioclimatic 10x10 km to calibrate #####################################
bio1 <- raster("wc2.0_10m_bio\\wc2.0_bio_10m_01.tif")
bio2 <- raster("wc2.0_10m_bio\\wc2.0_bio_10m_02.tif")
bio3 <- raster("wc2.0_10m_bio\\wc2.0_bio_10m_03.tif")
bio4 <- raster("wc2.0_10m_bio\\wc2.0_bio_10m_04.tif")
bio5 <- raster("wc2.0_10m_bio\\wc2.0_bio_10m_05.tif")
bio6 <- raster("wc2.0_10m_bio\\wc2.0_bio_10m_06.tif")
bio7 <- raster("wc2.0_10m_bio\\wc2.0_bio_10m_07.tif")
bio8 <- raster("wc2.0_10m_bio\\wc2.0_bio_10m_08.tif")
bio9 <- raster("wc2.0_10m_bio\\wc2.0_bio_10m_09.tif")
bio10 <- raster("wc2.0_10m_bio\\wc2.0_bio_10m_10.tif")
bio11 <- raster("wc2.0_10m_bio\\wc2.0_bio_10m_11.tif")
bio12 <- raster("wc2.0_10m_bio\\wc2.0_bio_10m_12.tif")
bio13 <- raster("wc2.0_10m_bio\\wc2.0_bio_10m_13.tif")
bio14 <- raster("wc2.0_10m_bio\\wc2.0_bio_10m_14.tif")
bio15 <- raster("wc2.0_10m_bio\\wc2.0_bio_10m_15.tif")
bio16 <- raster("wc2.0_10m_bio\\wc2.0_bio_10m_16.tif")
bio17 <- raster("wc2.0_10m_bio\\wc2.0_bio_10m_17.tif")
bio18 <- raster("wc2.0_10m_bio\\wc2.0_bio_10m_18.tif")
bio19 <- raster("wc2.0_10m_bio\\wc2.0_bio_10m_19.tif")

# 3.Create stack of variables ##################################################
preds <- stack(bio1,bio2,bio3,bio4,bio5,bio6,bio7,bio8,bio9,bio10,bio11,bio12,
               bio13,bio14,bio15,bio16,bio17,bio18,bio19)

#names(preds)
#nlayers(preds)

names(preds) <- c("bio1","bio2","bio3","bio4","bio5","bio6","bio7","bio8","bio9",
                  "bio10","bio11","bio12","bio13","bio14","bio15","bio16","bio17",
                  "bio18","bio19"
                  )

# 4.VIF ########################################################################
vif1 <- usdm::vifstep(preds) #Stepwise elimination of highly inflating variables
usdm::vifcor(preds)
vif1@results

#Using VIF to select the variables to consider in the model
preds2 <- usdm::exclude(preds, vif1)
rm(preds)

# 5.Load species presence ######################################################
scoticus_gbif <- occ_search(scientificName = "Culicoides scoticus", limit = 10000, hasCoordinate = TRUE)
chiopterus_gbif <- occ_search(scientificName = "Culicoides chiopterus", limit = 10000, hasCoordinate = TRUE)
brevitasis_gbif <- occ_search(scientificName = "Culicoides brevitarsis", limit = 10000, hasCoordinate = TRUE)
dewulfi_gbif <- occ_search(scientificName = "Culicoides dewulfi", limit = 10000, hasCoordinate = TRUE)
pulicaris_gbif <- occ_search(scientificName = "Culicoides pulicaris", limit = 10000, hasCoordinate = TRUE)
obsoletus_gbif <- occ_search(scientificName = "Culicoides obsoletus", limit = 10000, hasCoordinate = TRUE)
imicola_gbif <- occ_search(scientificName = "Culicoides imicola", limit = 10000, hasCoordinate = TRUE)
imicola_Leta_et_al <- raster::shapefile("Culicoides_imicola_Leta_et_al.shp")

# 6. Load Bluetongue outbreaks #################################################
blue_tongue <- raster::shapefile("focos_alentejo.shp")

#7. Clean species data coordinates #############################################
scoticus_gbif_1 <- scoticus_gbif$data
chiopterus_gbif_1 <- chiopterus_gbif$data
brevitasis_gbif_1 <- brevitasis_gbif$data
dewulfi_gbif_1 <- dewulfi_gbif$data
pulicaris_gbif_1 <- pulicaris_gbif$data
obsoletus_gbif_1 <- obsoletus_gbif$data
imicola_gbif_1 <- imicola_gbif$data

#select columns of interest
scoticus_gbif_2 <- scoticus_gbif_1 %>%
  dplyr::select(species, decimalLongitude, decimalLatitude, countryCode, gbifID, family, taxonRank, year, basisOfRecord)  #  
chiopterus_gbif_2 <- chiopterus_gbif_1 %>%
  dplyr::select(species, decimalLongitude, decimalLatitude, countryCode, gbifID, family, taxonRank, year, basisOfRecord)  #  
brevitasis_gbif_2 <- brevitasis_gbif_1 %>%
  dplyr::select(species, decimalLongitude, decimalLatitude, countryCode, gbifID, family, taxonRank, year, basisOfRecord)  #  
dewulfi_gbif_2 <- dewulfi_gbif_1 %>%
  dplyr::select(species, decimalLongitude, decimalLatitude, countryCode, individualCount, gbifID, family, taxonRank, coordinateUncertaintyInMeters, year, basisOfRecord, institutionCode, datasetName)  #  
pulicaris_gbif_2 <- pulicaris_gbif_1 %>%
  dplyr::select(species, decimalLongitude, decimalLatitude, countryCode, individualCount, gbifID, family, taxonRank, coordinateUncertaintyInMeters, year, basisOfRecord, institutionCode, datasetName)  #  
obsoletus_gbif_2 <- obsoletus_gbif_1 %>%
  dplyr::select(species, decimalLongitude, decimalLatitude, countryCode, individualCount, gbifID, family, taxonRank, coordinateUncertaintyInMeters, year, basisOfRecord, institutionCode, datasetName)  #  
imicola_gbif_2 <- imicola_gbif_1 %>%
  dplyr::select(species, decimalLongitude, decimalLatitude, countryCode, gbifID, family, taxonRank, coordinateUncertaintyInMeters, year, basisOfRecord, institutionCode)  #  


#Map (maybe just one species!) C. imicola for now...
#Mapa <- map_data("world")

#ggplot() + geom_map(data = Mapa, map = Mapa, aes(x = long, y = lat, map_id = region), fill = "grey80") + 
#  xlim(min(imicola_gbif_2$decimalLongitude, na.rm = T), max(imicola_gbif_2$decimalLongitude, na.rm = T)) +
#  ylim(min(imicola_gbif_2$decimalLatitude, na.rm = T), max(imicola_gbif_2$decimalLatitude, na.rm = T)) + 
#  geom_point(data = imicola_gbif_2, aes(x = decimalLongitude, y = decimalLatitude, color = "red"), size = 5) + 
#  coord_fixed() +
#  theme_bw() + 
#  theme(axis.title = element_blank())

##

# 8.Flag problems with locations ###############################################
flags_scoticus_gbif_2 <- clean_coordinates(x = scoticus_gbif_2,
                                             lon = "decimalLongitude", lat = "decimalLatitude",
                                             countries = "countryCode", species = "species",
                                             tests = c("capitals", "centroids", "equal","gbif", 
                                                       "institutions", "zeros"))

flags_chiopterus_gbif_2 <- clean_coordinates(x = chiopterus_gbif_2,
                                             lon = "decimalLongitude", lat = "decimalLatitude",
                                             countries = "countryCode", species = "species",
                                             tests = c("capitals", "centroids", "equal","gbif", 
                                                       "institutions", "zeros"))

flags_brevitasis_gbif_2 <- clean_coordinates(x = brevitasis_gbif_2,
                                          lon = "decimalLongitude", lat = "decimalLatitude",
                                          countries = "countryCode", species = "species",
                                          tests = c("capitals", "centroids", "equal","gbif", 
                                                    "institutions", "zeros"))

flags_dewulfi_gbif_2 <- clean_coordinates(x = dewulfi_gbif_2,
                                          lon = "decimalLongitude", lat = "decimalLatitude",
                                          countries = "countryCode", species = "species",
                                          tests = c("capitals", "centroids", "equal","gbif", 
                                                    "institutions", "zeros"))

flags_pulicaris_gbif_2 <- clean_coordinates(x = pulicaris_gbif_2,
                                          lon = "decimalLongitude", lat = "decimalLatitude",
                                          countries = "countryCode", species = "species",
                                          tests = c("capitals", "centroids", "equal","gbif", 
                                                    "institutions", "zeros"))

flags_obsoletus_gbif_2 <- clean_coordinates(x = obsoletus_gbif_2,
                                            lon = "decimalLongitude", lat = "decimalLatitude",
                                            countries = "countryCode", species = "species",
                                            tests = c("capitals", "centroids", "equal","gbif", 
                                                      "institutions", "zeros"))

flags_imicola_gbif_2 <- clean_coordinates(x = imicola_gbif_2,
                                            lon = "decimalLongitude", lat = "decimalLatitude",
                                            countries = "countryCode", species = "species",
                                            tests = c("capitals", "centroids", "equal","gbif", 
                                                      "institutions", "zeros"))

#Plot flags
plot(flags_scoticus_gbif_2, lon = "decimalLongitude", lat = "decimalLatitude")
plot(flags_chiopterus_gbif_2, lon = "decimalLongitude", lat = "decimalLatitude")
plot(flags_brevitasis_gbif_2, lon = "decimalLongitude", lat = "decimalLatitude")
plot(flags_dewulfi_gbif_2, lon = "decimalLongitude", lat = "decimalLatitude")
plot(flags_pulicaris_gbif_2, lon = "decimalLongitude", lat = "decimalLatitude")
plot(flags_obsoletus_gbif_2, lon = "decimalLongitude", lat = "decimalLatitude")
plot(flags_imicola_gbif_2, lon = "decimalLongitude", lat = "decimalLatitude")

#Exclude flagged
scoticus_gbif_2_cl <- scoticus_gbif_2[flags_scoticus_gbif_2$.summary,]
chiopterus_gbif_2_cl <- chiopterus_gbif_2[flags_chiopterus_gbif_2$.summary,]
brevitasis_gbif_2_cl <- brevitasis_gbif_2[flags_brevitasis_gbif_2$.summary,]
dewulfi_gbif_2_cl <- dewulfi_gbif_2[flags_dewulfi_gbif_2$.summary,]
pulicaris_gbif_2_cl <- pulicaris_gbif_2[flags_pulicaris_gbif_2$.summary,]
obsoletus_gbif_2_cl <- obsoletus_gbif_2[flags_obsoletus_gbif_2$.summary,]
imicola_gbif_2_cl <- imicola_gbif_2[flags_imicola_gbif_2$.summary,]

#Convert to data frame
scoticus_gbif_2_cl_cl_df <- as.data.frame(scoticus_gbif_2_cl)
chiopterus_gbif_2_cl_cl_df <- as.data.frame(chiopterus_gbif_2_cl)
brevitasis_gbif_2_cl_cl_df <- as.data.frame(brevitasis_gbif_2_cl)
dewulfi_gbif_2_cl_df <- as.data.frame(dewulfi_gbif_2_cl)
pulicaris_gbif_2_cl_df <- as.data.frame(pulicaris_gbif_2_cl)
obsoletus_gbif_2_cl_df <- as.data.frame(obsoletus_gbif_2_cl)
imicola_gbif_2_cl_df <- as.data.frame(imicola_gbif_2_cl)
#
scoticus_gbif_2_cl_cl_df <- scoticus_gbif_2_cl_cl_df[,c(1,2,3,6,8)]
chiopterus_gbif_2_cl_cl_df <- chiopterus_gbif_2_cl_cl_df[,c(1,2,3,6,8)]
brevitasis_gbif_2_cl_cl_df <- brevitasis_gbif_2_cl_cl_df[,c(1,2,3,6,8)]
dewulfi_gbif_2_cl_df <- dewulfi_gbif_2_cl_df[,c(1,2,3,7,10)]
pulicaris_gbif_2_cl_df <- pulicaris_gbif_2_cl_df[,c(1,2,3,7,10)]
obsoletus_gbif_2_cl_df <- obsoletus_gbif_2_cl_df[,c(1,2,3,7,10)]
imicola_gbif_2_cl_df <- imicola_gbif_2_cl_df[,c(1,2,3,6,9)]

#Convert to spatial point data frame
scoticus_gbif_2_cl_cl_df <- SpatialPointsDataFrame(coords = scoticus_gbif_2_cl_cl_df[,2:3], data = scoticus_gbif_2_cl_cl_df, proj4string = CRS("+proj=longlat +datum=WGS84 +ellps=WGS84 +towgs84=0,0,0"))
chiopterus_gbif_2_cl_cl_df <- SpatialPointsDataFrame(coords = chiopterus_gbif_2_cl_cl_df[,2:3], data = chiopterus_gbif_2_cl_cl_df, proj4string = CRS("+proj=longlat +datum=WGS84 +ellps=WGS84 +towgs84=0,0,0"))
brevitasis_gbif_2_cl_cl_df_spdf <- SpatialPointsDataFrame(coords = brevitasis_gbif_2_cl_cl_df[,2:3], data = brevitasis_gbif_2_cl_cl_df, proj4string = CRS("+proj=longlat +datum=WGS84 +ellps=WGS84 +towgs84=0,0,0"))
dewulfi_gbif_2_cl_df_spdf <- SpatialPointsDataFrame(coords = dewulfi_gbif_2_cl_df[,2:3], data = dewulfi_gbif_2_cl_df, proj4string = CRS("+proj=longlat +datum=WGS84 +ellps=WGS84 +towgs84=0,0,0"))
pulicaris_gbif_2_cl_df_spdf <- SpatialPointsDataFrame(coords = pulicaris_gbif_2_cl_df[,2:3], data = pulicaris_gbif_2_cl_df, proj4string = CRS("+proj=longlat +datum=WGS84 +ellps=WGS84 +towgs84=0,0,0"))
obsoletus_gbif_2_cl_df_spdf <- SpatialPointsDataFrame(coords = obsoletus_gbif_2_cl_df[,2:3], data = obsoletus_gbif_2_cl_df, proj4string = CRS("+proj=longlat +datum=WGS84 +ellps=WGS84 +towgs84=0,0,0"))
imicola_gbif_2_cl_df_spdf <- SpatialPointsDataFrame(coords = imicola_gbif_2_cl_df[,2:3], data = imicola_gbif_2_cl_df, proj4string = CRS("+proj=longlat +datum=WGS84 +ellps=WGS84 +towgs84=0,0,0"))

#
scoticus_occ <- rep(1,nrow(scoticus_gbif_2_cl_cl_df@data))
chiopteruss_occ <- rep(1,nrow(chiopterus_gbif_2_cl_cl_df@data))
brevitasis_occ <- rep(1,nrow(brevitasis_gbif_2_cl_cl_df_spdf@data))
dewulfi_occ <- rep(1,nrow(dewulfi_gbif_2_cl_df_spdf@data))
pulicaris_occ <- rep(1,nrow(pulicaris_gbif_2_cl_df_spdf@data))
obsoletus_occ <- rep(1,nrow(obsoletus_gbif_2_cl_df_spdf@data))
imicola_occ <- rep(1,nrow(imicola_gbif_2_cl_df_spdf@data))
imicola_leta_et_al_occ <- rep(1,nrow(imicola_Leta_et_al@data))
#
scoticus_gbif_2_cl_cl_df@data <- cbind(scoticus_gbif_2_cl_cl_df@data, scoticus_occ)
chiopterus_gbif_2_cl_cl_df@data <- cbind(chiopterus_gbif_2_cl_cl_df@data, chiopteruss_occ)
brevitasis_gbif_2_cl_cl_df_spdf@data <- cbind(brevitasis_gbif_2_cl_cl_df_spdf@data, brevitasis_occ)
dewulfi_gbif_2_cl_df_spdf@data <- cbind(dewulfi_gbif_2_cl_df_spdf@data, dewulfi_occ)
pulicaris_gbif_2_cl_df_spdf@data <- cbind(pulicaris_gbif_2_cl_df_spdf@data, pulicaris_occ)
obsoletus_gbif_2_cl_df_spdf@data <- cbind(obsoletus_gbif_2_cl_df_spdf@data, obsoletus_occ)
imicola_gbif_2_cl_df_spdf@data <- cbind(imicola_gbif_2_cl_df_spdf@data, imicola_occ)
imicola_Leta_et_al@data <- cbind(imicola_Leta_et_al@data, imicola_leta_et_al_occ)
#
imicola_Leta_et_al <- imicola_Leta_et_al[,c(1, 16)]

# 9. Uploading Portuguese data #################################################
# from: "Geographical distribution of Culicoides (DIPTERA: CERATOPOGONIDAE) 
#in mainland Portugal" -- Ramilo et al. (2017)
pt_imicola <- xlsx::read.xlsx("dados\\Geographical distribution of Culicoides in mainland Portugal\\S1 Table.xlsx", sheetIndex = 1)
pt_obsoletus <- xlsx::read.xlsx("dados\\Geographical distribution of Culicoides in mainland Portugal\\S2 Table.xlsx", sheetIndex = 1)
pt_pulicaris <- xlsx::read.xlsx("dados\\Geographical distribution of Culicoides in mainland Portugal\\S3 Table.xlsx", sheetIndex = 1)
pt_punctatus <- xlsx::read.xlsx("dados\\Geographical distribution of Culicoides in mainland Portugal\\S4 Table.xlsx", sheetIndex = 1)
pt_newsteadi <- xlsx::read.xlsx("dados\\Geographical distribution of Culicoides in mainland Portugal\\S5 Table.xlsx", sheetIndex = 1)
#
pt_imicola[pt_imicola=="N/A"] <- 0
pt_imicola$Spring <- as.numeric(pt_imicola$Spring)
pt_imicola$Summer <- as.numeric(pt_imicola$Summer)
pt_imicola$Autumn <- as.numeric(pt_imicola$Autumn)
pt_imicola$Winter <- as.numeric(pt_imicola$Winter)
pt_imicola$Latitude <- stringr::str_replace(pt_imicola$Latitude,",", "\\.")
pt_imicola$Longitude <- stringr::str_replace(pt_imicola$Longitude,",", "\\.")
pt_imicola$Latitude <- as.numeric(pt_imicola$Latitude)
pt_imicola$Longitude <- as.numeric(pt_imicola$Longitude)
#
pt_obsoletus[pt_obsoletus=="N/A"] <- 0
pt_obsoletus$Spring <- as.numeric(pt_obsoletus$Spring)
pt_obsoletus$Summer <- as.numeric(pt_obsoletus$Summer)
pt_obsoletus$Autumn <- as.numeric(pt_obsoletus$Autumn)
pt_obsoletus$Winter <- as.numeric(pt_obsoletus$Winter)
pt_obsoletus$Latitude <- stringr::str_replace(pt_obsoletus$Latitude,",", "\\.")
pt_obsoletus$Longitude <- stringr::str_replace(pt_obsoletus$Longitude,",", "\\.")
pt_obsoletus$Latitude <- as.numeric(pt_obsoletus$Latitude)
pt_obsoletus$Longitude <- as.numeric(pt_obsoletus$Longitude)
#
pt_pulicaris[pt_pulicaris=="N/A"] <- 0
pt_pulicaris$Spring <- as.numeric(pt_pulicaris$Spring)
pt_pulicaris$Summer <- as.numeric(pt_pulicaris$Summer)
pt_pulicaris$Autumn <- as.numeric(pt_pulicaris$Autumn)
pt_pulicaris$Winter <- as.numeric(pt_pulicaris$Winter)
pt_pulicaris$Latitude <- stringr::str_replace(pt_pulicaris$Latitude,",", "\\.")
pt_pulicaris$Longitude <- stringr::str_replace(pt_pulicaris$Longitude,",", "\\.")
pt_pulicaris$Latitude <- as.numeric(pt_pulicaris$Latitude)
pt_pulicaris$Longitude <- as.numeric(pt_pulicaris$Longitude)
#
pt_punctatus[pt_punctatus=="N/A"] <- 0
pt_punctatus$Spring <- as.numeric(pt_punctatus$Spring)
pt_punctatus$Summer <- as.numeric(pt_punctatus$Summer)
pt_punctatus$Autumn <- as.numeric(pt_punctatus$Autumn)
pt_punctatus$Winter <- as.numeric(pt_punctatus$Winter)
pt_punctatus$Latitude <- stringr::str_replace(pt_punctatus$Latitude,",", "\\.")
pt_punctatus$Longitude <- stringr::str_replace(pt_punctatus$Longitude,",", "\\.")
pt_punctatus$Latitude <- as.numeric(pt_punctatus$Latitude)
pt_punctatus$Longitude <- as.numeric(pt_punctatus$Longitude)
#
pt_newsteadi[pt_newsteadi=="N/A"] <- 0
pt_newsteadi$Spring <- as.numeric(pt_newsteadi$Spring)
pt_newsteadi$Summer <- as.numeric(pt_newsteadi$Summer)
pt_newsteadi$Autumn <- as.numeric(pt_newsteadi$Autumn)
pt_newsteadi$Winter <- as.numeric(pt_newsteadi$Winter)
pt_newsteadi$Latitude <- stringr::str_replace(pt_newsteadi$Latitude,",", "\\.")
pt_newsteadi$Longitude <- stringr::str_replace(pt_newsteadi$Longitude,",", "\\.")
pt_newsteadi$Latitude <- as.numeric(pt_newsteadi$Latitude)
pt_newsteadi$Longitude <- as.numeric(pt_newsteadi$Longitude)
#
pt_imicola <- data.frame(pt_imicola, rowSums(pt_imicola[,4:7]))
names(pt_imicola)[9] <- "all_presences"
pt_obsoletus <- data.frame(pt_obsoletus, rowSums(pt_obsoletus[,4:7]))
names(pt_obsoletus)[9] <- "all_presences"
pt_pulicaris <- data.frame(pt_pulicaris, rowSums(pt_pulicaris[,4:7]))
names(pt_pulicaris)[9] <- "all_presences"
pt_punctatus <- data.frame(pt_punctatus, rowSums(pt_punctatus[,4:7]))
names(pt_punctatus)[9] <- "all_presences"
pt_newsteadi <- data.frame(pt_newsteadi, rowSums(pt_newsteadi[,4:7]))
names(pt_newsteadi)[9] <- "all_presences"
#
#Spatial point data frame
pt_imicola_spdf <- SpatialPointsDataFrame(coords = pt_imicola[,c(3,2)], data = pt_imicola, proj4string = CRS("+proj=longlat +datum=WGS84 +ellps=WGS84 +towgs84=0,0,0"))
pt_obsoletus_spdf <- SpatialPointsDataFrame(coords = pt_obsoletus[,c(3,2)], data = pt_obsoletus, proj4string = CRS("+proj=longlat +datum=WGS84 +ellps=WGS84 +towgs84=0,0,0"))
pt_pulicaris_spdf <- SpatialPointsDataFrame(coords = pt_pulicaris[,c(3,2)], data = pt_pulicaris, proj4string = CRS("+proj=longlat +datum=WGS84 +ellps=WGS84 +towgs84=0,0,0"))
pt_punctatus_spdf <- SpatialPointsDataFrame(coords = pt_punctatus[,c(3,2)], data = pt_punctatus, proj4string = CRS("+proj=longlat +datum=WGS84 +ellps=WGS84 +towgs84=0,0,0"))
pt_newsteadi_spdf <- SpatialPointsDataFrame(coords = pt_newsteadi[,c(3,2)], data = pt_newsteadi, proj4string = CRS("+proj=longlat +datum=WGS84 +ellps=WGS84 +towgs84=0,0,0"))

#Add columns for presence/absence
pt_imicola_spdf@data <- data.frame(pt_imicola_spdf@data, ifelse(pt_imicola_spdf@data$all_presences>=1, 1, 0))
names(pt_imicola_spdf@data)[10] <- "occurrence"
pt_obsoletus_spdf@data <- data.frame(pt_obsoletus_spdf@data, ifelse(pt_obsoletus_spdf@data$all_presences>=1, 1, 0))
names(pt_obsoletus_spdf@data)[10] <- "occurrence"
pt_pulicaris_spdf@data <- data.frame(pt_pulicaris_spdf@data, ifelse(pt_pulicaris_spdf@data$all_presences>=1, 1, 0))
names(pt_pulicaris_spdf@data)[10] <- "occurrence"
pt_punctatus_spdf@data <- data.frame(pt_punctatus_spdf@data, ifelse(pt_punctatus_spdf@data$all_presences>=1, 1, 0))
names(pt_punctatus_spdf@data)[10] <- "occurrence"
pt_newsteadi_spdf@data <- data.frame(pt_newsteadi_spdf@data, ifelse(pt_newsteadi_spdf@data$all_presences>=1, 1, 0))
names(pt_newsteadi_spdf@data)[10] <- "occurrence"
#

#Save as shapefile to open in QGIS
writeOGR(obj=pt_imicola_spdf, dsn="tempdir", layer="pt_imicola_ramilo_et_al", driver="ESRI Shapefile")
writeOGR(obj=pt_obsoletus_spdf, dsn="tempdir", layer="pt_obsoletus_ramilo_et_al", driver="ESRI Shapefile")
writeOGR(obj=pt_pulicaris_spdf, dsn="tempdir", layer="pt_pulicaris_ramilo_et_al", driver="ESRI Shapefile")
writeOGR(obj=pt_punctatus_spdf, dsn="tempdir", layer="pt_punctatus_ramilo_et_al", driver="ESRI Shapefile")
writeOGR(obj=pt_newsteadi_spdf, dsn="tempdir", layer="pt_newsteadi_ramilo_et_al", driver="ESRI Shapefile")

#END Ramilo et al. (2017)

# 10.Uploading Portuguese data ################################################# 
#from: "Spatial and Temporal Distribution of Culicoides Species in Mainland 
#Portugal (2005–2010). Results of the Portuguese Entomological Surveillance 
#Programme" -- Ribeiro et al. (2015)
culicoides_ribeiro_et_al <- read.csv("Ribeiro et al 20105\\ribeiro_et_al_2015_S1_Table.csv")
culicoides_ribeiro_et_al_spdf <- SpatialPointsDataFrame(coords = culicoides_ribeiro_et_al[,c(4,3)], data = culicoides_ribeiro_et_al, proj4string = CRS("+proj=longlat +datum=WGS84 +ellps=WGS84 +towgs84=0,0,0"))
#Save shapefile
writeOGR(obj=culicoides_ribeiro_et_al_spdf, dsn="tempdir", layer="pt_all_culicoides_ribeiro_et_al", driver="ESRI Shapefile")
#END Ribeiro et al. (2015)

# 11. Agregate the data from the Obsoletus complex #############################
obsoletus_gbif_2_COMPLEX <- obsoletus_gbif_2_cl_df_spdf
scoticus_gbif_2_for_COMPLEX <- scoticus_gbif_2_cl_cl_df
chiopterus_gbif_2_for_COMPLEX <- chiopterus_gbif_2_cl_cl_df
#
names(obsoletus_gbif_2_COMPLEX)[6] <- "species_occ"
names(scoticus_gbif_2_for_COMPLEX)[6] <- "species_occ"
names(chiopterus_gbif_2_for_COMPLEX)[6] <- "species_occ"
#
obsoletus_COMPLEX_COMPLEX <- obsoletus_gbif_2_COMPLEX + scoticus_gbif_2_for_COMPLEX + chiopterus_gbif_2_for_COMPLEX
#

# 12.Combine portuguese and global datasets ####################################
#from Ramilo et al (2017), GBIF and Leta et al

#pt_obsoletus_spdf + obsoletus_COMPLEX_COMPLEX
head(pt_obsoletus_spdf@data)
head(obsoletus_COMPLEX_COMPLEX@data)
#
PT_obsoletus <- pt_obsoletus_spdf
GLOBAL_obsoletus <- obsoletus_COMPLEX_COMPLEX
#
PT_obsoletus@data <- PT_obsoletus@data[,c(2,3,10)]
PT_obsoletus <- PT_obsoletus[PT_obsoletus$occurrence==1,] 
GLOBAL_obsoletus@data <- GLOBAL_obsoletus@data[,c(3,2,6)]
names(GLOBAL_obsoletus@data) <- names(PT_obsoletus@data)
#
COMBINED_obsoletus <- PT_obsoletus + GLOBAL_obsoletus
writeOGR(obj=COMBINED_obsoletus, dsn="tempdir", layer="COMBINED_obsoletus_v2", driver="ESRI Shapefile")
COMBINED_obsoletus@data$occurrence

#no portuguese data for dewulfi - not combined

#pt_pulicaris_spdf + pulicaris_gbif_2_cl_df_spdf
head(pt_pulicaris_spdf@data)
head(pulicaris_gbif_2_cl_df_spdf@data)
#
PT_pulicaris <- pt_pulicaris_spdf
GLOBAL_pulicaris <- pulicaris_gbif_2_cl_df_spdf
#
PT_pulicaris@data <- PT_pulicaris@data[,c(2,3,10)]
PT_pulicaris <- PT_pulicaris[PT_pulicaris$occurrence==1,] 
GLOBAL_pulicaris@data <- GLOBAL_pulicaris@data[,c(3,2,6)]
names(GLOBAL_pulicaris@data) <- names(PT_pulicaris@data)
#
COMBINED_pulicaris <- PT_pulicaris + GLOBAL_pulicaris
writeOGR(obj=COMBINED_pulicaris, dsn="tempdir", layer="COMBINED_pulicaris_v2", driver="ESRI Shapefile")
COMBINED_pulicaris@data$occurrence

#pt_imicola_spdf + imicola_Leta_et_al
head(pt_imicola_spdf@data)
head(imicola_Leta_et_al@data)
#
PT_imicola <- pt_imicola_spdf
GLOBAL_imicola <- raster::shapefile("Culicoides_imicola_Leta_et_al.shp")

#
PT_imicola@data <- PT_imicola@data[,c(2,3,10)]
PT_imicola <- PT_imicola[PT_imicola$occurrence==1,]
GLOBAL_imicola@data <- GLOBAL_imicola@data[,c(7,6)]
lim_occ <- rep(1, nrow(GLOBAL_imicola@data))
GLOBAL_imicola@data <- data.frame(GLOBAL_imicola@data, lim_occ)
#
names(GLOBAL_imicola@data) <- names(PT_imicola@data)
COMBINED_imicola <- PT_imicola + GLOBAL_imicola
writeOGR(obj=COMBINED_imicola, dsn="tempdir", layer="COMBINED_imicola", driver="ESRI Shapefile", overwrite_layer = TRUE)
COMBINED_imicola@data$occurrence


# 13.Delete presences that are too close (< 20 km) #############################
#to avoid clumping in the distribution of points
COMBINED_obsoletus_thin <- geoThin(x=COMBINED_obsoletus, minDist = 20000, longLat = im1[,1:2], distFunct = NULL, verbose = TRUE)
dewulfi_gbif_2_cl_df_spdf_thin <- geoThin(x=dewulfi_gbif_2_cl_df_spdf, minDist = 20000, longLat = im1[,1:2], distFunct = NULL, verbose = TRUE)
COMBINED_pulicaris_thin <- geoThin(x=COMBINED_pulicaris, minDist = 20000, longLat = im1[,1:2], distFunct = NULL, verbose = TRUE)
COMBINED_imicola_thin <- geoThin(x=COMBINED_imicola, minDist = 20000, longLat = im1[,1:2], distFunct = NULL, verbose = TRUE)

#save shapefiles
writeOGR(obj=COMBINED_obsoletus_thin, dsn="tempdir", layer="COMBINED_obsoletus_thin", driver="ESRI Shapefile")
writeOGR(obj=dewulfi_gbif_2_cl_df_spdf_thin, dsn="tempdir", layer="dewulfi_gbif_2_cl_df_spdf_thin", driver="ESRI Shapefile")
writeOGR(obj=COMBINED_pulicaris_thin, dsn="tempdir", layer="COMBINED_pulicaris_thin", driver="ESRI Shapefile")
writeOGR(obj=COMBINED_imicola_thin, dsn="tempdir", layer="COMBINED_imicola_thin", driver="ESRI Shapefile")

# 14.Format data for sdm ########################################################
data_obsoletus_COMPLEX <- sdmData(train=COMBINED_obsoletus_thin[,3], predictors = preds2, bg=list(n=10*nrow(COMBINED_obsoletus_thin), method='gRandom',remove=TRUE))
#data_scoticus_gbif <- sdmData(train=scoticus_gbif_2_cl_cl_df[,6], predictors = preds2, bg=list(n=10*nrow(scoticus_gbif_2_cl_cl_df), method='gRandom',remove=TRUE))
#data_chiopterus_gbif <- sdmData(train=chiopterus_gbif_2_cl_cl_df[,6], predictors = preds2, bg=list(n=10*nrow(chiopterus_gbif_2_cl_cl_df), method='gRandom',remove=TRUE))
#data_brevitasis_gbif <- sdmData(train=brevitasis_gbif_2_cl_cl_df_spdf[,6], predictors = preds2, bg=list(n=10*nrow(brevitasis_gbif_2_cl_cl_df_spdf), method='gRandom',remove=TRUE))
data_dewulfi_gbif <- sdmData(train=dewulfi_gbif_2_cl_df_spdf_thin[,6], predictors = preds2, bg=list(n=10*nrow(dewulfi_gbif_2_cl_df_spdf_thin), method='gRandom',remove=TRUE))
data_pulicaris <- sdmData(train=COMBINED_pulicaris_thin[,3], predictors = preds2, bg=list(n=10*nrow(COMBINED_pulicaris_thin), method='gRandom',remove=TRUE))
#data_obsoletus_gbif <- sdmData(train=obsoletus_gbif_2_cl_df_spdf[,6], predictors = preds2, bg=list(n=10*nrow(obsoletus_gbif_2_cl_df_spdf), method='gRandom',remove=TRUE))
#data_imicola_gbif <- sdmData(train=imicola_gbif_2_cl_df_spdf[,6], predictors = preds2, bg=list(n=10*nrow(imicola_gbif_2_cl_df_spdf), method='gRandom',remove=TRUE))
data_imicola <- sdmData(train=COMBINED_imicola_thin[,3], predictors = preds2, bg=list(n=10*nrow(COMBINED_imicola_thin@data), method='gRandom',remove=TRUE))

# 15.Save ######################################################################
save.image()
