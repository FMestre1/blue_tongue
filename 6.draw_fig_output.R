################################################################################
#  CREATING A PLOT WITH THE SUITABILITY MAPS
################################################################################
#FMestre
#11-02-2024

#Load required packages
library(terra)
library(colorRamps)

file_path <- "C:\\Users\\asus\\Documents\\0. Artigos\\4. SUBMETIDOS\\Lingua_azul\\Medical and Veterinary Entomology\\MVE_3\\output_06_09_2022"
filenames <- list.files(file_path)
filenames2 <- filenames[grepl("*.img$", filenames)]
filenames3 <- stringr::str_remove(filenames2, ".img")
filenames4 <- stringr::str_remove(filenames3, "_v2")
filenames5 <- paste0("C. ", filenames4)
#filenames6 <- stringr::str_remove(filenames5, "_20\\d{2}")
filenames6 <- paste0(stringr::str_replace(filenames5, "_", "("), ")")
filenames7 <- stringr::str_replace(filenames6,"\\(", " (")

#file_list <- list()
#for(i in 1:length(filenames2)) file_list[[i]] <- terra::rast(paste0(file_path, "\\", filenames2[i]))
#names(file_list) <- filenames7

raster_stack <- c()
for(i in 1:length(filenames2)) raster_stack <- c(raster_stack, terra::rast(paste0(file_path, "\\", filenames2[i])))
names(raster_stack) <- filenames7
#class(raster_stack)

raster_stack_vers2 <- rast(raster_stack) 

#colors1 <- colorRampPalette(
#             colors = c("#104E8B",
#             "#79CDCD",
#             "#FFEFDB",
#             "#EE0000",
#             "firebrick4")
#            )

terra::plot(raster_stack_vers2[[1]], 
            #col = map.pal("elevation", 50), 
            #col = colors1(100),
            range = c(0, 1), 
            main = stringr::str_extract(filenames7[1], "(\\d{4})"),
            box = FALSE
)

#DEWULFI
terra::plot(raster_stack_vers2[[1:8]], 
            #col = map.pal("elevation", 50), 
            #col = colors1(100),
            range = c(0, 1), 
            #main = stringr::str_extract(filenames7[1:8], "(\\d{4})"),
            main = "",
            box = FALSE,
            legend = FALSE,
            axes = FALSE,
            nr = 2
)

#IMICOLA
terra::plot(raster_stack_vers2[[9:16]], 
            #col = map.pal("elevation", 50), 
            #col = colors1(100),
            range = c(0, 1), 
            #main = stringr::str_extract(filenames7[9:16], "(\\d{4})"),
            main = "",
            box = FALSE,
            legend = FALSE,
            axes = FALSE,
            nr = 2
)

#OBSOLETUS
terra::plot(raster_stack_vers2[[17:24]], 
            #col = map.pal("elevation", 50), 
            #col = colors1(100),
            range = c(0, 1), 
            #main = stringr::str_extract(filenames7[17:24], "(\\d{4})"),
            main = "",
            box = FALSE,
            legend = FALSE,
            axes = FALSE,
            nr = 2
)

#PULICARIS
terra::plot(raster_stack_vers2[[25:32]], 
            #col = map.pal("elevation", 50), 
            #col = colors1(100),
            range = c(0, 1), 
            #main = stringr::str_extract(filenames7[25:32], "(\\d{4})"),
            main = "",
            box = FALSE,
            legend = FALSE,
            axes = FALSE,
            nr = 2
)

