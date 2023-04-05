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

#wind_direction = atan2(V, U) * 180 / pi

#Speed
windSpd <-function(u,v){
  sqrt(u^2+v^2)
}

#test1 <- windDir(m100_u_comp[[1]], m100_v_comp[[1]])
plot(test1)
#test2 <- windSpd(m100_u_comp[[1]], m100_v_comp[[1]])
plot(test2)

#Create corridor polygon
#crds <- cbind(x=c(-11, -13, 0, -5), y=c(38, 28, 28, 38))
#Pl <- Polygon(crds)
#Pls <- Polygons(list(Pl), ID=1)
#SPls <- SpatialPolygons(list(Pls))

#Ploting
world <- raster::shapefile("C:/Users/FMest/Documents/0. Artigos/Lingua_azul/world-administrative-boundaries/world-administrative-boundaries.shp")
#
#plot(world)
#plot(SPls, add=TRUE)
#plot(study_site_alentejo, add=TRUE)
#Save as shapefile
raster::shapefile(SPls, "wind_corridor.shp")
#Load the one edited in QGIS
wind_corridor <- raster::shapefile("wind_corridor.shp")
crs(wind_corridor) <- crs(world)
#plot
plot(world)
plot(wind_corridor, add=TRUE)

#Monthly direction
dir_vectors_for_polygon <- list()
for(i in 1:nlayers(m100_v_comp)){
wdir1 <- windDir(m100_u_comp[[i]], m100_v_comp[[i]])
dir1 <- raster::extract(wdir1, wind_corridor)
dir_vectors_for_polygon[i] <- dir1
message(paste0("Concluded ", i))
}

MEAN_MONTLY_WIND_DIRECTION <- data.frame(lapply(dir_vectors_for_polygon, mean))

years <- c("2004", "2007", "2008", "2009", "2010", "2015", "2016", "2021")
months1 <- c("jan","feb", "mar","apr","may","jun","jul","aug","sep","oct","nov","dec")

year_month <- paste0(rep(years,each=12), "_", rep(months1, 8))
names(dir_vectors_for_polygon) <- year_month

mydates <- as.Date(blue_tongue@data$Data.confi)

months_outbreaks <- format(mydates,"%m")
years_outbreaks <- format(mydates,"%Y")
outbreaks_month_year <- paste0(months_outbreaks, "_", years_outbreaks)
number_outbreaks_month <- data.frame(table(outbreaks_month_year))

years2 <- c("2004", "2007", "2008", "2009", "2010", "2015", "2016", "2021")
months2 <- c("01","02", "03","04","05","06","07","08","09","10","11","12")

all_year_month_outbreaks <- paste0(rep(months2, 8), "_", rep(years2,each=12))
all_year_month_outbreaks <- data.frame(all_year_month_outbreaks)
#
all_year_month_outbreaks <- merge(all_year_month_outbreaks, 
                                  y=number_outbreaks_month, 
                                  by.x = "all_year_month_outbreaks", 
                                  by.y = "outbreaks_month_year", 
                                  all =TRUE,
                                  sort = TRUE)

names(all_year_month_outbreaks) <- c("month","nr_outbreaks")

all_year_month_outbreaks_2 <- data.frame(rep(months2,each=8), rep(years2,12), all_year_month_outbreaks)

names(all_year_month_outbreaks_2) <- c("month", "year", "month_year", "nr_outbreaks")

all_year_month_outbreaks_2$month <- as.numeric(all_year_month_outbreaks_2$month)
all_year_month_outbreaks_2$year <- as.numeric(all_year_month_outbreaks_2$year)

head(all_year_month_outbreaks_2)
str(all_year_month_outbreaks_2)

all_year_month_outbreaks_3 <- all_year_month_outbreaks_2[
  with(all_year_month_outbreaks_2, order(year, month)),
]

all_year_month_outbreaks_3[is.na(all_year_month_outbreaks_3)] <- 0

all_year_month_outbreaks_4 <- data.frame(all_year_month_outbreaks_3, names(MEAN_MONTLY_WIND_DIRECTION), t(MEAN_MONTLY_WIND_DIRECTION))

names(all_year_month_outbreaks_4)[5:6] <- c("months_wind_direction", "wind_direction")
View(all_year_month_outbreaks_4)
head(all_year_month_outbreaks_4)

#Create data frame with the wind direction of previous month
all_year_month_outbreaks_5_previous_month <- data.frame(all_year_month_outbreaks_4[-1, 1:4], all_year_month_outbreaks_4[-96,5:6])
View(all_year_month_outbreaks_5_previous_month)

#Circular-linear regrassion
#load package
library(Directional)
#Same month: outbreaks-wind direction
circlin.cor(theta=all_year_month_outbreaks_4$wind_direction, x=all_year_month_outbreaks_4$nr_outbreaks, rads = FALSE)
#Previous month: outbreaks-wind direction
circlin.cor(theta=all_year_month_outbreaks_5_previous_month$wind_direction, x=all_year_month_outbreaks_5_previous_month$nr_outbreaks, rads = FALSE)
#Using only the months from September to October
all_year_month_outbreaks_5_previous_month_aug_oct <- all_year_month_outbreaks_5_previous_month[all_year_month_outbreaks_5_previous_month$month == c(8:10),]
circlin.cor(theta=all_year_month_outbreaks_5_previous_month_aug_oct$wind_direction, x=all_year_month_outbreaks_5_previous_month_aug_oct$nr_outbreaks, rads = FALSE)



#New plots
View(all_year_month_outbreaks_4)
View(all_year_month_outbreaks_5_previous_month)
View(all_year_month_outbreaks_5_previous_month_aug_oct)
#
plot(all_year_month_outbreaks_4$wind_direction, all_year_month_outbreaks_4$nr_outbreaks)
plot(all_year_month_outbreaks_5_previous_month$wind_direction, all_year_month_outbreaks_5_previous_month$nr_outbreaks)
plot(all_year_month_outbreaks_5_previous_month_aug_oct$wind_direction, all_year_month_outbreaks_5_previous_month_aug_oct$nr_outbreaks)#

ggplot(all_year_month_outbreaks_4, aes(x=wind_direction, y=nr_outbreaks)) +
  geom_point(size=4, shape=19) +
  xlab("Wind direction (degrees)") +
  ylab("Number of bluetongue outbreaks (all the year)")
#
ggplot(all_year_month_outbreaks_5_previous_month, aes(x=wind_direction, y=nr_outbreaks)) +
  geom_point(size=4, shape=19) +
  xlab("Wind direction in the previous month (degrees)") +
  ylab("Number of bluetongue outbreaks (all the year)")
#
ggplot(all_year_month_outbreaks_5_previous_month_aug_oct, aes(x=wind_direction, y=nr_outbreaks)) +
  geom_point(size=4, shape=19) +
  xlab("Wind direction in the previous month (degrees)") +
  ylab("Number of bluetongue outbreaks (August to October)")






