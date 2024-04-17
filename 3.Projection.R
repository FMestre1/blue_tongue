################################################################################
# MODEL PROJECTION
################################################################################
#FMestre
#01-08-2022

library(sdm)
library(grDevices)
library(rasterVis)
library(gridExtra)
library(lattice)

#2004
dewulfi_2004 <- sdm::ensemble(dewulfi_sdm,newdata=biovars_2004,filename='output_17apr2024\\dewulfi_2004_v3.img',setting=list(method=c('weighted','uncertainty', 'stdev','ci'), stat='TSS'),overwrite=TRUE) 
pulicaris_2004 <- sdm::ensemble(pulicaris_sdm,newdata=biovars_2004,filename='output_17apr2024\\pulicaris_2004_v3.img',setting=list(method=c('weighted','uncertainty', 'stdev','ci'), stat='TSS'),overwrite=TRUE) 
obsoletus_2004 <- sdm::ensemble(obsoletus_COMPLEX_sdm,newdata=biovars_2004,filename='output_17apr2024\\obsoletus_2004_v3.img',setting=list(method=c('weighted','uncertainty', 'stdev','ci'), stat='TSS'),overwrite=TRUE) 
imicola_2004 <- sdm::ensemble(imicola_sdm,newdata=biovars_2004,filename='output_17apr2024\\imicola_2004_v3.img',list(method=c('weighted','uncertainty', 'stdev','ci'), stat='TSS'),overwrite=TRUE) 
#
#plot(brevitasis_2004)
plot(dewulfi_2004)
plot(pulicaris_2004)
plot(obsoletus_2004)
plot(imicola_2004)

#2007
dewulfi_2007 <- sdm::ensemble(dewulfi_sdm,newdata=biovars_2007,filename='output_17apr2024\\dewulfi_2007_v3.img',setting=list(method=c('weighted','uncertainty', 'stdev','ci'), stat='TSS'),overwrite=TRUE) 
pulicaris_2007 <- sdm::ensemble(pulicaris_sdm,newdata=biovars_2007,filename='output_17apr2024\\pulicaris_2007_v3.img',setting=list(method=c('weighted','uncertainty', 'stdev','ci'), stat='TSS'),overwrite=TRUE) 
obsoletus_2007 <- sdm::ensemble(obsoletus_COMPLEX_sdm,newdata=biovars_2007,filename='output_17apr2024\\obsoletus_2007_v3.img',setting=list(method=c('weighted','uncertainty', 'stdev','ci'), stat='TSS'),overwrite=TRUE) 
imicola_2007 <- sdm::ensemble(imicola_sdm,newdata=biovars_2007,filename='output_17apr2024\\imicola_2007_v3.img',setting=list(method=c('weighted','uncertainty', 'stdev','ci'), stat='TSS'),overwrite=TRUE) 
#
plot(dewulfi_2007)
plot(pulicaris_2007)
plot(obsoletus_2007)
plot(imicola_2007)

#2008
dewulfi_2008 <- sdm::ensemble(dewulfi_sdm,newdata=biovars_2008,filename='output_17apr2024\\dewulfi_2008_v3.img',setting=list(method=c('weighted','uncertainty', 'stdev','ci'), stat='TSS'),overwrite=TRUE) 
pulicaris_2008 <- sdm::ensemble(pulicaris_sdm,newdata=biovars_2008,filename='output_17apr2024\\pulicaris_2008_v3.img',setting=list(method=c('weighted','uncertainty', 'stdev','ci'), stat='TSS'),overwrite=TRUE) 
obsoletus_2008 <- sdm::ensemble(obsoletus_COMPLEX_sdm,newdata=biovars_2008,filename='output_17apr2024\\obsoletus_2008_v3.img',setting=list(method=c('weighted','uncertainty', 'stdev','ci'), stat='TSS'),overwrite=TRUE) 
imicola_2008 <- sdm::ensemble(imicola_sdm,newdata=biovars_2008,filename='output_17apr2024\\imicola_2008_v3.img',setting=list(method=c('weighted','uncertainty', 'stdev','ci'), stat='TSS'),overwrite=TRUE) 
#
plot(dewulfi_2008)
plot(pulicaris_2008)
plot(obsoletus_2008)
plot(imicola_2008)

#2009
dewulfi_2009 <- sdm::ensemble(dewulfi_sdm,newdata=biovars_2009,filename='output_17apr2024\\dewulfi_2009_v3.img',setting=list(method=c('weighted','uncertainty', 'stdev','ci'), stat='TSS'),overwrite=TRUE) 
pulicaris_2009 <- sdm::ensemble(pulicaris_sdm,newdata=biovars_2009,filename='output_17apr2024\\pulicaris_2009_v3.img',setting=list(method=c('weighted','uncertainty', 'stdev','ci'), stat='TSS'),overwrite=TRUE) 
obsoletus_2009 <- sdm::ensemble(obsoletus_COMPLEX_sdm,newdata=biovars_2009,filename='output_17apr2024\\obsoletus_2009_v3.img',setting=list(method=c('weighted','uncertainty', 'stdev','ci'), stat='TSS'),overwrite=TRUE) 
imicola_2009 <- sdm::ensemble(imicola_sdm,newdata=biovars_2009,filename='output_17apr2024\\imicola_2009_v3.img',setting=list(method=c('weighted','uncertainty', 'stdev','ci'), stat='TSS'),overwrite=TRUE) 
#
plot(dewulfi_2009)
plot(pulicaris_2009)
plot(obsoletus_2009)
plot(imicola_2009)

