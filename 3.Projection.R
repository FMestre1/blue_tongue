#FMestre
#01-08-2022

library(sdm)
library(grDevices)
library(rasterVis)
library(gridExtra)

#2004
#brevitasis_2004 <- sdm::ensemble(brevitasis_sdm,newdata=bio_2004,filename='brevitasis_2004.img',setting=list(method='weighted',stat='TSS'),overwrite=TRUE) 
dewulfi_2004 <- sdm::ensemble(dewulfi_sdm,newdata=bio_2004,filename='output_06_09_2022\\dewulfi_2004_v2.img',setting=list(method='weighted',stat='TSS'),overwrite=TRUE) 
pulicaris_2004 <- sdm::ensemble(pulicaris_sdm,newdata=bio_2004,filename='output_06_09_2022\\pulicaris_2004_v2.img',setting=list(method='weighted',stat='TSS'),overwrite=TRUE) 
obsoletus_2004 <- sdm::ensemble(obsoletus_COMPLEX_sdm,newdata=bio_2004,filename='output_06_09_2022\\obsoletus_2004_v2.img',setting=list(method='weighted',stat='TSS'),overwrite=TRUE) 
imicola_2004 <- sdm::ensemble(imicola_sdm,newdata=bio_2004,filename='output_06_09_2022\\imicola_2004_v2.img',setting=list(method='weighted',stat='TSS'),overwrite=TRUE) 
#
#plot(brevitasis_2004)
plot(dewulfi_2004)
plot(pulicaris_2004)
plot(obsoletus_2004)
plot(imicola_2004)

#2007
#brevitasis_2007 <- sdm::ensemble(brevitasis_sdm,newdata=bio_2007,filename='output_12_08_2022\\brevitasis_2007.img',setting=list(method='weighted',stat='TSS'),overwrite=TRUE) 
dewulfi_2007 <- sdm::ensemble(dewulfi_sdm,newdata=bio_2007,filename='output_06_09_2022\\dewulfi_2007.img',setting=list(method='weighted',stat='TSS'),overwrite=TRUE) 
pulicaris_2007 <- sdm::ensemble(pulicaris_sdm,newdata=bio_2007,filename='output_06_09_2022\\pulicaris_2007.img',setting=list(method='weighted',stat='TSS'),overwrite=TRUE) 
obsoletus_2007 <- sdm::ensemble(obsoletus_COMPLEX_sdm,newdata=bio_2007,filename='output_06_09_2022\\obsoletus_2007.img',setting=list(method='weighted',stat='TSS'),overwrite=TRUE) 
imicola_2007 <- sdm::ensemble(imicola_sdm,newdata=bio_2007,filename='output_06_09_2022\\imicola_2007.img',setting=list(method='weighted',stat='TSS'),overwrite=TRUE) 
#
plot(brevitasis_2007)
plot(dewulfi_2007)
plot(pulicaris_2007)
plot(obsoletus_2007)
plot(imicola_2007)

#2008
#brevitasis_2008 <- sdm::ensemble(brevitasis_sdm,newdata=b2008_2,filename='brevitasis_2008.img',setting=list(method='weighted',stat='TSS'),overwrite=TRUE) 
dewulfi_2008 <- sdm::ensemble(dewulfi_sdm,newdata=bio_2008,filename='output_06_09_2022\\dewulfi_2008.img',setting=list(method='weighted',stat='TSS'),overwrite=TRUE) 
pulicaris_2008 <- sdm::ensemble(pulicaris_sdm,newdata=bio_2008,filename='output_06_09_2022\\pulicaris_2008.img',setting=list(method='weighted',stat='TSS'),overwrite=TRUE) 
obsoletus_2008 <- sdm::ensemble(obsoletus_COMPLEX_sdm,newdata=bio_2008,filename='output_06_09_2022\\obsoletus_2008.img',setting=list(method='weighted',stat='TSS'),overwrite=TRUE) 
imicola_2008 <- sdm::ensemble(imicola_sdm,newdata=bio_2008,filename='output_06_09_2022\\imicola_2008.img',setting=list(method='weighted',stat='TSS'),overwrite=TRUE) 
#
plot(brevitasis_2008)
plot(dewulfi_2008)
plot(pulicaris_2008)
plot(obsoletus_2008)
plot(imicola_2008)

