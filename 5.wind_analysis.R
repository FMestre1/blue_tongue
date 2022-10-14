#WIND ANALYSIS

#load packages
library(ncdf4) # package for netcdf manipulation
library(raster) # package for raster manipulation
library(rgdal) # package for geospatial analysis
library(ggplot2) # package for plotting

#Load data
m100_u_comp <- raster::stack('wind_Data_Copernicus_Bluetongue_paper/wind.nc', varname = "u100")
m100_v_comp <- raster::stack('wind_Data_Copernicus_Bluetongue_paper/wind.nc', varname = "v100")
m10_wind_speed <- raster::stack('wind_Data_Copernicus_Bluetongue_paper/wind.nc', varname = "si10")

#Number of layers
nlayers(m100_u_comp)
nlayers(m100_v_comp)
nlayers(m10_wind_speed)

#Names of the layers
names(m100_u_comp)
names(m100_v_comp)
names(m10_wind_speed)

#Plot
plot(m100_u_comp[[1:5]])
plot(m100_v_comp[[1:5]])
plot(m10_wind_speed[[1:5]])

#####################################
# Deriving wind direction and speed
#####################################

#From
#https://sgichuki.github.io/Atmo/

#Direction
windDir <-function(u,v){
  (270-atan2(u,v)*180/pi)%%360 
}

#Speed
windSpd <-function(u,v){
  sqrt(u^2+v^2)
}

test1 <- windDir(m100_u_comp[[1]], m100_v_comp[[1]])
plot(test1)
test2 <- windSpd(m100_u_comp[[1]], m100_v_comp[[1]])
plot(test2)

#Create corridor polygon
crds <- cbind(x=c(-11, -13, 0, -5), y=c(38, 28, 28, 38))
Pl <- Polygon(crds)
Pls <- Polygons(list(Pl), ID=1)
SPls <- SpatialPolygons(list(Pls))

#Ploting
world <- raster::shapefile("C:/Users/FMest/Documents/0. Artigos/Lingua_azul/world-administrative-boundaries/world-administrative-boundaries.shp")
#
plot(world)
plot(SPls, add=TRUE)
plot(study_site_alentejo)
#Save as shapefile
raster::shapefile(SPls, "wind_corridor.shp")
#Load the one edited in QGIS
wind_corridor <- raster::shapefile("wind_corridor.shp")
crs(wind_corridor) <- crs(world)
#plot
plot(world)
plot(wind_corridor, add=TRUE)



#library(openair)
#from: https://sgichuki.github.io/Atmo/
#test3 <- data.frame(as.vector(test1), as.vector(test2))
#names(test3) <- c("dir", "speed")
#head(test3)
#windRose(mydata, ws = "speed", wd = "dir")

dir_vectors_for_polygon <- list()

for(i in 1:nlayers(m100_v_comp)){
wdir1 <- windDir(m100_u_comp[[i]], m100_v_comp[[i]])
dir1 <- raster::extract(wdir1, wind_corridor)
dir_vectors_for_polygon[i] <- dir1
message(paste0("Concluded ", i))
}



years <- c("2004", "2007", "2008", "2009", "2010", "2015", "2016", "2017")
months1 <- c("jan","feb", "mar","apr","may","jun","jul","aug","sep","oct","nov","dec")

year_month <- paste0(rep(years,each=12), "_", rep(months1, 8))
#names(dir_vectors_for_polygon) <- year_month









