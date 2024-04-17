################################################################################
#  CREATING A PLOT WITH THE SUITABILITY MAPS
################################################################################
#FMestre
#11-02-2024

#Load required packages
library(terra)
library(colorRamps)

file_path <- "C:\\Users\\asus\\Documents\\github\\blue_tongue2\\output_17apr2024"
filenames <- list.files(file_path)
filenames2 <- filenames[grepl("*.img$", filenames)]
filenames3 <- stringr::str_remove(filenames2, ".img")
filenames4 <- stringr::str_remove(filenames3, "_v3")
filenames5 <- paste0("C. ", filenames4)
filenames6 <- paste0(stringr::str_replace(filenames5, "_", "("), ")")
filenames7 <- stringr::str_replace(filenames6,"\\(", " (")

raster_stack <- c()
for(i in 1:length(filenames2)) raster_stack <- c(raster_stack, terra::rast(paste0(file_path, "\\", filenames2[i])))
names(raster_stack) <- filenames7
#class(raster_stack)

raster_stack_vers2 <- rast(raster_stack) 


#DEWULFI
terra::plot(raster_stack_vers2[[1:8]], 
            range = c(0, 1), 
            main = "",
            box = FALSE,
            legend = FALSE,
            axes = FALSE,
            nr = 2
)

#IMICOLA
names(raster_stack_vers2[[9:16]])

terra::plot(raster_stack_vers2[[9:16]], 
            range = c(0, 1), 
            main = "",
            box = FALSE,
            legend = FALSE,
            axes = FALSE,
            nr = 2
)

#OBSOLETUS
names(raster_stack_vers2[[17:24]])

terra::plot(raster_stack_vers2[[17:24]], 
            range = c(0, 1), 
            main = "",
            box = FALSE,
            legend = FALSE,
            axes = FALSE,
            nr = 2
)

#PULICARIS
names(raster_stack_vers2[[25:32]])

terra::plot(raster_stack_vers2[[25:32]], 
            range = c(0, 1), 
            main = "",
            box = FALSE,
            legend = FALSE,
            axes = FALSE,
            nr = 2
)