#2009
#brevitasis_2009 <- sdm::ensemble(brevitasis_sdm,newdata=b2009_2,filename='output_12_08_2022\\brevitasis_2009.img',setting=list(method='weighted',stat='TSS'),overwrite=TRUE) 
dewulfi_2009 <- sdm::ensemble(dewulfi_sdm,newdata=bio_2009,filename='output_06_09_2022\\dewulfi_2009.img',setting=list(method='weighted',stat='TSS'),overwrite=TRUE) 
pulicaris_2009 <- sdm::ensemble(pulicaris_sdm,newdata=bio_2009,filename='output_06_09_2022\\pulicaris_2009.img',setting=list(method='weighted',stat='TSS'),overwrite=TRUE) 
obsoletus_2009 <- sdm::ensemble(obsoletus_COMPLEX_sdm,newdata=bio_2009,filename='output_06_09_2022\\obsoletus_2009.img',setting=list(method='weighted',stat='TSS'),overwrite=TRUE) 
imicola_2009 <- sdm::ensemble(imicola_sdm,newdata=bio_2009,filename='output_06_09_2022\\imicola_2009.img',setting=list(method='weighted',stat='TSS'),overwrite=TRUE) 
#
plot(brevitasis_2009)
plot(dewulfi_2009)
plot(pulicaris_2009)
plot(obsoletus_2009)
plot(imicola_2009)

#2010
#brevitasis_2010 <- sdm::ensemble(brevitasis_sdm,newdata=b2010_2,filename='output_12_08_2022\\brevitasis_2010.img',setting=list(method='weighted',stat='TSS'),overwrite=TRUE) 
dewulfi_2010 <- sdm::ensemble(dewulfi_sdm,newdata=bio_2010,filename='output_06_09_2022\\dewulfi_2010.img',setting=list(method='weighted',stat='TSS'),overwrite=TRUE) 
pulicaris_2010 <- sdm::ensemble(pulicaris_sdm,newdata=bio_2010,filename='output_06_09_2022\\pulicaris_2010.img',setting=list(method='weighted',stat='TSS'),overwrite=TRUE) 
obsoletus_2010 <- sdm::ensemble(obsoletus_COMPLEX_sdm,newdata=bio_2010,filename='output_06_09_2022\\obsoletus_2010.img',setting=list(method='weighted',stat='TSS'),overwrite=TRUE) 
imicola_2010 <- sdm::ensemble(imicola_sdm,newdata=bio_2010,filename='output_06_09_2022\\imicola_2010.img',setting=list(method='weighted',stat='TSS'),overwrite=TRUE) 
#
plot(brevitasis_2010)
plot(dewulfi_2010)
plot(pulicaris_2010)
plot(obsoletus_2010)
plot(imicola_2010)

#2015
#brevitasis_2015 <- sdm::ensemble(brevitasis_sdm,newdata=b2015_2,filename='output_12_08_2022\\brevitasis_2015.img',setting=list(method='weighted',stat='TSS'),overwrite=TRUE) 
dewulfi_2015 <- sdm::ensemble(dewulfi_sdm,newdata=bio_2015,filename='output_06_09_2022\\dewulfi_2015.img',setting=list(method='weighted',stat='TSS'),overwrite=TRUE) 
pulicaris_2015 <- sdm::ensemble(pulicaris_sdm,newdata=bio_2015,filename='output_06_09_2022\\pulicaris_2015.img',setting=list(method='weighted',stat='TSS'),overwrite=TRUE) 
obsoletus_2015 <- sdm::ensemble(obsoletus_COMPLEX_sdm,newdata=bio_2015,filename='output_06_09_2022\\obsoletus_2015.img',setting=list(method='weighted',stat='TSS'),overwrite=TRUE) 
imicola_2015 <- sdm::ensemble(imicola_sdm,newdata=bio_2015,filename='output_06_09_2022\\imicola_2015.img',setting=list(method='weighted',stat='TSS'),overwrite=TRUE) 
#
plot(brevitasis_2015)
plot(dewulfi_2015)
plot(pulicaris_2015)
plot(obsoletus_2015)
plot(imicola_2015)

#2016
#brevitasis_2016 <- sdm::ensemble(brevitasis_sdm,newdata=b2016_2,filename='output_12_08_2022\\brevitasis_2016.img',setting=list(method='weighted',stat='TSS'),overwrite=TRUE) 
dewulfi_2016 <- sdm::ensemble(dewulfi_sdm,newdata=bio_2016,filename='output_06_09_2022\\dewulfi_2016.img',setting=list(method='weighted',stat='TSS'),overwrite=TRUE) 
pulicaris_2016 <- sdm::ensemble(pulicaris_sdm,newdata=bio_2016,filename='output_06_09_2022\\pulicaris_2016.img',setting=list(method='weighted',stat='TSS'),overwrite=TRUE) 
obsoletus_2016 <- sdm::ensemble(obsoletus_COMPLEX_sdm,newdata=bio_2016,filename='output_06_09_2022\\obsoletus_2016.img',setting=list(method='weighted',stat='TSS'),overwrite=TRUE) 
imicola_2016 <- sdm::ensemble(imicola_sdm,newdata=bio_2016,filename='output_06_09_2022\\imicola_2016.img',setting=list(method='weighted',stat='TSS'),overwrite=TRUE) 
#
plot(brevitasis_2016)
plot(dewulfi_2016)
plot(pulicaris_2016)
plot(obsoletus_2016)
plot(imicola_2016)

