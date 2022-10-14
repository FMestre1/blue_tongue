#WIND ANALYSIS

#load packages
library(ncdf4) # package for netcdf manipulation
library(raster) # package for raster manipulation
library(rgdal) # package for geospatial analysis
library(ggplot2) # package for plotting

#Load data
m100_u_comp <- raster::stack('wind_Data_Copernicus_Bluetongue_paper/wind.nc', varname="u100")
m100_v_comp <- raster::stack('wind_Data_Copernicus_Bluetongue_paper/wind.nc', varname="v100")
m10_wind_speed <- raster::stack('wind_Data_Copernicus_Bluetongue_paper/wind.nc', varname="si10")

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
