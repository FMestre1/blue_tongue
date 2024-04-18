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


#dewulfi  ##################
dewulfi_stack <- c()
names_dwulfi <- c()

for(i in 1:8) {
  dewulfi_stack[[i]] <-  raster_stack[[i]][[1]]
  names_dwulfi[i] <- names(raster_stack)[i]
}

names(dewulfi_stack) <- names_dwulfi
dewulfi_stack <- rast(dewulfi_stack)

par(mfrow = c(2, 4))
for(i in 1:8){

terra::plot(dewulfi_stack[[i]],
             #nc = 4,
             #main = stringr::str_extract_all(names_dwulfi, "\\d+")[[i]],
             range = c(0,1),
             axes = FALSE,
             #loc.main=c(-5.5,38),
             xpd=TRUE,
             legend = FALSE
)

#if(i==1) north(type=1, xy=c(-11,41),xpd = TRUE, cex=5)
  
if(i==8){
  sbar(d=100,
       divs = 4,
       type="bar",
       lonlat = TRUE,
       #labels = c(50, 100, 100),
       cex=1, 
       xy=c(-6,37), 
       below = "km", 
       lwd=5)
       }

}


#imicola ##################
imicola_stack <- c()
names_imicola <- c()

for(i in 9:16) {
  imicola_stack[[i-8]] <-  raster_stack[[i]][[1]]
  names_imicola[i-8] <- names(raster_stack)[i]
}

names(imicola_stack) <- names_dwulfi
imicola_stack <- rast(imicola_stack)

par(mfrow = c(2, 4))
for(i in 1:8){
  
  terra::plot(imicola_stack[[i]],
              range = c(0,1),
              axes = FALSE,
              xpd=TRUE,
              legend = FALSE
  )
  
  if(i==8){
    sbar(d=100,
         divs = 4,
         type="bar",
         lonlat = TRUE,
         cex=1, 
         xy=c(-6,37), 
         below = "km", 
         lwd=5)
  }
  
}


#obsoletus  ##################
obsoletus_stack <- c()
names_obsoletus <- c()

for(i in 17:24) {
  obsoletus_stack[[i-16]] <-  raster_stack[[i]][[1]]
  names_obsoletus[i-16] <- names(raster_stack)[i]
}

names(obsoletus_stack) <- names_obsoletus
obsoletus_stack <- rast(obsoletus_stack)

par(mfrow = c(2, 4))
for(i in 1:8){
  
  terra::plot(obsoletus_stack[[i]],
              range = c(0,1),
              axes = FALSE,
              xpd=TRUE,
              legend = FALSE
  )
  
  if(i==8){
    sbar(d=100,
         divs = 4,
         type="bar",
         lonlat = TRUE,
         cex=1, 
         xy=c(-6,37), 
         below = "km", 
         lwd=5)
  }
  
}


#pulicaris  ##################
pulicaris_stack <- c()
names_pulicaris <- c()

for(i in 25:32) {
  pulicaris_stack[[i-24]] <-  raster_stack[[i]][[1]]
  names_pulicaris[i-24] <- names(raster_stack)[i]
}

names(pulicaris_stack) <- names_pulicaris
pulicaris_stack <- rast(pulicaris_stack)

par(mfrow = c(2, 4))
for(i in 1:8){
  
  terra::plot(pulicaris_stack[[i]],
              range = c(0,1),
              axes = FALSE,
              xpd=TRUE,
              legend = FALSE
  )
  
  if(i==8){
    sbar(d=100,
         divs = 4,
         type="bar",
         lonlat = TRUE,
         cex=1, 
         xy=c(-6,37), 
         below = "km", 
         lwd=5)
  }
  
}