#2021
#brevitasis_2021 <- sdm::ensemble(brevitasis_sdm,newdata=b2021_2,filename='output_12_08_2022\\brevitasis_2021.img',setting=list(method='weighted',stat='TSS'),overwrite=TRUE) 
dewulfi_2021 <- sdm::ensemble(dewulfi_sdm,newdata=bio_2021,filename='output_06_09_2022\\dewulfi_2021.img',setting=list(method='weighted',stat='TSS'),overwrite=TRUE) 
pulicaris_2021 <- sdm::ensemble(pulicaris_sdm,newdata=bio_2021,filename='output_06_09_2022\\pulicaris_2021.img',setting=list(method='weighted',stat='TSS'),overwrite=TRUE) 
obsoletus_2021 <- sdm::ensemble(obsoletus_COMPLEX_sdm,newdata=bio_2021,filename='output_06_09_2022\\obsoletus_2021.img',setting=list(method='weighted',stat='TSS'),overwrite=TRUE) 
imicola_2021 <- sdm::ensemble(imicola_sdm,newdata=bio_2021,filename='output_06_09_2022\\imicola_2021.img',setting=list(method='weighted',stat='TSS'),overwrite=TRUE) 

#
plot(brevitasis_2021)
plot(dewulfi_2021)
plot(pulicaris_2021)
plot(obsoletus_2021)
plot(imicola_2021)

#AQUI

#Plot imicola
#lbreaks <- seq(0, 0.310, 0.01)

require(lattice)

#
map_imicola_2004 <- levelplot(imicola_2004, par.settings=RdBuTheme, margin=FALSE, main = "C. imicola 2004", col.regions = terrain.colors(100, rev=T))
map_imicola_2007 <- levelplot(imicola_2007, par.settings=RdBuTheme, margin=FALSE, main = "C. imicola 2007", col.regions = terrain.colors(100, rev=T))
map_imicola_2008 <- levelplot(imicola_2008, par.settings=RdBuTheme, margin=FALSE, main = "C. imicola 2008", col.regions = terrain.colors(100, rev=T))
map_imicola_2009 <- levelplot(imicola_2009, par.settings=RdBuTheme, margin=FALSE, main = "C. imicola 2009", col.regions = terrain.colors(100, rev=T))
map_imicola_2010 <- levelplot(imicola_2010, par.settings=RdBuTheme, margin=FALSE, main = "C. imicola 2010", col.regions = terrain.colors(100, rev=T))
map_imicola_2015 <- levelplot(imicola_2015, par.settings=RdBuTheme, margin=FALSE, main = "C. imicola 2015", col.regions = terrain.colors(100, rev=T))
map_imicola_2016 <- levelplot(imicola_2016, par.settings=RdBuTheme, margin=FALSE, main = "C. imicola 2016", col.regions = terrain.colors(100, rev=T))
map_imicola_2021 <- levelplot(imicola_2021, par.settings=RdBuTheme, margin=FALSE, main = "C. imicola 2021", col.regions = terrain.colors(100, rev=T))
#
grid.arrange(map_imicola_2004, map_imicola_2007, map_imicola_2008, map_imicola_2009, 
             map_imicola_2010,map_imicola_2015, map_imicola_2016, map_imicola_2021,
             nrow=2,ncol=4)

#Plot dewulfi
#lbreaks <- seq(0, 0.310, 0.01)
#
map_dewulfi_2004 <- levelplot(dewulfi_2004, par.settings=RdBuTheme, margin=FALSE, main = "C. dewulfi 2004", col.regions = terrain.colors(100, rev=T))
map_dewulfi_2007 <- levelplot(dewulfi_2007, par.settings=RdBuTheme, margin=FALSE, main = "C. dewulfi 2007", col.regions = terrain.colors(100, rev=T))
map_dewulfi_2008 <- levelplot(dewulfi_2008, par.settings=RdBuTheme, margin=FALSE, main = "C. dewulfi 2008", col.regions = terrain.colors(100, rev=T))
map_dewulfi_2009 <- levelplot(dewulfi_2009, par.settings=RdBuTheme, margin=FALSE, main = "C. dewulfi 2009", col.regions = terrain.colors(100, rev=T))
map_dewulfi_2010 <- levelplot(dewulfi_2010, par.settings=RdBuTheme, margin=FALSE, main = "C. dewulfi 2010", col.regions = terrain.colors(100, rev=T))
map_dewulfi_2015 <- levelplot(dewulfi_2015, par.settings=RdBuTheme, margin=FALSE, main = "C. dewulfi 2015", col.regions = terrain.colors(100, rev=T))
map_dewulfi_2016 <- levelplot(dewulfi_2016, par.settings=RdBuTheme, margin=FALSE, main = "C. dewulfi 2016", col.regions = terrain.colors(100, rev=T))
map_dewulfi_2021 <- levelplot(dewulfi_2021, par.settings=RdBuTheme, margin=FALSE, main = "C. dewulfi 2021", col.regions = terrain.colors(100, rev=T))
#
grid.arrange(map_dewulfi_2004, map_dewulfi_2007, map_dewulfi_2008, map_dewulfi_2009, 
             map_dewulfi_2010,map_dewulfi_2015, map_dewulfi_2016, map_dewulfi_2021,
             nrow=2,ncol=4)

