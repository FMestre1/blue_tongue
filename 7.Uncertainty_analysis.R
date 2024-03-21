################################################################################
# UINCERTAINTY ANALYSIS
################################################################################
#fmESTRE
#12-02-2024

#devtools::install_github('babaknaimi/sdm')

# generates four outputs including: 
# 1. weighted average of predictions,
# 2. model-based uncertainty, 
# 3. standard deviation of predicted probabilities,
# 4. confidence interval length (upper limit - lower limit)

#####################
# But first convert the 'sdmModels' class object to the current version of the package
#####################
#There were some updates in the package sdm ever since the first modelling
obsoletus_COMPLEX_sdm_NEW_VERSION <- sdmAdapt(obsoletus_COMPLEX_sdm)
dewulfi_sdm_NEW_VERSION <- sdmAdapt(dewulfi_sdm)
pulicaris_sdm_NEW_VERSION <- sdmAdapt(pulicaris_sdm)
imicola_sdm_NEW_VERSION <- sdmAdapt(imicola_sdm)

#####################
#2004
#####################

dewulfi_2004_13fev <- sdm::ensemble(dewulfi_sdm_NEW_VERSION, 
                                    newdata=biovars_2004,
                                    filename='output_FEV_2024\\dewulfi_2004_fev24.img',
                                    setting=list(method=c('weighted','uncertainty', 'stdev','ci'), stat='TSS'),
                                    overwrite=TRUE) 

pulicaris_2004_13fev <- sdm::ensemble(pulicaris_sdm_NEW_VERSION, 
                                      newdata=biovars_2004,
                                      filename='output_FEV_2024\\pulicaris_2004_fev24.img',
                                      setting=list(method=c('weighted','uncertainty', 'stdev','ci'), stat='TSS'), 
                                      overwrite=TRUE)

obsoletus_2004_13fev <- sdm::ensemble(obsoletus_COMPLEX_sdm_NEW_VERSION, 
                                      newdata=biovars_2004,
                                      filename='output_FEV_2024\\obsoletus_2004_fev24.img',
                                      setting=list(method=c('weighted','uncertainty', 'stdev','ci'), stat='TSS'),
                                      overwrite=TRUE)

imicola_2004_13fev <- sdm::ensemble(imicola_sdm_NEW_VERSION, 
                                    newdata=biovars_2004,
                                    filename='output_FEV_2024\\imicola_2004_fev24.img',
                                    setting=list(method=c('weighted','uncertainty', 'stdev','ci'), stat='TSS'),
                                    overwrite=TRUE) 


#####################
#2007
#####################

dewulfi_2007_13fev <- sdm::ensemble(dewulfi_sdm_NEW_VERSION,
                                    newdata=biovars_2007,
                                    filename='output_FEV_2024\\dewulfi_2007_fev24.img',
                                    setting=list(method=c('weighted','uncertainty', 'stdev','ci'), stat='TSS'),
                                    overwrite=TRUE)

pulicaris_2007_13fev <- sdm::ensemble(pulicaris_sdm_NEW_VERSION,
                                      newdata=biovars_2007,
                                      filename='output_FEV_2024\\pulicaris_2007_fev24.img',
                                      setting=list(method=c('weighted','uncertainty', 'stdev','ci'), stat='TSS'),
                                      overwrite=TRUE)

obsoletus_2007_13fev <- sdm::ensemble(obsoletus_COMPLEX_sdm_NEW_VERSION,
                                      newdata=biovars_2007,
                                      filename='output_FEV_2024\\obsoletus_2007_fev24.img',
                                      setting=list(method=c('weighted','uncertainty', 'stdev','ci'), stat='TSS'),
                                      overwrite=TRUE)

imicola_2007_13fev <- sdm::ensemble(imicola_sdm_NEW_VERSION,
                                    newdata=biovars_2007,
                                    filename='output_FEV_2024\\imicola_2007_fev24.img',
                                    setting=list(method=c('weighted','uncertainty', 'stdev','ci'), stat='TSS'),
                                    overwrite=TRUE) 

#####################
#2008
#####################

dewulfi_2008_13fev <- sdm::ensemble(dewulfi_sdm_NEW_VERSION,
                              newdata=biovars_2008,
                              filename='output_FEV_2024\\dewulfi_2008_fev24.img',
                              setting=list(method=c('weighted','uncertainty', 'stdev','ci'), stat='TSS'),
                              overwrite=TRUE)

pulicaris_2008_13fev <- sdm::ensemble(pulicaris_sdm_NEW_VERSION,
                                newdata=biovars_2008,
                                filename='output_FEV_2024\\pulicaris_2008_fev24.img',
                                setting=list(method=c('weighted','uncertainty', 'stdev','ci'), stat='TSS'),
                                overwrite=TRUE)

obsoletus_2008_13fev <- sdm::ensemble(obsoletus_COMPLEX_sdm_NEW_VERSION,
                                newdata=biovars_2008,
                                filename='output_FEV_2024\\obsoletus_2008_fev24.img',
                                setting=list(method=c('weighted','uncertainty', 'stdev','ci'), stat='TSS'),
                                overwrite=TRUE)