#2010
dewulfi_2010 <- sdm::ensemble(dewulfi_sdm,newdata=biovars_2010,filename='output_17apr2024\\dewulfi_2010_v3.img',setting=list(method=c('weighted','uncertainty', 'stdev','ci'), stat='TSS'),overwrite=TRUE) 
pulicaris_2010 <- sdm::ensemble(pulicaris_sdm,newdata=biovars_2010,filename='output_17apr2024\\pulicaris_2010_v3.img',setting=list(method=c('weighted','uncertainty', 'stdev','ci'), stat='TSS'),overwrite=TRUE) 
obsoletus_2010 <- sdm::ensemble(obsoletus_COMPLEX_sdm,newdata=biovars_2010,filename='output_17apr2024\\obsoletus_2010_v3.img',setting=list(method=c('weighted','uncertainty', 'stdev','ci'), stat='TSS'),overwrite=TRUE) 
imicola_2010 <- sdm::ensemble(imicola_sdm,newdata=biovars_2010,filename='output_17apr2024\\imicola_2010_v3.img',setting=list(method=c('weighted','uncertainty', 'stdev','ci'), stat='TSS'),overwrite=TRUE) 
#
plot(dewulfi_2010)
plot(pulicaris_2010)
plot(obsoletus_2010)
plot(imicola_2010)

#2015
dewulfi_2015 <- sdm::ensemble(dewulfi_sdm,newdata=biovars_2015,filename='output_17apr2024\\dewulfi_2015_v3.img',setting=list(method=c('weighted','uncertainty', 'stdev','ci'), stat='TSS'),overwrite=TRUE) 
pulicaris_2015 <- sdm::ensemble(pulicaris_sdm,newdata=biovars_2015,filename='output_17apr2024\\pulicaris_2015_v3.img',setting=list(method=c('weighted','uncertainty', 'stdev','ci'), stat='TSS'),overwrite=TRUE) 
obsoletus_2015 <- sdm::ensemble(obsoletus_COMPLEX_sdm,newdata=biovars_2015,filename='output_17apr2024\\obsoletus_2015_v3.img',setting=list(method=c('weighted','uncertainty', 'stdev','ci'), stat='TSS'),overwrite=TRUE) 
imicola_2015 <- sdm::ensemble(imicola_sdm,newdata=biovars_2015,filename='output_17apr2024\\imicola_2015_v3.img',setting=list(method=c('weighted','uncertainty', 'stdev','ci'), stat='TSS'),overwrite=TRUE) 
#
plot(dewulfi_2015)
plot(pulicaris_2015)
plot(obsoletus_2015)
plot(imicola_2015)

#2016
dewulfi_2016 <- sdm::ensemble(dewulfi_sdm,newdata=biovars_2016,filename='output_17apr2024\\dewulfi_2016_v3.img',setting=list(method=c('weighted','uncertainty', 'stdev','ci'), stat='TSS'),overwrite=TRUE) 
pulicaris_2016 <- sdm::ensemble(pulicaris_sdm,newdata=biovars_2016,filename='output_17apr2024\\pulicaris_2016_v3.img',setting=list(method=c('weighted','uncertainty', 'stdev','ci'), stat='TSS'),overwrite=TRUE) 
obsoletus_2016 <- sdm::ensemble(obsoletus_COMPLEX_sdm,newdata=biovars_2016,filename='output_17apr2024\\obsoletus_2016_v3.img',setting=list(method=c('weighted','uncertainty', 'stdev','ci'), stat='TSS'),overwrite=TRUE) 
imicola_2016 <- sdm::ensemble(imicola_sdm,newdata=biovars_2016,filename='output_17apr2024\\imicola_2016_v3.img',setting=list(method=c('weighted','uncertainty', 'stdev','ci'), stat='TSS'),overwrite=TRUE) 
#
plot(dewulfi_2016)
plot(pulicaris_2016)
plot(obsoletus_2016)
plot(imicola_2016)

#2021
dewulfi_2021 <- sdm::ensemble(dewulfi_sdm,newdata=biovars_2021,filename='output_17apr2024\\dewulfi_2021_v3.img',setting=list(method=c('weighted','uncertainty', 'stdev','ci'), stat='TSS'),overwrite=TRUE) 
pulicaris_2021 <- sdm::ensemble(pulicaris_sdm,newdata=biovars_2021,filename='output_17apr2024\\pulicaris_2021_v3.img',setting=list(method=c('weighted','uncertainty', 'stdev','ci'), stat='TSS'),overwrite=TRUE) 
obsoletus_2021 <- sdm::ensemble(obsoletus_COMPLEX_sdm,newdata=biovars_2021,filename='output_17apr2024\\obsoletus_2021_v3.img',setting=list(method=c('weighted','uncertainty', 'stdev','ci'), stat='TSS'),overwrite=TRUE) 
imicola_2021 <- sdm::ensemble(imicola_sdm,newdata=biovars_2021,filename='output_17apr2024\\imicola_2021_v3.img',setting=list(method=c('weighted','uncertainty', 'stdev','ci'), stat='TSS'),overwrite=TRUE) 
#
plot(dewulfi_2021)
plot(pulicaris_2021)
plot(obsoletus_2021)
plot(imicola_2021)