#Plot pulicaris
#lbreaks <- seq(0, 0.310, 0.01)
#
map_pulicaris_2004 <- levelplot(pulicaris_2004, par.settings=RdBuTheme, margin=FALSE, main = "C. pulicaris 2004", col.regions = terrain.colors(100, rev=T))
map_pulicaris_2007 <- levelplot(pulicaris_2007, par.settings=RdBuTheme, margin=FALSE, main = "C. pulicaris 2007", col.regions = terrain.colors(100, rev=T))
map_pulicaris_2008 <- levelplot(pulicaris_2008, par.settings=RdBuTheme, margin=FALSE, main = "C. pulicaris 2008", col.regions = terrain.colors(100, rev=T))
map_pulicaris_2009 <- levelplot(pulicaris_2009, par.settings=RdBuTheme, margin=FALSE, main = "C. pulicaris 2009", col.regions = terrain.colors(100, rev=T))
map_pulicaris_2010 <- levelplot(pulicaris_2010, par.settings=RdBuTheme, margin=FALSE, main = "C. pulicaris 2010", col.regions = terrain.colors(100, rev=T))
map_pulicaris_2015 <- levelplot(pulicaris_2015, par.settings=RdBuTheme, margin=FALSE, main = "C. pulicaris 2015", col.regions = terrain.colors(100, rev=T))
map_pulicaris_2016 <- levelplot(pulicaris_2016, par.settings=RdBuTheme, margin=FALSE, main = "C. pulicaris 2016", col.regions = terrain.colors(100, rev=T))
map_pulicaris_2021 <- levelplot(pulicaris_2021, par.settings=RdBuTheme, margin=FALSE, main = "C. pulicaris 2021", col.regions = terrain.colors(100, rev=T))
#
grid.arrange(map_pulicaris_2004, map_pulicaris_2007, map_pulicaris_2008, map_pulicaris_2009, 
             map_pulicaris_2010,map_pulicaris_2015, map_pulicaris_2016, map_pulicaris_2021,
             nrow=2,ncol=4)

#Plot obsoletus
#lbreaks <- seq(0, 0.310, 0.01)
#
map_obsoletus_2004 <- levelplot(obsoletus_2004, par.settings=RdBuTheme, margin=FALSE, main = "C. obsoletus 2004", col.regions = terrain.colors(100, rev=T))
map_obsoletus_2007 <- levelplot(obsoletus_2007, par.settings=RdBuTheme, margin=FALSE, main = "C. obsoletus 2007", col.regions = terrain.colors(100, rev=T))
map_obsoletus_2008 <- levelplot(obsoletus_2008, par.settings=RdBuTheme, margin=FALSE, main = "C. obsoletus 2008", col.regions = terrain.colors(100, rev=T))
map_obsoletus_2009 <- levelplot(obsoletus_2009, par.settings=RdBuTheme, margin=FALSE, main = "C. obsoletus 2009", col.regions = terrain.colors(100, rev=T))
map_obsoletus_2010 <- levelplot(obsoletus_2010, par.settings=RdBuTheme, margin=FALSE, main = "C. obsoletus 2010", col.regions = terrain.colors(100, rev=T))
map_obsoletus_2015 <- levelplot(obsoletus_2015, par.settings=RdBuTheme, margin=FALSE, main = "C. obsoletus 2015", col.regions = terrain.colors(100, rev=T))
map_obsoletus_2016 <- levelplot(obsoletus_2016, par.settings=RdBuTheme, margin=FALSE, main = "C. obsoletus 2016", col.regions = terrain.colors(100, rev=T))
map_obsoletus_2021 <- levelplot(obsoletus_2021, par.settings=RdBuTheme, margin=FALSE, main = "C. obsoletus 2021", col.regions = terrain.colors(100, rev=T))
#
grid.arrange(map_obsoletus_2004, map_obsoletus_2007, map_obsoletus_2008, map_obsoletus_2009, 
             map_obsoletus_2010, map_obsoletus_2015, map_obsoletus_2016, map_obsoletus_2021,
             nrow=2,ncol=4)