imicola_2008_13fev <- sdm::ensemble(imicola_sdm_NEW_VERSION,
                              newdata=biovars_2008,
                              filename='output_FEV_2024\\imicola_2008_fev24.img',
                              setting=list(method=c('weighted','uncertainty', 'stdev','ci'), stat='TSS'),
                              overwrite=TRUE) 


######################
#2009
######################

dewulfi_2009_13fev <- sdm::ensemble(dewulfi_sdm_NEW_VERSION,
                              newdata=biovars_2009,
                              filename='output_FEV_2024\\dewulfi_2009_fev24.img',
                              setting=list(method=c('weighted','uncertainty', 'stdev','ci'), stat='TSS'),
                              overwrite=TRUE)

pulicaris_2009_13fev <- sdm::ensemble(pulicaris_sdm_NEW_VERSION,
                                newdata=biovars_2009,
                                filename='output_FEV_2024\\pulicaris_2009_fev24.img',
                                setting=list(method=c('weighted','uncertainty', 'stdev','ci'), stat='TSS'),
                                overwrite=TRUE)

obsoletus_2009_13fev <- sdm::ensemble(obsoletus_COMPLEX_sdm_NEW_VERSION,
                                newdata=biovars_2009,
                                filename='output_FEV_2024\\obsoletus_2009_fev24.img',
                                setting=list(method=c('weighted','uncertainty', 'stdev','ci'), stat='TSS'),
                                overwrite=TRUE)

imicola_2009_13fev <- sdm::ensemble(imicola_sdm_NEW_VERSION,
                              newdata=biovars_2009,
                              filename='output_FEV_2024\\imicola_2009_fev24.img',
                              setting=list(method=c('weighted','uncertainty', 'stdev','ci'), stat='TSS'),
                              overwrite=TRUE)


######################
#2010
######################

dewulfi_2010_13fev <- sdm::ensemble(dewulfi_sdm_NEW_VERSION,
                                    newdata=biovars_2010,
                                    filename='output_FEV_2024\\dewulfi_2010_fev24.img',
                                    setting=list(method=c('weighted','uncertainty', 'stdev','ci'), stat='TSS'),
                                    overwrite=TRUE)

pulicaris_2010_13fev <- sdm::ensemble(pulicaris_sdm_NEW_VERSION,
                                      newdata=biovars_2010,
                                      filename='output_FEV_2024\\pulicaris_2010_fev24.img',
                                      setting=list(method=c('weighted','uncertainty', 'stdev','ci'), stat='TSS'),
                                      overwrite=TRUE)

obsoletus_2010_13fev <- sdm::ensemble(obsoletus_COMPLEX_sdm_NEW_VERSION,
                                      newdata=biovars_2010,
                                      filename='output_FEV_2024\\obsoletus_2010_fev24.img',
                                      setting=list(method=c('weighted','uncertainty', 'stdev','ci'), stat='TSS'),
                                      overwrite=TRUE)

imicola_2010_13fev <- sdm::ensemble(imicola_sdm_NEW_VERSION,
                                    newdata=biovars_2010,
                                    filename='output_FEV_2024\\imicola_2010_fev24.img',
                                    setting=list(method=c('weighted','uncertainty', 'stdev','ci'), stat='TSS'),
                                    overwrite=TRUE) 

######################
#2015
######################

dewulfi_2015_13fev <- sdm::ensemble(dewulfi_sdm_NEW_VERSION,
                                    newdata=biovars_2015,
                                    filename='output_FEV_2024\\dewulfi_2015_fev24.img',
                                    setting=list(method=c('weighted','uncertainty', 'stdev','ci'), stat='TSS'),
                                    overwrite=TRUE)

pulicaris_2015_13fev <- sdm::ensemble(pulicaris_sdm_NEW_VERSION,
                                      newdata=biovars_2015,
                                      filename='output_FEV_2024\\pulicaris_2015_fev24.img',
                                      setting=list(method=c('weighted','uncertainty', 'stdev','ci'), stat='TSS'),
                                      overwrite=TRUE)

obsoletus_2015_13fev <- sdm::ensemble(obsoletus_COMPLEX_sdm_NEW_VERSION,
                                      newdata=biovars_2015,
                                      filename='output_FEV_2024\\obsoletus_2015_fev24.img',
                                      setting=list(method=c('weighted','uncertainty', 'stdev','ci'), stat='TSS'),
                                      overwrite=TRUE)

imicola_2015_13fev <- sdm::ensemble(imicola_sdm_NEW_VERSION,
                                    newdata=biovars_2015,
                                    filename='output_FEV_2024\\imicola_2015_fev24.img',
                                    setting=list(method=c('weighted','uncertainty', 'stdev','ci'), stat='TSS'),
                                    overwrite=TRUE)

######################
#2016
######################

