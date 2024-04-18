################################################################################
# Plot uncertainty
################################################################################
#fmESTRE
#12-02-2024

#devtools::install_github('babaknaimi/sdm')

# generates four outputs including: 
# 1. weighted average of predictions,
# 2. model-based uncertainty, 
# 3. standard deviation of predicted probabilities,
# 4. confidence interval length (upper limit - lower limit)

#Define breaks
brks <- seq(0, 1, by=0.1) 

#DEWULFI
uncert_DEWULFI <- raster::stack(
              dewulfi_2004[[2]],
              dewulfi_2007[[2]],
              dewulfi_2008[[2]],
              dewulfi_2009[[2]],
              dewulfi_2010[[2]],
              dewulfi_2015[[2]],
              dewulfi_2016[[2]],
              dewulfi_2021[[2]]
              )

uncert_DEWULFI <- rast(uncert_DEWULFI) 

terra::plot(uncert_DEWULFI, 
            col = rev(terrain.colors(11)),
            breaks = brks,
            main = "",
            box = FALSE,
            legend = FALSE,
            axes = FALSE,
            nr = 2
)


#OBSOLETUS
uncert_OBSOLETUS <- raster::stack(
  obsoletus_2004[[2]],
  obsoletus_2007[[2]],
  obsoletus_2008[[2]],
  obsoletus_2009[[2]],
  obsoletus_2010[[2]],
  obsoletus_2015[[2]],
  obsoletus_2016[[2]],
  obsoletus_2021[[2]]
)

uncert_OBSOLETUS <- rast(uncert_OBSOLETUS) 

terra::plot(uncert_OBSOLETUS, 
            col = rev(terrain.colors(11)),
            breaks = brks,
            main = "",
            box = FALSE,
            legend = FALSE,
            axes = FALSE,
            nr = 2
)


#IMICOLA
uncert_IMICOLA <- raster::stack(
  imicola_2004[[2]],
  imicola_2007[[2]],
  imicola_2008[[2]],
  imicola_2009[[2]],
  imicola_2010[[2]],
  imicola_2015[[2]],
  imicola_2016[[2]],
  imicola_2021[[2]]
)

uncert_IMICOLA <- rast(uncert_IMICOLA) 

terra::plot(uncert_IMICOLA, 
            col = rev(terrain.colors(11)),
            breaks = brks,
            main = "",
            box = FALSE,
            legend = FALSE,
            axes = FALSE,
            nr = 2
)


#PULICARIS
uncert_PULICARIS <- raster::stack(
  pulicaris_2004[[2]],
  pulicaris_2007[[2]],
  pulicaris_2008[[2]],
  pulicaris_2009[[2]],
  pulicaris_2010[[2]],
  pulicaris_2015[[2]],
  pulicaris_2016[[2]],
  pulicaris_2021[[2]]
)

uncert_PULICARIS <- rast(uncert_PULICARIS) 

terra::plot(uncert_PULICARIS, 
            col = rev(terrain.colors(11)),
            breaks = brks,
            main = "",
            box = FALSE,
            legend = FALSE,
            axes = FALSE,
            nr = 2
)


# Save #######################################################################
#save.image("blue_tongue_18APR2024.RData")