dewulfi_2016_13fev <- sdm::ensemble(dewulfi_sdm_NEW_VERSION,
                                    newdata=biovars_2016,
                                    filename='output_FEV_2024\\dewulfi_2016_fev24.img',
                                    setting=list(method=c('weighted','uncertainty', 'stdev','ci'), stat='TSS'),
                                    overwrite=TRUE)

pulicaris_2016_13fev <- sdm::ensemble(pulicaris_sdm_NEW_VERSION,
                                      newdata=biovars_2016,
                                      filename='output_FEV_2024\\pulicaris_2016_fev24.img',
                                      setting=list(method=c('weighted','uncertainty', 'stdev','ci'), stat='TSS'),
                                      overwrite=TRUE)

obsoletus_2016_13fev <- sdm::ensemble(obsoletus_COMPLEX_sdm_NEW_VERSION,
                                      newdata=biovars_2016,
                                      filename='output_FEV_2024\\obsoletus_2016_fev24.img',
                                      setting=list(method=c('weighted','uncertainty', 'stdev','ci'), stat='TSS'),
                                      overwrite=TRUE)

imicola_2016_13fev <- sdm::ensemble(imicola_sdm_NEW_VERSION,
                                    newdata=biovars_2016,
                                    filename='output_FEV_2024\\imicola_2016_fev24.img',
                                    setting=list(method=c('weighted','uncertainty', 'stdev','ci'), stat='TSS'),
                                    overwrite=TRUE)


######################
#2021
######################

dewulfi_2021_13fev <- sdm::ensemble(dewulfi_sdm_NEW_VERSION,
                              newdata=biovars_2021,
                              filename='output_FEV_2024\\dewulfi_2021_fev24.img',
                              setting=list(method=c('weighted','uncertainty', 'stdev','ci'), stat='TSS'),
                              overwrite=TRUE)

pulicaris_2021_13fev <- sdm::ensemble(pulicaris_sdm_NEW_VERSION,
                                newdata=biovars_2021,
                                filename='output_FEV_2024\\pulicaris_2021_fev24.img',
                                setting=list(method=c('weighted','uncertainty', 'stdev','ci'), stat='TSS'),
                                overwrite=TRUE)

obsoletus_2021_13fev <- sdm::ensemble(obsoletus_COMPLEX_sdm_NEW_VERSION,
                                newdata=biovars_2021,
                                filename='output_FEV_2024\\obsoletus_2021_fev24.img',
                                setting=list(method=c('weighted','uncertainty', 'stdev','ci'), stat='TSS'),
                                overwrite=TRUE)

imicola_2021_13fev <- sdm::ensemble(imicola_sdm_NEW_VERSION,
                              newdata=biovars_2021,
                              filename='output_FEV_2024\\imicola_2021_fev24.img',
                              setting=list(method=c('weighted','uncertainty', 'stdev','ci'), stat='TSS'),
                              overwrite=TRUE)


################################################################################
# Plot uncertainty
################################################################################

#Define breaks
brks <- seq(0, 1, by=0.1) 

#DEWULFI
uncert_DEWULFI <- raster::stack(
              dewulfi_2004_13fev[[2]],
              dewulfi_2007_13fev[[2]],
              dewulfi_2008_13fev[[2]],
              dewulfi_2009_13fev[[2]],
              dewulfi_2010_13fev[[2]],
              dewulfi_2015_13fev[[2]],
              dewulfi_2016_13fev[[2]],
              dewulfi_2021_13fev[[2]]
              )

terra::plot(uncert_DEWULFI, 
            #range = c(0, 1), 
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
  obsoletus_2004_13fev[[2]],
  obsoletus_2007_13fev[[2]],
  obsoletus_2008_13fev[[2]],
  obsoletus_2009_13fev[[2]],
  obsoletus_2010_13fev[[2]],
  obsoletus_2015_13fev[[2]],
  obsoletus_2016_13fev[[2]],
  obsoletus_2021_13fev[[2]]
)

terra::plot(uncert_OBSOLETUS, 
            #range = c(0, 1), 
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
  imicola_2004_13fev[[2]],
  imicola_2007_13fev[[2]],
  imicola_2008_13fev[[2]],
  imicola_2009_13fev[[2]],
  imicola_2010_13fev[[2]],
  imicola_2015_13fev[[2]],
  imicola_2016_13fev[[2]],
  imicola_2021_13fev[[2]]
)

terra::plot(uncert_IMICOLA, 
            #range = c(0, 1), 
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
  pulicaris_2004_13fev[[2]],
  pulicaris_2007_13fev[[2]],
  pulicaris_2008_13fev[[2]],
  pulicaris_2009_13fev[[2]],
  pulicaris_2010_13fev[[2]],
  pulicaris_2015_13fev[[2]],
  pulicaris_2016_13fev[[2]],
  pulicaris_2021_13fev[[2]]
)

terra::plot(uncert_PULICARIS, 
            #range = c(0, 1), 
            col = rev(terrain.colors(11)),
            breaks = brks,
            main = "",
            box = FALSE,
            legend = FALSE,
            axes = FALSE,
            nr = 2
)
