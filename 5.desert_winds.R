################################################################################
# WIND ANALYSIS (NOT USED IN FINAL VERSION)
################################################################################
#FMestre
#07-09-2022

#Are outbreaks related with the winds from the Sahara?

#Getting an information of AEROSOL OPTICAL THICKNESS for every month

#2004
jan_2004 <- raster::raster("AEROSOL_OPTICAL_THICKNESS\\2004\\MODAL2_M_AER_OD_2004-01-01_rgb_1440x720.TIFF")
fev_2004 <- raster::raster("AEROSOL_OPTICAL_THICKNESS\\2004\\MODAL2_M_AER_OD_2004-02-01_rgb_1440x720.TIFF")
mar_2004 <- raster::raster("AEROSOL_OPTICAL_THICKNESS\\2004\\MODAL2_M_AER_OD_2004-03-01_rgb_1440x720.TIFF")
abr_2004 <- raster::raster("AEROSOL_OPTICAL_THICKNESS\\2004\\MODAL2_M_AER_OD_2004-04-01_rgb_1440x720.TIFF")
mai_2004 <- raster::raster("AEROSOL_OPTICAL_THICKNESS\\2004\\MODAL2_M_AER_OD_2004-05-01_rgb_1440x720.TIFF")
jun_2004 <- raster::raster("AEROSOL_OPTICAL_THICKNESS\\2004\\MODAL2_M_AER_OD_2004-06-01_rgb_1440x720.TIFF")
jul_2004 <- raster::raster("AEROSOL_OPTICAL_THICKNESS\\2004\\MODAL2_M_AER_OD_2004-07-01_rgb_1440x720.TIFF")
ago_2004 <- raster::raster("AEROSOL_OPTICAL_THICKNESS\\2004\\MODAL2_M_AER_OD_2004-08-01_rgb_1440x720.TIFF")
set_2004 <- raster::raster("AEROSOL_OPTICAL_THICKNESS\\2004\\MODAL2_M_AER_OD_2004-09-01_rgb_1440x720.TIFF")
out_2004 <- raster::raster("AEROSOL_OPTICAL_THICKNESS\\2004\\MODAL2_M_AER_OD_2004-10-01_rgb_1440x720.TIFF")
nov_2004 <- raster::raster("AEROSOL_OPTICAL_THICKNESS\\2004\\MODAL2_M_AER_OD_2004-11-01_rgb_1440x720.TIFF")
dec_2004 <- raster::raster("AEROSOL_OPTICAL_THICKNESS\\2004\\MODAL2_M_AER_OD_2004-12-01_rgb_1440x720.TIFF")

#2007
jan_2007 <- raster::raster("AEROSOL_OPTICAL_THICKNESS\\2007\\MODAL2_M_AER_OD_2007-01-01_rgb_1440x720.TIFF")
fev_2007 <- raster::raster("AEROSOL_OPTICAL_THICKNESS\\2007\\MODAL2_M_AER_OD_2007-02-01_rgb_1440x720.TIFF")
mar_2007 <- raster::raster("AEROSOL_OPTICAL_THICKNESS\\2007\\MODAL2_M_AER_OD_2007-03-01_rgb_1440x720.TIFF")
abr_2007 <- raster::raster("AEROSOL_OPTICAL_THICKNESS\\2007\\MODAL2_M_AER_OD_2007-04-01_rgb_1440x720.TIFF")
mai_2007 <- raster::raster("AEROSOL_OPTICAL_THICKNESS\\2007\\MODAL2_M_AER_OD_2007-05-01_rgb_1440x720.TIFF")
jun_2007 <- raster::raster("AEROSOL_OPTICAL_THICKNESS\\2007\\MODAL2_M_AER_OD_2007-06-01_rgb_1440x720.TIFF")
jul_2007 <- raster::raster("AEROSOL_OPTICAL_THICKNESS\\2007\\MODAL2_M_AER_OD_2007-07-01_rgb_1440x720.TIFF")
ago_2007 <- raster::raster("AEROSOL_OPTICAL_THICKNESS\\2007\\MODAL2_M_AER_OD_2007-08-01_rgb_1440x720.TIFF")
set_2007 <- raster::raster("AEROSOL_OPTICAL_THICKNESS\\2007\\MODAL2_M_AER_OD_2007-09-01_rgb_1440x720.TIFF")
out_2007 <- raster::raster("AEROSOL_OPTICAL_THICKNESS\\2007\\MODAL2_M_AER_OD_2007-10-01_rgb_1440x720.TIFF")
nov_2007 <- raster::raster("AEROSOL_OPTICAL_THICKNESS\\2007\\MODAL2_M_AER_OD_2007-11-01_rgb_1440x720.TIFF")
dec_2007 <- raster::raster("AEROSOL_OPTICAL_THICKNESS\\2007\\MODAL2_M_AER_OD_2007-12-01_rgb_1440x720.TIFF")

#2008
jan_2008 <- raster::raster("AEROSOL_OPTICAL_THICKNESS\\2008\\MODAL2_M_AER_OD_2008-01-01_rgb_1440x720.TIFF")
fev_2008 <- raster::raster("AEROSOL_OPTICAL_THICKNESS\\2008\\MODAL2_M_AER_OD_2008-02-01_rgb_1440x720.TIFF")
mar_2008 <- raster::raster("AEROSOL_OPTICAL_THICKNESS\\2008\\MODAL2_M_AER_OD_2008-03-01_rgb_1440x720.TIFF")
abr_2008 <- raster::raster("AEROSOL_OPTICAL_THICKNESS\\2008\\MODAL2_M_AER_OD_2008-04-01_rgb_1440x720.TIFF")
mai_2008 <- raster::raster("AEROSOL_OPTICAL_THICKNESS\\2008\\MODAL2_M_AER_OD_2008-05-01_rgb_1440x720.TIFF")
jun_2008 <- raster::raster("AEROSOL_OPTICAL_THICKNESS\\2008\\MODAL2_M_AER_OD_2008-06-01_rgb_1440x720.TIFF")
jul_2008 <- raster::raster("AEROSOL_OPTICAL_THICKNESS\\2008\\MODAL2_M_AER_OD_2008-07-01_rgb_1440x720.TIFF")
ago_2008 <- raster::raster("AEROSOL_OPTICAL_THICKNESS\\2008\\MODAL2_M_AER_OD_2008-08-01_rgb_1440x720.TIFF")
set_2008 <- raster::raster("AEROSOL_OPTICAL_THICKNESS\\2008\\MODAL2_M_AER_OD_2008-09-01_rgb_1440x720.TIFF")
out_2008 <- raster::raster("AEROSOL_OPTICAL_THICKNESS\\2008\\MODAL2_M_AER_OD_2008-10-01_rgb_1440x720.TIFF")
nov_2008 <- raster::raster("AEROSOL_OPTICAL_THICKNESS\\2008\\MODAL2_M_AER_OD_2008-11-01_rgb_1440x720.TIFF")
dec_2008 <- raster::raster("AEROSOL_OPTICAL_THICKNESS\\2008\\MODAL2_M_AER_OD_2008-12-01_rgb_1440x720.TIFF")

#2009
jan_2009 <- raster::raster("AEROSOL_OPTICAL_THICKNESS\\2009\\MODAL2_M_AER_OD_2009-01-01_rgb_1440x720.TIFF")
fev_2009 <- raster::raster("AEROSOL_OPTICAL_THICKNESS\\2009\\MODAL2_M_AER_OD_2009-02-01_rgb_1440x720.TIFF")
mar_2009 <- raster::raster("AEROSOL_OPTICAL_THICKNESS\\2009\\MODAL2_M_AER_OD_2009-03-01_rgb_1440x720.TIFF")
abr_2009 <- raster::raster("AEROSOL_OPTICAL_THICKNESS\\2009\\MODAL2_M_AER_OD_2009-04-01_rgb_1440x720.TIFF")
mai_2009 <- raster::raster("AEROSOL_OPTICAL_THICKNESS\\2009\\MODAL2_M_AER_OD_2009-05-01_rgb_1440x720.TIFF")
jun_2009 <- raster::raster("AEROSOL_OPTICAL_THICKNESS\\2009\\MODAL2_M_AER_OD_2009-06-01_rgb_1440x720.TIFF")
jul_2009 <- raster::raster("AEROSOL_OPTICAL_THICKNESS\\2009\\MODAL2_M_AER_OD_2009-07-01_rgb_1440x720.TIFF")
ago_2009 <- raster::raster("AEROSOL_OPTICAL_THICKNESS\\2009\\MODAL2_M_AER_OD_2009-08-01_rgb_1440x720.TIFF")
set_2009 <- raster::raster("AEROSOL_OPTICAL_THICKNESS\\2009\\MODAL2_M_AER_OD_2009-09-01_rgb_1440x720.TIFF")
out_2009 <- raster::raster("AEROSOL_OPTICAL_THICKNESS\\2009\\MODAL2_M_AER_OD_2009-10-01_rgb_1440x720.TIFF")
nov_2009 <- raster::raster("AEROSOL_OPTICAL_THICKNESS\\2009\\MODAL2_M_AER_OD_2009-11-01_rgb_1440x720.TIFF")
dec_2009 <- raster::raster("AEROSOL_OPTICAL_THICKNESS\\2009\\MODAL2_M_AER_OD_2009-12-01_rgb_1440x720.TIFF")

#2010
jan_2010 <- raster::raster("AEROSOL_OPTICAL_THICKNESS\\2010\\MODAL2_M_AER_OD_2010-01-01_rgb_1440x720.TIFF")
fev_2010 <- raster::raster("AEROSOL_OPTICAL_THICKNESS\\2010\\MODAL2_M_AER_OD_2010-02-01_rgb_1440x720.TIFF")
mar_2010 <- raster::raster("AEROSOL_OPTICAL_THICKNESS\\2010\\MODAL2_M_AER_OD_2010-03-01_rgb_1440x720.TIFF")
abr_2010 <- raster::raster("AEROSOL_OPTICAL_THICKNESS\\2010\\MODAL2_M_AER_OD_2010-04-01_rgb_1440x720.TIFF")
mai_2010 <- raster::raster("AEROSOL_OPTICAL_THICKNESS\\2010\\MODAL2_M_AER_OD_2010-05-01_rgb_1440x720.TIFF")
jun_2010 <- raster::raster("AEROSOL_OPTICAL_THICKNESS\\2010\\MODAL2_M_AER_OD_2010-06-01_rgb_1440x720.TIFF")
jul_2010 <- raster::raster("AEROSOL_OPTICAL_THICKNESS\\2010\\MODAL2_M_AER_OD_2010-07-01_rgb_1440x720.TIFF")
ago_2010 <- raster::raster("AEROSOL_OPTICAL_THICKNESS\\2010\\MODAL2_M_AER_OD_2010-08-01_rgb_1440x720.TIFF")
set_2010 <- raster::raster("AEROSOL_OPTICAL_THICKNESS\\2010\\MODAL2_M_AER_OD_2010-09-01_rgb_1440x720.TIFF")
out_2010 <- raster::raster("AEROSOL_OPTICAL_THICKNESS\\2010\\MODAL2_M_AER_OD_2010-10-01_rgb_1440x720.TIFF")
nov_2010 <- raster::raster("AEROSOL_OPTICAL_THICKNESS\\2010\\MODAL2_M_AER_OD_2010-11-01_rgb_1440x720.TIFF")
dec_2010 <- raster::raster("AEROSOL_OPTICAL_THICKNESS\\2010\\MODAL2_M_AER_OD_2010-12-01_rgb_1440x720.TIFF")

#2015
jan_2015 <- raster::raster("AEROSOL_OPTICAL_THICKNESS\\2015\\MODAL2_M_AER_OD_2015-01-01_rgb_1440x720.TIFF")
fev_2015 <- raster::raster("AEROSOL_OPTICAL_THICKNESS\\2015\\MODAL2_M_AER_OD_2015-02-01_rgb_1440x720.TIFF")
mar_2015 <- raster::raster("AEROSOL_OPTICAL_THICKNESS\\2015\\MODAL2_M_AER_OD_2015-03-01_rgb_1440x720.TIFF")
abr_2015 <- raster::raster("AEROSOL_OPTICAL_THICKNESS\\2015\\MODAL2_M_AER_OD_2015-04-01_rgb_1440x720.TIFF")
mai_2015 <- raster::raster("AEROSOL_OPTICAL_THICKNESS\\2015\\MODAL2_M_AER_OD_2015-05-01_rgb_1440x720.TIFF")
jun_2015 <- raster::raster("AEROSOL_OPTICAL_THICKNESS\\2015\\MODAL2_M_AER_OD_2015-06-01_rgb_1440x720.TIFF")
jul_2015 <- raster::raster("AEROSOL_OPTICAL_THICKNESS\\2015\\MODAL2_M_AER_OD_2015-07-01_rgb_1440x720.TIFF")
ago_2015 <- raster::raster("AEROSOL_OPTICAL_THICKNESS\\2015\\MODAL2_M_AER_OD_2015-08-01_rgb_1440x720.TIFF")
set_2015 <- raster::raster("AEROSOL_OPTICAL_THICKNESS\\2015\\MODAL2_M_AER_OD_2015-09-01_rgb_1440x720.TIFF")
out_2015 <- raster::raster("AEROSOL_OPTICAL_THICKNESS\\2015\\MODAL2_M_AER_OD_2015-10-01_rgb_1440x720.TIFF")
nov_2015 <- raster::raster("AEROSOL_OPTICAL_THICKNESS\\2015\\MODAL2_M_AER_OD_2015-11-01_rgb_1440x720.TIFF")
dec_2015 <- raster::raster("AEROSOL_OPTICAL_THICKNESS\\2015\\MODAL2_M_AER_OD_2015-12-01_rgb_1440x720.TIFF")

#2016
jan_2016 <- raster::raster("AEROSOL_OPTICAL_THICKNESS\\2016\\MODAL2_M_AER_OD_2016-01-01_rgb_1440x720.TIFF")
fev_2016 <- raster::raster("AEROSOL_OPTICAL_THICKNESS\\2016\\MODAL2_M_AER_OD_2016-02-01_rgb_1440x720.TIFF")
mar_2016 <- raster::raster("AEROSOL_OPTICAL_THICKNESS\\2016\\MODAL2_M_AER_OD_2016-03-01_rgb_1440x720.TIFF")
abr_2016 <- raster::raster("AEROSOL_OPTICAL_THICKNESS\\2016\\MODAL2_M_AER_OD_2016-04-01_rgb_1440x720.TIFF")
mai_2016 <- raster::raster("AEROSOL_OPTICAL_THICKNESS\\2016\\MODAL2_M_AER_OD_2016-05-01_rgb_1440x720.TIFF")
jun_2016 <- raster::raster("AEROSOL_OPTICAL_THICKNESS\\2016\\MODAL2_M_AER_OD_2016-06-01_rgb_1440x720.TIFF")
jul_2016 <- raster::raster("AEROSOL_OPTICAL_THICKNESS\\2016\\MODAL2_M_AER_OD_2016-07-01_rgb_1440x720.TIFF")
ago_2016 <- raster::raster("AEROSOL_OPTICAL_THICKNESS\\2016\\MODAL2_M_AER_OD_2016-08-01_rgb_1440x720.TIFF")
set_2016 <- raster::raster("AEROSOL_OPTICAL_THICKNESS\\2016\\MODAL2_M_AER_OD_2016-09-01_rgb_1440x720.TIFF")
out_2016 <- raster::raster("AEROSOL_OPTICAL_THICKNESS\\2016\\MODAL2_M_AER_OD_2016-10-01_rgb_1440x720.TIFF")
nov_2016 <- raster::raster("AEROSOL_OPTICAL_THICKNESS\\2016\\MODAL2_M_AER_OD_2016-11-01_rgb_1440x720.TIFF")
dec_2016 <- raster::raster("AEROSOL_OPTICAL_THICKNESS\\2016\\MODAL2_M_AER_OD_2016-12-01_rgb_1440x720.TIFF")

#2021
jan_2021 <- raster::raster("AEROSOL_OPTICAL_THICKNESS\\2021\\MODAL2_M_AER_OD_2021-01-01_rgb_1440x720.TIFF")
fev_2021 <- raster::raster("AEROSOL_OPTICAL_THICKNESS\\2021\\MODAL2_M_AER_OD_2021-02-01_rgb_1440x720.TIFF")
mar_2021 <- raster::raster("AEROSOL_OPTICAL_THICKNESS\\2021\\MODAL2_M_AER_OD_2021-03-01_rgb_1440x720.TIFF")
abr_2021 <- raster::raster("AEROSOL_OPTICAL_THICKNESS\\2021\\MODAL2_M_AER_OD_2021-04-01_rgb_1440x720.TIFF")
mai_2021 <- raster::raster("AEROSOL_OPTICAL_THICKNESS\\2021\\MODAL2_M_AER_OD_2021-05-01_rgb_1440x720.TIFF")
jun_2021 <- raster::raster("AEROSOL_OPTICAL_THICKNESS\\2021\\MODAL2_M_AER_OD_2021-06-01_rgb_1440x720.TIFF")
jul_2021 <- raster::raster("AEROSOL_OPTICAL_THICKNESS\\2021\\MODAL2_M_AER_OD_2021-07-01_rgb_1440x720.TIFF")
ago_2021 <- raster::raster("AEROSOL_OPTICAL_THICKNESS\\2021\\MODAL2_M_AER_OD_2021-08-01_rgb_1440x720.TIFF")
set_2021 <- raster::raster("AEROSOL_OPTICAL_THICKNESS\\2021\\MODAL2_M_AER_OD_2021-09-01_rgb_1440x720.TIFF")
out_2021 <- raster::raster("AEROSOL_OPTICAL_THICKNESS\\2021\\MODAL2_M_AER_OD_2021-10-01_rgb_1440x720.TIFF")
nov_2021 <- raster::raster("AEROSOL_OPTICAL_THICKNESS\\2021\\MODAL2_M_AER_OD_2021-11-01_rgb_1440x720.TIFF")
dec_2021 <- raster::raster("AEROSOL_OPTICAL_THICKNESS\\2021\\MODAL2_M_AER_OD_2021-12-01_rgb_1440x720.TIFF")


#Extract info on aerosols for the Sahara Desert
sahara <- raster::shapefile("sahara\\sahara_desert.shp")
#plot(jan_2021)
#plot(sahara, add=T)

#2004
jan_DESERT_2004 <- extract(x=jan_2004, y=sahara)
jan_DESERT_2004 <- mean(jan_DESERT_2004[[1]], na.rm=T)
#
fev_DESERT_2004 <- extract(x=fev_2004, y=sahara)
fev_DESERT_2004 <- mean(fev_DESERT_2004[[1]], na.rm=T)
#
mar_DESERT_2004 <- extract(x=mar_2004, y=sahara)
mar_DESERT_2004 <- mean(mar_DESERT_2004[[1]], na.rm=T)
#
abr_DESERT_2004 <- extract(x=abr_2004, y=sahara)
abr_DESERT_2004 <- mean(abr_DESERT_2004[[1]], na.rm=T)
#
mai_DESERT_2004 <- extract(x=mai_2004, y=sahara)
mai_DESERT_2004 <- mean(mai_DESERT_2004[[1]], na.rm=T)
#
jun_DESERT_2004 <- extract(x=jun_2004, y=sahara)
jun_DESERT_2004 <- mean(jun_DESERT_2004[[1]], na.rm=T)
#
jul_DESERT_2004 <- extract(x=jul_2004, y=sahara)
jul_DESERT_2004 <- mean(jul_DESERT_2004[[1]], na.rm=T)
#
ago_DESERT_2004 <- extract(x=ago_2004, y=sahara)
ago_DESERT_2004 <- mean(ago_DESERT_2004[[1]], na.rm=T)
#
set_DESERT_2004 <- extract(x=set_2004, y=sahara)
set_DESERT_2004 <- mean(set_DESERT_2004[[1]], na.rm=T)
#
out_DESERT_2004 <- extract(x=out_2004, y=sahara)
out_DESERT_2004 <- mean(out_DESERT_2004[[1]], na.rm=T)
#
nov_DESERT_2004 <- extract(x=nov_2004, y=sahara)
nov_DESERT_2004 <- mean(nov_DESERT_2004[[1]], na.rm=T)
#
dec_DESERT_2004 <- extract(x=dec_2004, y=sahara)
dec_DESERT_2004 <- mean(dec_DESERT_2004[[1]], na.rm=T)

sand_2004_SAHARA <- c(jan_DESERT_2004, fev_DESERT_2004, mar_DESERT_2004, abr_DESERT_2004, mai_DESERT_2004, jun_DESERT_2004, 
               jul_DESERT_2004, ago_DESERT_2004, set_DESERT_2004, out_DESERT_2004, nov_DESERT_2004, dec_DESERT_2004)

#2007
jan_DESERT_2007 <- extract(x=jan_2007, y=sahara)
jan_DESERT_2007 <- mean(jan_DESERT_2007[[1]], na.rm=T)
#
fev_DESERT_2007 <- extract(x=fev_2007, y=sahara)
fev_DESERT_2007 <- mean(fev_DESERT_2007[[1]], na.rm=T)
#
mar_DESERT_2007 <- extract(x=mar_2007, y=sahara)
mar_DESERT_2007 <- mean(mar_DESERT_2007[[1]], na.rm=T)
#
abr_DESERT_2007 <- extract(x=abr_2007, y=sahara)
abr_DESERT_2007 <- mean(abr_DESERT_2007[[1]], na.rm=T)
#
mai_DESERT_2007 <- extract(x=mai_2007, y=sahara)
mai_DESERT_2007 <- mean(mai_DESERT_2007[[1]], na.rm=T)
#
jun_DESERT_2007 <- extract(x=jun_2007, y=sahara)
jun_DESERT_2007 <- mean(jun_DESERT_2007[[1]], na.rm=T)
#
jul_DESERT_2007 <- extract(x=jul_2007, y=sahara)
jul_DESERT_2007 <- mean(jul_DESERT_2007[[1]], na.rm=T)
#
ago_DESERT_2007 <- extract(x=ago_2007, y=sahara)
ago_DESERT_2007 <- mean(ago_DESERT_2007[[1]], na.rm=T)
#
set_DESERT_2007 <- extract(x=set_2007, y=sahara)
set_DESERT_2007 <- mean(set_DESERT_2007[[1]], na.rm=T)
#
out_DESERT_2007 <- extract(x=out_2007, y=sahara)
out_DESERT_2007 <- mean(out_DESERT_2007[[1]], na.rm=T)
#
nov_DESERT_2007 <- extract(x=nov_2007, y=sahara)
nov_DESERT_2007 <- mean(nov_DESERT_2007[[1]], na.rm=T)
#
dec_DESERT_2007 <- extract(x=dec_2007, y=sahara)
dec_DESERT_2007 <- mean(dec_DESERT_2007[[1]], na.rm=T)

sand_2007_SAHARA <- c(jan_DESERT_2007, fev_DESERT_2007, mar_DESERT_2007, abr_DESERT_2007, mai_DESERT_2007, jun_DESERT_2007, 
               jul_DESERT_2007, ago_DESERT_2007, set_DESERT_2007, out_DESERT_2007, nov_DESERT_2007, dec_DESERT_2007)


#2008
jan_DESERT_2008 <- extract(x=jan_2008, y=sahara)
jan_DESERT_2008 <- mean(jan_DESERT_2008[[1]], na.rm=T)
#
fev_DESERT_2008 <- extract(x=fev_2008, y=sahara)
fev_DESERT_2008 <- mean(fev_DESERT_2008[[1]], na.rm=T)
#
mar_DESERT_2008 <- extract(x=mar_2008, y=sahara)
mar_DESERT_2008 <- mean(mar_DESERT_2008[[1]], na.rm=T)
#
abr_DESERT_2008 <- extract(x=abr_2008, y=sahara)
abr_DESERT_2008 <- mean(abr_DESERT_2008[[1]], na.rm=T)
#
mai_DESERT_2008 <- extract(x=mai_2008, y=sahara)
mai_DESERT_2008 <- mean(mai_DESERT_2008[[1]], na.rm=T)
#
jun_DESERT_2008 <- extract(x=jun_2008, y=sahara)
jun_DESERT_2008 <- mean(jun_DESERT_2008[[1]], na.rm=T)
#
jul_DESERT_2008 <- extract(x=jul_2008, y=sahara)
jul_DESERT_2008 <- mean(jul_DESERT_2008[[1]], na.rm=T)
#
ago_DESERT_2008 <- extract(x=ago_2008, y=sahara)
ago_DESERT_2008 <- mean(ago_DESERT_2008[[1]], na.rm=T)
#
set_DESERT_2008 <- extract(x=set_2008, y=sahara)
set_DESERT_2008 <- mean(set_DESERT_2008[[1]], na.rm=T)
#
out_DESERT_2008 <- extract(x=out_2008, y=sahara)
out_DESERT_2008 <- mean(out_DESERT_2008[[1]], na.rm=T)
#
nov_DESERT_2008 <- extract(x=nov_2008, y=sahara)
nov_DESERT_2008 <- mean(nov_DESERT_2008[[1]], na.rm=T)
#
dec_DESERT_2008 <- extract(x=dec_2008, y=sahara)
dec_DESERT_2008 <- mean(dec_DESERT_2008[[1]], na.rm=T)

sand_2008_SAHARA <- c(jan_DESERT_2008, fev_DESERT_2008, mar_DESERT_2008, abr_DESERT_2008, mai_DESERT_2008, jun_DESERT_2008, 
               jul_DESERT_2008, ago_DESERT_2008, set_DESERT_2008, out_DESERT_2008, nov_DESERT_2008, dec_DESERT_2008)


#2009
jan_DESERT_2009 <- extract(x=jan_2009, y=sahara)
jan_DESERT_2009 <- mean(jan_DESERT_2009[[1]], na.rm=T)
#
fev_DESERT_2009 <- extract(x=fev_2009, y=sahara)
fev_DESERT_2009 <- mean(fev_DESERT_2009[[1]], na.rm=T)
#
mar_DESERT_2009 <- extract(x=mar_2009, y=sahara)
mar_DESERT_2009 <- mean(mar_DESERT_2009[[1]], na.rm=T)
#
abr_DESERT_2009 <- extract(x=abr_2009, y=sahara)
abr_DESERT_2009 <- mean(abr_DESERT_2009[[1]], na.rm=T)
#
mai_DESERT_2009 <- extract(x=mai_2009, y=sahara)
mai_DESERT_2009 <- mean(mai_DESERT_2009[[1]], na.rm=T)
#
jun_DESERT_2009 <- extract(x=jun_2009, y=sahara)
jun_DESERT_2009 <- mean(jun_DESERT_2009[[1]], na.rm=T)
#
jul_DESERT_2009 <- extract(x=jul_2009, y=sahara)
jul_DESERT_2009 <- mean(jul_DESERT_2009[[1]], na.rm=T)
#
ago_DESERT_2009 <- extract(x=ago_2009, y=sahara)
ago_DESERT_2009 <- mean(ago_DESERT_2009[[1]], na.rm=T)
#
set_DESERT_2009 <- extract(x=set_2009, y=sahara)
set_DESERT_2009 <- mean(set_DESERT_2009[[1]], na.rm=T)
#
out_DESERT_2009 <- extract(x=out_2009, y=sahara)
out_DESERT_2009 <- mean(out_DESERT_2009[[1]], na.rm=T)
#
nov_DESERT_2009 <- extract(x=nov_2009, y=sahara)
nov_DESERT_2009 <- mean(nov_DESERT_2009[[1]], na.rm=T)
#
dec_DESERT_2009 <- extract(x=dec_2009, y=sahara)
dec_DESERT_2009 <- mean(dec_DESERT_2009[[1]], na.rm=T)

sand_2009_SAHARA <- c(jan_DESERT_2009, fev_DESERT_2009, mar_DESERT_2009, abr_DESERT_2009, mai_DESERT_2009, jun_DESERT_2009, 
               jul_DESERT_2009, ago_DESERT_2009, set_DESERT_2009, out_DESERT_2009, nov_DESERT_2009, dec_DESERT_2009)


#2010
jan_DESERT_2010 <- extract(x=jan_2010, y=sahara)
jan_DESERT_2010 <- mean(jan_DESERT_2010[[1]], na.rm=T)
#
fev_DESERT_2010 <- extract(x=fev_2010, y=sahara)
fev_DESERT_2010 <- mean(fev_DESERT_2010[[1]], na.rm=T)
#
mar_DESERT_2010 <- extract(x=mar_2010, y=sahara)
mar_DESERT_2010 <- mean(mar_DESERT_2010[[1]], na.rm=T)
#
abr_DESERT_2010 <- extract(x=abr_2010, y=sahara)
abr_DESERT_2010 <- mean(abr_DESERT_2010[[1]], na.rm=T)
#
mai_DESERT_2010 <- extract(x=mai_2010, y=sahara)
mai_DESERT_2010 <- mean(mai_DESERT_2010[[1]], na.rm=T)
#
jun_DESERT_2010 <- extract(x=jun_2010, y=sahara)
jun_DESERT_2010 <- mean(jun_DESERT_2010[[1]], na.rm=T)
#
jul_DESERT_2010 <- extract(x=jul_2010, y=sahara)
jul_DESERT_2010 <- mean(jul_DESERT_2010[[1]], na.rm=T)
#
ago_DESERT_2010 <- extract(x=ago_2010, y=sahara)
ago_DESERT_2010 <- mean(ago_DESERT_2010[[1]], na.rm=T)
#
set_DESERT_2010 <- extract(x=set_2010, y=sahara)
set_DESERT_2010 <- mean(set_DESERT_2010[[1]], na.rm=T)
#
out_DESERT_2010 <- extract(x=out_2010, y=sahara)
out_DESERT_2010 <- mean(out_DESERT_2010[[1]], na.rm=T)
#
nov_DESERT_2010 <- extract(x=nov_2010, y=sahara)
nov_DESERT_2010 <- mean(nov_DESERT_2010[[1]], na.rm=T)
#
dec_DESERT_2010 <- extract(x=dec_2010, y=sahara)
dec_DESERT_2010 <- mean(dec_DESERT_2010[[1]], na.rm=T)

sand_2010_SAHARA <- c(jan_DESERT_2010, fev_DESERT_2010, mar_DESERT_2010, abr_DESERT_2010, mai_DESERT_2010, jun_DESERT_2010, 
               jul_DESERT_2010, ago_DESERT_2010, set_DESERT_2010, out_DESERT_2010, nov_DESERT_2010, dec_DESERT_2010)

#2015
jan_DESERT_2015 <- extract(x=jan_2015, y=sahara)
jan_DESERT_2015 <- mean(jan_DESERT_2015[[1]], na.rm=T)
#
fev_DESERT_2015 <- extract(x=fev_2015, y=sahara)
fev_DESERT_2015 <- mean(fev_DESERT_2015[[1]], na.rm=T)
#
mar_DESERT_2015 <- extract(x=mar_2015, y=sahara)
mar_DESERT_2015 <- mean(mar_DESERT_2015[[1]], na.rm=T)
#
abr_DESERT_2015 <- extract(x=abr_2015, y=sahara)
abr_DESERT_2015 <- mean(abr_DESERT_2015[[1]], na.rm=T)
#
mai_DESERT_2015 <- extract(x=mai_2015, y=sahara)
mai_DESERT_2015 <- mean(mai_DESERT_2015[[1]], na.rm=T)
#
jun_DESERT_2015 <- extract(x=jun_2015, y=sahara)
jun_DESERT_2015 <- mean(jun_DESERT_2015[[1]], na.rm=T)
#
jul_DESERT_2015 <- extract(x=jul_2015, y=sahara)
jul_DESERT_2015 <- mean(jul_DESERT_2015[[1]], na.rm=T)
#
ago_DESERT_2015 <- extract(x=ago_2015, y=sahara)
ago_DESERT_2015 <- mean(ago_DESERT_2015[[1]], na.rm=T)
#
set_DESERT_2015 <- extract(x=set_2015, y=sahara)
set_DESERT_2015 <- mean(set_DESERT_2015[[1]], na.rm=T)
#
out_DESERT_2015 <- extract(x=out_2015, y=sahara)
out_DESERT_2015 <- mean(out_DESERT_2015[[1]], na.rm=T)
#
nov_DESERT_2015 <- extract(x=nov_2015, y=sahara)
nov_DESERT_2015 <- mean(nov_DESERT_2015[[1]], na.rm=T)
#
dec_DESERT_2015 <- extract(x=dec_2015, y=sahara)
dec_DESERT_2015 <- mean(dec_DESERT_2015[[1]], na.rm=T)

sand_2015_SAHARA <- c(jan_DESERT_2015, fev_DESERT_2015, mar_DESERT_2015, abr_DESERT_2015, mai_DESERT_2015, jun_DESERT_2015, 
               jul_DESERT_2015, ago_DESERT_2015, set_DESERT_2015, out_DESERT_2015, nov_DESERT_2015, dec_DESERT_2015)


#2016
jan_DESERT_2016 <- extract(x=jan_2016, y=sahara)
jan_DESERT_2016 <- mean(jan_DESERT_2016[[1]], na.rm=T)
#
fev_DESERT_2016 <- extract(x=fev_2016, y=sahara)
fev_DESERT_2016 <- mean(fev_DESERT_2016[[1]], na.rm=T)
#
mar_DESERT_2016 <- extract(x=mar_2016, y=sahara)
mar_DESERT_2016 <- mean(mar_DESERT_2016[[1]], na.rm=T)
#
abr_DESERT_2016 <- extract(x=abr_2016, y=sahara)
abr_DESERT_2016 <- mean(abr_DESERT_2016[[1]], na.rm=T)
#
mai_DESERT_2016 <- extract(x=mai_2016, y=sahara)
mai_DESERT_2016 <- mean(mai_DESERT_2016[[1]], na.rm=T)
#
jun_DESERT_2016 <- extract(x=jun_2016, y=sahara)
jun_DESERT_2016 <- mean(jun_DESERT_2016[[1]], na.rm=T)
#
jul_DESERT_2016 <- extract(x=jul_2016, y=sahara)
jul_DESERT_2016 <- mean(jul_DESERT_2016[[1]], na.rm=T)
#
ago_DESERT_2016 <- extract(x=ago_2016, y=sahara)
ago_DESERT_2016 <- mean(ago_DESERT_2016[[1]], na.rm=T)
#
set_DESERT_2016 <- extract(x=set_2016, y=sahara)
set_DESERT_2016 <- mean(set_DESERT_2016[[1]], na.rm=T)
#
out_DESERT_2016 <- extract(x=out_2016, y=sahara)
out_DESERT_2016 <- mean(out_DESERT_2016[[1]], na.rm=T)
#
nov_DESERT_2016 <- extract(x=nov_2016, y=sahara)
nov_DESERT_2016 <- mean(nov_DESERT_2016[[1]], na.rm=T)
#
dec_DESERT_2016 <- extract(x=dec_2016, y=sahara)
dec_DESERT_2016 <- mean(dec_DESERT_2016[[1]], na.rm=T)

sand_2016_SAHARA <- c(jan_DESERT_2016, fev_DESERT_2016, mar_DESERT_2016, abr_DESERT_2016, mai_DESERT_2016, jun_DESERT_2016, 
               jul_DESERT_2016, ago_DESERT_2016, set_DESERT_2016, out_DESERT_2016, nov_DESERT_2016, dec_DESERT_2016)


#2021
jan_DESERT_2021 <- extract(x=jan_2021, y=sahara)
jan_DESERT_2021 <- mean(jan_DESERT_2021[[1]], na.rm=T)
#
fev_DESERT_2021 <- extract(x=fev_2021, y=sahara)
fev_DESERT_2021 <- mean(fev_DESERT_2021[[1]], na.rm=T)
#
mar_DESERT_2021 <- extract(x=mar_2021, y=sahara)
mar_DESERT_2021 <- mean(mar_DESERT_2021[[1]], na.rm=T)
#
abr_DESERT_2021 <- extract(x=abr_2021, y=sahara)
abr_DESERT_2021 <- mean(abr_DESERT_2021[[1]], na.rm=T)
#
mai_DESERT_2021 <- extract(x=mai_2021, y=sahara)
mai_DESERT_2021 <- mean(mai_DESERT_2021[[1]], na.rm=T)
#
jun_DESERT_2021 <- extract(x=jun_2021, y=sahara)
jun_DESERT_2021 <- mean(jun_DESERT_2021[[1]], na.rm=T)
#
jul_DESERT_2021 <- extract(x=jul_2021, y=sahara)
jul_DESERT_2021 <- mean(jul_DESERT_2021[[1]], na.rm=T)
#
ago_DESERT_2021 <- extract(x=ago_2021, y=sahara)
ago_DESERT_2021 <- mean(ago_DESERT_2021[[1]], na.rm=T)
#
set_DESERT_2021 <- extract(x=set_2021, y=sahara)
set_DESERT_2021 <- mean(set_DESERT_2021[[1]], na.rm=T)
#
out_DESERT_2021 <- extract(x=out_2021, y=sahara)
out_DESERT_2021 <- mean(out_DESERT_2021[[1]], na.rm=T)
#
nov_DESERT_2021 <- extract(x=nov_2021, y=sahara)
nov_DESERT_2021 <- mean(nov_DESERT_2021[[1]], na.rm=T)
#
dec_DESERT_2021 <- extract(x=dec_2021, y=sahara)
dec_DESERT_2021 <- mean(dec_DESERT_2021[[1]], na.rm=T)

sand_2021_SAHARA <- c(jan_DESERT_2021, fev_DESERT_2021, mar_DESERT_2021, abr_DESERT_2021, mai_DESERT_2021, jun_DESERT_2021, 
               jul_DESERT_2021, ago_DESERT_2021, set_DESERT_2021, out_DESERT_2021, nov_DESERT_2021, dec_DESERT_2021)

#########################################################################################################################################

#########################################################################################################################################

#Extract info on aerosols for the Alentejo
#study_site_alentejo

#2004
jan_ALENTEJO_2004 <- extract(x=jan_2004, y=study_site_alentejo)
jan_ALENTEJO_2004 <- mean(jan_ALENTEJO_2004[[1]], na.rm=T)
#
fev_ALENTEJO_2004 <- extract(x=fev_2004, y=study_site_alentejo)
fev_ALENTEJO_2004 <- mean(fev_ALENTEJO_2004[[1]], na.rm=T)
#
mar_ALENTEJO_2004 <- extract(x=mar_2004, y=study_site_alentejo)
mar_ALENTEJO_2004 <- mean(mar_ALENTEJO_2004[[1]], na.rm=T)
#
abr_ALENTEJO_2004 <- extract(x=abr_2004, y=study_site_alentejo)
abr_ALENTEJO_2004 <- mean(abr_ALENTEJO_2004[[1]], na.rm=T)
#
mai_ALENTEJO_2004 <- extract(x=mai_2004, y=study_site_alentejo)
mai_ALENTEJO_2004 <- mean(mai_ALENTEJO_2004[[1]], na.rm=T)
#
jun_ALENTEJO_2004 <- extract(x=jun_2004, y=study_site_alentejo)
jun_ALENTEJO_2004 <- mean(jun_ALENTEJO_2004[[1]], na.rm=T)
#
jul_ALENTEJO_2004 <- extract(x=jul_2004, y=study_site_alentejo)
jul_ALENTEJO_2004 <- mean(jul_ALENTEJO_2004[[1]], na.rm=T)
#
ago_ALENTEJO_2004 <- extract(x=ago_2004, y=study_site_alentejo)
ago_ALENTEJO_2004 <- mean(ago_ALENTEJO_2004[[1]], na.rm=T)
#
set_ALENTEJO_2004 <- extract(x=set_2004, y=study_site_alentejo)
set_ALENTEJO_2004 <- mean(set_ALENTEJO_2004[[1]], na.rm=T)
#
out_ALENTEJO_2004 <- extract(x=out_2004, y=study_site_alentejo)
out_ALENTEJO_2004 <- mean(out_ALENTEJO_2004[[1]], na.rm=T)
#
nov_ALENTEJO_2004 <- extract(x=nov_2004, y=study_site_alentejo)
nov_ALENTEJO_2004 <- mean(nov_ALENTEJO_2004[[1]], na.rm=T)
#
dec_ALENTEJO_2004 <- extract(x=dec_2004, y=study_site_alentejo)
dec_ALENTEJO_2004 <- mean(dec_ALENTEJO_2004[[1]], na.rm=T)

sand_2004_ALENTEJO <- c(jan_ALENTEJO_2004, fev_ALENTEJO_2004, mar_ALENTEJO_2004, abr_ALENTEJO_2004, mai_ALENTEJO_2004, jun_ALENTEJO_2004, 
               jul_ALENTEJO_2004, ago_ALENTEJO_2004, set_ALENTEJO_2004, out_ALENTEJO_2004, nov_ALENTEJO_2004, dec_ALENTEJO_2004)

#2007
jan_ALENTEJO_2007 <- extract(x=jan_2007, y=study_site_alentejo)
jan_ALENTEJO_2007 <- mean(jan_ALENTEJO_2007[[1]], na.rm=T)
#
fev_ALENTEJO_2007 <- extract(x=fev_2007, y=study_site_alentejo)
fev_ALENTEJO_2007 <- mean(fev_ALENTEJO_2007[[1]], na.rm=T)
#
mar_ALENTEJO_2007 <- extract(x=mar_2007, y=study_site_alentejo)
mar_ALENTEJO_2007 <- mean(mar_ALENTEJO_2007[[1]], na.rm=T)
#
abr_ALENTEJO_2007 <- extract(x=abr_2007, y=study_site_alentejo)
abr_ALENTEJO_2007 <- mean(abr_ALENTEJO_2007[[1]], na.rm=T)
#
mai_ALENTEJO_2007 <- extract(x=mai_2007, y=study_site_alentejo)
mai_ALENTEJO_2007 <- mean(mai_ALENTEJO_2007[[1]], na.rm=T)
#
jun_ALENTEJO_2007 <- extract(x=jun_2007, y=study_site_alentejo)
jun_ALENTEJO_2007 <- mean(jun_ALENTEJO_2007[[1]], na.rm=T)
#
jul_ALENTEJO_2007 <- extract(x=jul_2007, y=study_site_alentejo)
jul_ALENTEJO_2007 <- mean(jul_ALENTEJO_2007[[1]], na.rm=T)
#
ago_ALENTEJO_2007 <- extract(x=ago_2007, y=study_site_alentejo)
ago_ALENTEJO_2007 <- mean(ago_ALENTEJO_2007[[1]], na.rm=T)
#
set_ALENTEJO_2007 <- extract(x=set_2007, y=study_site_alentejo)
set_ALENTEJO_2007 <- mean(set_ALENTEJO_2007[[1]], na.rm=T)
#
out_ALENTEJO_2007 <- extract(x=out_2007, y=study_site_alentejo)
out_ALENTEJO_2007 <- mean(out_ALENTEJO_2007[[1]], na.rm=T)
#
nov_ALENTEJO_2007 <- extract(x=nov_2007, y=study_site_alentejo)
nov_ALENTEJO_2007 <- mean(nov_ALENTEJO_2007[[1]], na.rm=T)
#
dec_ALENTEJO_2007 <- extract(x=dec_2007, y=study_site_alentejo)
dec_ALENTEJO_2007 <- mean(dec_ALENTEJO_2007[[1]], na.rm=T)

sand_2007_ALENTEJO <- c(jan_ALENTEJO_2007, fev_ALENTEJO_2007, mar_ALENTEJO_2007, abr_ALENTEJO_2007, mai_ALENTEJO_2007, jun_ALENTEJO_2007, 
               jul_ALENTEJO_2007, ago_ALENTEJO_2007, set_ALENTEJO_2007, out_ALENTEJO_2007, nov_ALENTEJO_2007, dec_ALENTEJO_2007)


#2008
jan_ALENTEJO_2008 <- extract(x=jan_2008, y=study_site_alentejo)
jan_ALENTEJO_2008 <- mean(jan_ALENTEJO_2008[[1]], na.rm=T)
#
fev_ALENTEJO_2008 <- extract(x=fev_2008, y=study_site_alentejo)
fev_ALENTEJO_2008 <- mean(fev_ALENTEJO_2008[[1]], na.rm=T)
#
mar_ALENTEJO_2008 <- extract(x=mar_2008, y=study_site_alentejo)
mar_ALENTEJO_2008 <- mean(mar_ALENTEJO_2008[[1]], na.rm=T)
#
abr_ALENTEJO_2008 <- extract(x=abr_2008, y=study_site_alentejo)
abr_ALENTEJO_2008 <- mean(abr_ALENTEJO_2008[[1]], na.rm=T)
#
mai_ALENTEJO_2008 <- extract(x=mai_2008, y=study_site_alentejo)
mai_ALENTEJO_2008 <- mean(mai_ALENTEJO_2008[[1]], na.rm=T)
#
jun_ALENTEJO_2008 <- extract(x=jun_2008, y=study_site_alentejo)
jun_ALENTEJO_2008 <- mean(jun_ALENTEJO_2008[[1]], na.rm=T)
#
jul_ALENTEJO_2008 <- extract(x=jul_2008, y=study_site_alentejo)
jul_ALENTEJO_2008 <- mean(jul_ALENTEJO_2008[[1]], na.rm=T)
#
ago_ALENTEJO_2008 <- extract(x=ago_2008, y=study_site_alentejo)
ago_ALENTEJO_2008 <- mean(ago_ALENTEJO_2008[[1]], na.rm=T)
#
set_ALENTEJO_2008 <- extract(x=set_2008, y=study_site_alentejo)
set_ALENTEJO_2008 <- mean(set_ALENTEJO_2008[[1]], na.rm=T)
#
out_ALENTEJO_2008 <- extract(x=out_2008, y=study_site_alentejo)
out_ALENTEJO_2008 <- mean(out_ALENTEJO_2008[[1]], na.rm=T)
#
nov_ALENTEJO_2008 <- extract(x=nov_2008, y=study_site_alentejo)
nov_ALENTEJO_2008 <- mean(nov_ALENTEJO_2008[[1]], na.rm=T)
#
dec_ALENTEJO_2008 <- extract(x=dec_2008, y=study_site_alentejo)
dec_ALENTEJO_2008 <- mean(dec_ALENTEJO_2008[[1]], na.rm=T)

sand_2008_ALENTEJO <- c(jan_ALENTEJO_2008, fev_ALENTEJO_2008, mar_ALENTEJO_2008, abr_ALENTEJO_2008, mai_ALENTEJO_2008, jun_ALENTEJO_2008, 
               jul_ALENTEJO_2008, ago_ALENTEJO_2008, set_ALENTEJO_2008, out_ALENTEJO_2008, nov_ALENTEJO_2008, dec_ALENTEJO_2008)


#2009
jan_ALENTEJO_2009 <- extract(x=jan_2009, y=study_site_alentejo)
jan_ALENTEJO_2009 <- mean(jan_ALENTEJO_2009[[1]], na.rm=T)
#
fev_ALENTEJO_2009 <- extract(x=fev_2009, y=study_site_alentejo)
fev_ALENTEJO_2009 <- mean(fev_ALENTEJO_2009[[1]], na.rm=T)
#
mar_ALENTEJO_2009 <- extract(x=mar_2009, y=study_site_alentejo)
mar_ALENTEJO_2009 <- mean(mar_ALENTEJO_2009[[1]], na.rm=T)
#
abr_ALENTEJO_2009 <- extract(x=abr_2009, y=study_site_alentejo)
abr_ALENTEJO_2009 <- mean(abr_ALENTEJO_2009[[1]], na.rm=T)
#
mai_ALENTEJO_2009 <- extract(x=mai_2009, y=study_site_alentejo)
mai_ALENTEJO_2009 <- mean(mai_ALENTEJO_2009[[1]], na.rm=T)
#
jun_ALENTEJO_2009 <- extract(x=jun_2009, y=study_site_alentejo)
jun_ALENTEJO_2009 <- mean(jun_ALENTEJO_2009[[1]], na.rm=T)
#
jul_ALENTEJO_2009 <- extract(x=jul_2009, y=study_site_alentejo)
jul_ALENTEJO_2009 <- mean(jul_ALENTEJO_2009[[1]], na.rm=T)
#
ago_ALENTEJO_2009 <- extract(x=ago_2009, y=study_site_alentejo)
ago_ALENTEJO_2009 <- mean(ago_ALENTEJO_2009[[1]], na.rm=T)
#
set_ALENTEJO_2009 <- extract(x=set_2009, y=study_site_alentejo)
set_ALENTEJO_2009 <- mean(set_ALENTEJO_2009[[1]], na.rm=T)
#
out_ALENTEJO_2009 <- extract(x=out_2009, y=study_site_alentejo)
out_ALENTEJO_2009 <- mean(out_ALENTEJO_2009[[1]], na.rm=T)
#
nov_ALENTEJO_2009 <- extract(x=nov_2009, y=study_site_alentejo)
nov_ALENTEJO_2009 <- mean(nov_ALENTEJO_2009[[1]], na.rm=T)
#
dec_ALENTEJO_2009 <- extract(x=dec_2009, y=study_site_alentejo)
dec_ALENTEJO_2009 <- mean(dec_ALENTEJO_2009[[1]], na.rm=T)

sand_2009_ALENTEJO <- c(jan_ALENTEJO_2009, fev_ALENTEJO_2009, mar_ALENTEJO_2009, abr_ALENTEJO_2009, mai_ALENTEJO_2009, jun_ALENTEJO_2009, 
               jul_ALENTEJO_2009, ago_ALENTEJO_2009, set_ALENTEJO_2009, out_ALENTEJO_2009, nov_ALENTEJO_2009, dec_ALENTEJO_2009)


#2010
jan_ALENTEJO_2010 <- extract(x=jan_2010, y=study_site_alentejo)
jan_ALENTEJO_2010 <- mean(jan_ALENTEJO_2010[[1]], na.rm=T)
#
fev_ALENTEJO_2010 <- extract(x=fev_2010, y=study_site_alentejo)
fev_ALENTEJO_2010 <- mean(fev_ALENTEJO_2010[[1]], na.rm=T)
#
mar_ALENTEJO_2010 <- extract(x=mar_2010, y=study_site_alentejo)
mar_ALENTEJO_2010 <- mean(mar_ALENTEJO_2010[[1]], na.rm=T)
#
abr_ALENTEJO_2010 <- extract(x=abr_2010, y=study_site_alentejo)
abr_ALENTEJO_2010 <- mean(abr_ALENTEJO_2010[[1]], na.rm=T)
#
mai_ALENTEJO_2010 <- extract(x=mai_2010, y=study_site_alentejo)
mai_ALENTEJO_2010 <- mean(mai_ALENTEJO_2010[[1]], na.rm=T)
#
jun_ALENTEJO_2010 <- extract(x=jun_2010, y=study_site_alentejo)
jun_ALENTEJO_2010 <- mean(jun_ALENTEJO_2010[[1]], na.rm=T)
#
jul_ALENTEJO_2010 <- extract(x=jul_2010, y=study_site_alentejo)
jul_ALENTEJO_2010 <- mean(jul_ALENTEJO_2010[[1]], na.rm=T)
#
ago_ALENTEJO_2010 <- extract(x=ago_2010, y=study_site_alentejo)
ago_ALENTEJO_2010 <- mean(ago_ALENTEJO_2010[[1]], na.rm=T)
#
set_ALENTEJO_2010 <- extract(x=set_2010, y=study_site_alentejo)
set_ALENTEJO_2010 <- mean(set_ALENTEJO_2010[[1]], na.rm=T)
#
out_ALENTEJO_2010 <- extract(x=out_2010, y=study_site_alentejo)
out_ALENTEJO_2010 <- mean(out_ALENTEJO_2010[[1]], na.rm=T)
#
nov_ALENTEJO_2010 <- extract(x=nov_2010, y=study_site_alentejo)
nov_ALENTEJO_2010 <- mean(nov_ALENTEJO_2010[[1]], na.rm=T)
#
dec_ALENTEJO_2010 <- extract(x=dec_2010, y=study_site_alentejo)
dec_ALENTEJO_2010 <- mean(dec_ALENTEJO_2010[[1]], na.rm=T)

sand_2010_ALENTEJO <- c(jan_ALENTEJO_2010, fev_ALENTEJO_2010, mar_ALENTEJO_2010, abr_ALENTEJO_2010, mai_ALENTEJO_2010, jun_ALENTEJO_2010, 
               jul_ALENTEJO_2010, ago_ALENTEJO_2010, set_ALENTEJO_2010, out_ALENTEJO_2010, nov_ALENTEJO_2010, dec_ALENTEJO_2010)

#2015
jan_ALENTEJO_2015 <- extract(x=jan_2015, y=study_site_alentejo)
jan_ALENTEJO_2015 <- mean(jan_ALENTEJO_2015[[1]], na.rm=T)
#
fev_ALENTEJO_2015 <- extract(x=fev_2015, y=study_site_alentejo)
fev_ALENTEJO_2015 <- mean(fev_ALENTEJO_2015[[1]], na.rm=T)
#
mar_ALENTEJO_2015 <- extract(x=mar_2015, y=study_site_alentejo)
mar_ALENTEJO_2015 <- mean(mar_ALENTEJO_2015[[1]], na.rm=T)
#
abr_ALENTEJO_2015 <- extract(x=abr_2015, y=study_site_alentejo)
abr_ALENTEJO_2015 <- mean(abr_ALENTEJO_2015[[1]], na.rm=T)
#
mai_ALENTEJO_2015 <- extract(x=mai_2015, y=study_site_alentejo)
mai_ALENTEJO_2015 <- mean(mai_ALENTEJO_2015[[1]], na.rm=T)
#
jun_ALENTEJO_2015 <- extract(x=jun_2015, y=study_site_alentejo)
jun_ALENTEJO_2015 <- mean(jun_ALENTEJO_2015[[1]], na.rm=T)
#
jul_ALENTEJO_2015 <- extract(x=jul_2015, y=study_site_alentejo)
jul_ALENTEJO_2015 <- mean(jul_ALENTEJO_2015[[1]], na.rm=T)
#
ago_ALENTEJO_2015 <- extract(x=ago_2015, y=study_site_alentejo)
ago_ALENTEJO_2015 <- mean(ago_ALENTEJO_2015[[1]], na.rm=T)
#
set_ALENTEJO_2015 <- extract(x=set_2015, y=study_site_alentejo)
set_ALENTEJO_2015 <- mean(set_ALENTEJO_2015[[1]], na.rm=T)
#
out_ALENTEJO_2015 <- extract(x=out_2015, y=study_site_alentejo)
out_ALENTEJO_2015 <- mean(out_ALENTEJO_2015[[1]], na.rm=T)
#
nov_ALENTEJO_2015 <- extract(x=nov_2015, y=study_site_alentejo)
nov_ALENTEJO_2015 <- mean(nov_ALENTEJO_2015[[1]], na.rm=T)
#
dec_ALENTEJO_2015 <- extract(x=dec_2015, y=study_site_alentejo)
dec_ALENTEJO_2015 <- mean(dec_ALENTEJO_2015[[1]], na.rm=T)

sand_2015_ALENTEJO <- c(jan_ALENTEJO_2015, fev_ALENTEJO_2015, mar_ALENTEJO_2015, abr_ALENTEJO_2015, mai_ALENTEJO_2015, jun_ALENTEJO_2015, 
               jul_ALENTEJO_2015, ago_ALENTEJO_2015, set_ALENTEJO_2015, out_ALENTEJO_2015, nov_ALENTEJO_2015, dec_ALENTEJO_2015)


#2016
jan_ALENTEJO_2016 <- extract(x=jan_2016, y=study_site_alentejo)
jan_ALENTEJO_2016 <- mean(jan_ALENTEJO_2016[[1]], na.rm=T)
#
fev_ALENTEJO_2016 <- extract(x=fev_2016, y=study_site_alentejo)
fev_ALENTEJO_2016 <- mean(fev_ALENTEJO_2016[[1]], na.rm=T)
#
mar_ALENTEJO_2016 <- extract(x=mar_2016, y=study_site_alentejo)
mar_ALENTEJO_2016 <- mean(mar_ALENTEJO_2016[[1]], na.rm=T)
#
abr_ALENTEJO_2016 <- extract(x=abr_2016, y=study_site_alentejo)
abr_ALENTEJO_2016 <- mean(abr_ALENTEJO_2016[[1]], na.rm=T)
#
mai_ALENTEJO_2016 <- extract(x=mai_2016, y=study_site_alentejo)
mai_ALENTEJO_2016 <- mean(mai_ALENTEJO_2016[[1]], na.rm=T)
#
jun_ALENTEJO_2016 <- extract(x=jun_2016, y=study_site_alentejo)
jun_ALENTEJO_2016 <- mean(jun_ALENTEJO_2016[[1]], na.rm=T)
#
jul_ALENTEJO_2016 <- extract(x=jul_2016, y=study_site_alentejo)
jul_ALENTEJO_2016 <- mean(jul_ALENTEJO_2016[[1]], na.rm=T)
#
ago_ALENTEJO_2016 <- extract(x=ago_2016, y=study_site_alentejo)
ago_ALENTEJO_2016 <- mean(ago_ALENTEJO_2016[[1]], na.rm=T)
#
set_ALENTEJO_2016 <- extract(x=set_2016, y=study_site_alentejo)
set_ALENTEJO_2016 <- mean(set_ALENTEJO_2016[[1]], na.rm=T)
#
out_ALENTEJO_2016 <- extract(x=out_2016, y=study_site_alentejo)
out_ALENTEJO_2016 <- mean(out_ALENTEJO_2016[[1]], na.rm=T)
#
nov_ALENTEJO_2016 <- extract(x=nov_2016, y=study_site_alentejo)
nov_ALENTEJO_2016 <- mean(nov_ALENTEJO_2016[[1]], na.rm=T)
#
dec_ALENTEJO_2016 <- extract(x=dec_2016, y=study_site_alentejo)
dec_ALENTEJO_2016 <- mean(dec_ALENTEJO_2016[[1]], na.rm=T)

sand_2016_ALENTEJO <- c(jan_ALENTEJO_2016, fev_ALENTEJO_2016, mar_ALENTEJO_2016, abr_ALENTEJO_2016, mai_ALENTEJO_2016, jun_ALENTEJO_2016, 
               jul_ALENTEJO_2016, ago_ALENTEJO_2016, set_ALENTEJO_2016, out_ALENTEJO_2016, nov_ALENTEJO_2016, dec_ALENTEJO_2016)


#2021
jan_ALENTEJO_2021 <- extract(x=jan_2021, y=study_site_alentejo)
jan_ALENTEJO_2021 <- mean(jan_ALENTEJO_2021[[1]], na.rm=T)
#
fev_ALENTEJO_2021 <- extract(x=fev_2021, y=study_site_alentejo)
fev_ALENTEJO_2021 <- mean(fev_ALENTEJO_2021[[1]], na.rm=T)
#
mar_ALENTEJO_2021 <- extract(x=mar_2021, y=study_site_alentejo)
mar_ALENTEJO_2021 <- mean(mar_ALENTEJO_2021[[1]], na.rm=T)
#
abr_ALENTEJO_2021 <- extract(x=abr_2021, y=study_site_alentejo)
abr_ALENTEJO_2021 <- mean(abr_ALENTEJO_2021[[1]], na.rm=T)
#
mai_ALENTEJO_2021 <- extract(x=mai_2021, y=study_site_alentejo)
mai_ALENTEJO_2021 <- mean(mai_ALENTEJO_2021[[1]], na.rm=T)
#
jun_ALENTEJO_2021 <- extract(x=jun_2021, y=study_site_alentejo)
jun_ALENTEJO_2021 <- mean(jun_ALENTEJO_2021[[1]], na.rm=T)
#
jul_ALENTEJO_2021 <- extract(x=jul_2021, y=study_site_alentejo)
jul_ALENTEJO_2021 <- mean(jul_ALENTEJO_2021[[1]], na.rm=T)
#
ago_ALENTEJO_2021 <- extract(x=ago_2021, y=study_site_alentejo)
ago_ALENTEJO_2021 <- mean(ago_ALENTEJO_2021[[1]], na.rm=T)
#
set_ALENTEJO_2021 <- extract(x=set_2021, y=study_site_alentejo)
set_ALENTEJO_2021 <- mean(set_ALENTEJO_2021[[1]], na.rm=T)
#
out_ALENTEJO_2021 <- extract(x=out_2021, y=study_site_alentejo)
out_ALENTEJO_2021 <- mean(out_ALENTEJO_2021[[1]], na.rm=T)
#
nov_ALENTEJO_2021 <- extract(x=nov_2021, y=study_site_alentejo)
nov_ALENTEJO_2021 <- mean(nov_ALENTEJO_2021[[1]], na.rm=T)
#
dec_ALENTEJO_2021 <- extract(x=dec_2021, y=study_site_alentejo)
dec_ALENTEJO_2021 <- mean(dec_ALENTEJO_2021[[1]], na.rm=T)

sand_2021_ALENTEJO <- c(jan_ALENTEJO_2021, fev_ALENTEJO_2021, mar_ALENTEJO_2021, abr_ALENTEJO_2021, mai_ALENTEJO_2021, jun_ALENTEJO_2021, 
               jul_ALENTEJO_2021, ago_ALENTEJO_2021, set_ALENTEJO_2021, out_ALENTEJO_2021, nov_ALENTEJO_2021, dec_ALENTEJO_2021)


################################################################################
################################################################################

#Average aerosols in the atmosphere in the Sahara desert and in Alentejo

#Sahara
sand_2004_SAHARA
sand_2007_SAHARA
sand_2008_SAHARA
sand_2009_SAHARA
sand_2010_SAHARA
sand_2015_SAHARA
sand_2016_SAHARA
sand_2021_SAHARA

#Alentejo
sand_2004_ALENTEJO
sand_2007_ALENTEJO
sand_2008_ALENTEJO
sand_2009_ALENTEJO
sand_2010_ALENTEJO
sand_2015_ALENTEJO
sand_2016_ALENTEJO
sand_2021_ALENTEJO

#Outbreaks
blue_tongue_2004
blue_tongue_2007
blue_tongue_2008
blue_tongue_2009
blue_tongue_2010
blue_tongue_2015
blue_tongue_2016
blue_tongue_2021

#as.Date(blue_tongue_2004$Data.confi)

#Plot
library(ggplot2)

################################# DESERT #######################################

#2004
middle_month_2004 <- seq(as.Date("2004/01/15"), by = "month", length.out = 12)
sand_2004_SAHARA_DF <- data.frame(middle_month_2004, sand_2004_SAHARA)
#
OUTBREAKS_AEROSOLS_2004_SAHARA <- ggplot(data = sand_2004_SAHARA_DF, aes(x = middle_month_2004, y = sand_2004_SAHARA)) +
  geom_line() +
  labs(x = "Date", y = "Aerosols", title = "Sahara Desert Aerosols - 2004") +
  geom_vline(xintercept = as.numeric(as.Date(blue_tongue_2004$Data.confi)), linetype=4)

#2007
middle_month_2007 <- seq(as.Date("2007/01/15"), by = "month", length.out = 12)
sand_2007_SAHARA_DF <- data.frame(middle_month_2007, sand_2007_SAHARA)
#
OUTBREAKS_AEROSOLS_2007_SAHARA <- ggplot(data = sand_2007_SAHARA_DF, aes(x = middle_month_2007, y = sand_2007_SAHARA)) +
  geom_line() +
  labs(x = "Date", y = "Aerosols", title = "Sahara Desert Aerosols - 2007") +
  geom_vline(xintercept = as.numeric(as.Date(blue_tongue_2007$Data.confi)), linetype=4)

#2008
middle_month_2008 <- seq(as.Date("2008/01/15"), by = "month", length.out = 12)
sand_2008_SAHARA_DF <- data.frame(middle_month_2008, sand_2008_SAHARA)
#
OUTBREAKS_AEROSOLS_2008_SAHARA <- ggplot(data = sand_2008_SAHARA_DF, aes(x = middle_month_2008, y = sand_2008_SAHARA)) +
  geom_line() +
  labs(x = "Date", y = "Aerosols", title = "Sahara Desert Aerosols - 2008") +
  geom_vline(xintercept = as.numeric(as.Date(blue_tongue_2008$Data.confi)), linetype=4)

#2009
middle_month_2009 <- seq(as.Date("2009/01/15"), by = "month", length.out = 12)
sand_2009_SAHARA_DF <- data.frame(middle_month_2009, sand_2009_SAHARA)
#
OUTBREAKS_AEROSOLS_2009_SAHARA <- ggplot(data = sand_2009_SAHARA_DF, aes(x = middle_month_2009, y = sand_2009_SAHARA)) +
  geom_line() +
  labs(x = "Date", y = "Aerosols", title = "Sahara Desert Aerosols - 2009") +
  geom_vline(xintercept = as.numeric(as.Date(blue_tongue_2009$Data.confi)), linetype=4)

#2010
middle_month_2010 <- seq(as.Date("2010/01/15"), by = "month", length.out = 12)
sand_2010_SAHARA_DF <- data.frame(middle_month_2010, sand_2010_SAHARA)
#
OUTBREAKS_AEROSOLS_2010_SAHARA <- ggplot(data = sand_2010_SAHARA_DF, aes(x = middle_month_2010, y = sand_2010_SAHARA)) +
  geom_line() +
  labs(x = "Date", y = "Aerosols", title = "Sahara Desert Aerosols - 2010") +
  geom_vline(xintercept = as.numeric(as.Date(blue_tongue_2010$Data.confi)), linetype=4)

#2015
middle_month_2015 <- seq(as.Date("2015/01/15"), by = "month", length.out = 12)
sand_2015_SAHARA_DF <- data.frame(middle_month_2015, sand_2015_SAHARA)
#
OUTBREAKS_AEROSOLS_2015_SAHARA <- ggplot(data = sand_2015_SAHARA_DF, aes(x = middle_month_2015, y = sand_2015_SAHARA)) +
  geom_line() +
  labs(x = "Date", y = "Aerosols", title = "Sahara Desert Aerosols - 2015") +
  geom_vline(xintercept = as.numeric(as.Date(blue_tongue_2015$Data.confi)), linetype=4)

#2016
middle_month_2016 <- seq(as.Date("2016/01/15"), by = "month", length.out = 12)
sand_2016_SAHARA_DF <- data.frame(middle_month_2016, sand_2016_SAHARA)
#
OUTBREAKS_AEROSOLS_2016_SAHARA <- ggplot(data = sand_2016_SAHARA_DF, aes(x = middle_month_2016, y = sand_2016_SAHARA)) +
  geom_line() +
  labs(x = "Date", y = "Aerosols", title = "Sahara Desert Aerosols - 2016") +
  geom_vline(xintercept = as.numeric(as.Date(blue_tongue_2016$Data.confi)), linetype=4)

#2021
middle_month_2021 <- seq(as.Date("2021/01/15"), by = "month", length.out = 12)
sand_2021_SAHARA_DF <- data.frame(middle_month_2021, sand_2021_SAHARA)
#
OUTBREAKS_AEROSOLS_2021_SAHARA <- ggplot(data = sand_2021_SAHARA_DF, aes(x = middle_month_2021, y = sand_2021_SAHARA)) +
  geom_line() +
  labs(x = "Date", y = "Aerosols", title = "Sahara Desert Aerosols - 2021") +
  geom_vline(xintercept = as.numeric(as.Date(blue_tongue_2021$Data.confi)), linetype=4)

############################################################################################

######################################## ALENTEJO ##########################################

#2004
middle_month_2004 <- seq(as.Date("2004/01/15"), by = "month", length.out = 12)
sand_2004_ALENTEJO_DF <- data.frame(middle_month_2004, sand_2004_ALENTEJO)
#
OUTBREAKS_AEROSOLS_2004_ALENTEJO <- ggplot(data = sand_2004_ALENTEJO_DF, aes(x = middle_month_2004, y = sand_2004_ALENTEJO)) +
  geom_line() +
  labs(x = "Date", y = "Aerosols", title = "ALENTEJO Desert Aerosols - 2004") +
  geom_vline(xintercept = as.numeric(as.Date(blue_tongue_2004$Data.confi)), linetype=4)

#2007
middle_month_2007 <- seq(as.Date("2007/01/15"), by = "month", length.out = 12)
sand_2007_ALENTEJO_DF <- data.frame(middle_month_2007, sand_2007_ALENTEJO)
#
OUTBREAKS_AEROSOLS_2007_ALENTEJO <- ggplot(data = sand_2007_ALENTEJO_DF, aes(x = middle_month_2007, y = sand_2007_ALENTEJO)) +
  geom_line() +
  labs(x = "Date", y = "Aerosols", title = "ALENTEJO Desert Aerosols - 2007") +
  geom_vline(xintercept = as.numeric(as.Date(blue_tongue_2007$Data.confi)), linetype=4)

#2008
middle_month_2008 <- seq(as.Date("2008/01/15"), by = "month", length.out = 12)
sand_2008_ALENTEJO_DF <- data.frame(middle_month_2008, sand_2008_ALENTEJO)
#
OUTBREAKS_AEROSOLS_2008_ALENTEJO <- ggplot(data = sand_2008_ALENTEJO_DF, aes(x = middle_month_2008, y = sand_2008_ALENTEJO)) +
  geom_line() +
  labs(x = "Date", y = "Aerosols", title = "ALENTEJO Desert Aerosols - 2008") +
  geom_vline(xintercept = as.numeric(as.Date(blue_tongue_2008$Data.confi)), linetype=4)

#2009
middle_month_2009 <- seq(as.Date("2009/01/15"), by = "month", length.out = 12)
sand_2009_ALENTEJO_DF <- data.frame(middle_month_2009, sand_2009_ALENTEJO)
#
OUTBREAKS_AEROSOLS_2009_ALENTEJO <- ggplot(data = sand_2009_ALENTEJO_DF, aes(x = middle_month_2009, y = sand_2009_ALENTEJO)) +
  geom_line() +
  labs(x = "Date", y = "Aerosols", title = "ALENTEJO Desert Aerosols - 2009") +
  geom_vline(xintercept = as.numeric(as.Date(blue_tongue_2009$Data.confi)), linetype=4)

#2010
middle_month_2010 <- seq(as.Date("2010/01/15"), by = "month", length.out = 12)
sand_2010_ALENTEJO_DF <- data.frame(middle_month_2010, sand_2010_ALENTEJO)
#
OUTBREAKS_AEROSOLS_2010_ALENTEJO <- ggplot(data = sand_2010_ALENTEJO_DF, aes(x = middle_month_2010, y = sand_2010_ALENTEJO)) +
  geom_line() +
  labs(x = "Date", y = "Aerosols", title = "ALENTEJO Desert Aerosols - 2010") +
  geom_vline(xintercept = as.numeric(as.Date(blue_tongue_2010$Data.confi)), linetype=4)

#2015
middle_month_2015 <- seq(as.Date("2015/01/15"), by = "month", length.out = 12)
sand_2015_ALENTEJO_DF <- data.frame(middle_month_2015, sand_2015_ALENTEJO)
#
OUTBREAKS_AEROSOLS_2015_ALENTEJO <- ggplot(data = sand_2015_ALENTEJO_DF, aes(x = middle_month_2015, y = sand_2015_ALENTEJO)) +
  geom_line() +
  labs(x = "Date", y = "Aerosols", title = "ALENTEJO Desert Aerosols - 2015") +
  geom_vline(xintercept = as.numeric(as.Date(blue_tongue_2015$Data.confi)), linetype=4)

#2016
middle_month_2016 <- seq(as.Date("2016/01/15"), by = "month", length.out = 12)
sand_2016_ALENTEJO_DF <- data.frame(middle_month_2016, sand_2016_ALENTEJO)
#
OUTBREAKS_AEROSOLS_2016_ALENTEJO <- ggplot(data = sand_2016_ALENTEJO_DF, aes(x = middle_month_2016, y = sand_2016_ALENTEJO)) +
  geom_line() +
  labs(x = "Date", y = "Aerosols", title = "ALENTEJO Desert Aerosols - 2016") +
  geom_vline(xintercept = as.numeric(as.Date(blue_tongue_2016$Data.confi)), linetype=4)

#2021
middle_month_2021 <- seq(as.Date("2021/01/15"), by = "month", length.out = 12)
sand_2021_ALENTEJO_DF <- data.frame(middle_month_2021, sand_2021_ALENTEJO)
#
OUTBREAKS_AEROSOLS_2021_ALENTEJO <- ggplot(data = sand_2021_ALENTEJO_DF, aes(x = middle_month_2021, y = sand_2021_ALENTEJO)) +
  geom_line() +
  labs(x = "Date", y = "Aerosols", title = "ALENTEJO Desert Aerosols - 2021") +
  geom_vline(xintercept = as.numeric(as.Date(blue_tongue_2021$Data.confi)), linetype=4)


########################################################################################

library(ggpubr)

ggarrange(OUTBREAKS_AEROSOLS_2004_SAHARA,
          OUTBREAKS_AEROSOLS_2007_SAHARA,
          OUTBREAKS_AEROSOLS_2008_SAHARA,
          OUTBREAKS_AEROSOLS_2009_SAHARA,
          OUTBREAKS_AEROSOLS_2010_SAHARA,
          OUTBREAKS_AEROSOLS_2015_SAHARA,
          OUTBREAKS_AEROSOLS_2016_SAHARA,
          OUTBREAKS_AEROSOLS_2021_SAHARA,
          #labels = c("2004", "2007", "2008", "2009", "2010", "2015", "2016", "2021"),
          ncol = 2, nrow = 4)

ggarrange(OUTBREAKS_AEROSOLS_2004_ALENTEJO,
          OUTBREAKS_AEROSOLS_2007_ALENTEJO,
          OUTBREAKS_AEROSOLS_2008_ALENTEJO,
          OUTBREAKS_AEROSOLS_2009_ALENTEJO,
          OUTBREAKS_AEROSOLS_2010_ALENTEJO,
          OUTBREAKS_AEROSOLS_2015_ALENTEJO,
          OUTBREAKS_AEROSOLS_2016_ALENTEJO,
          OUTBREAKS_AEROSOLS_2021_ALENTEJO,
          #labels = c("2004", "2007", "2008", "2009", "2010", "2015", "2016", "2021"),
          ncol = 2, nrow = 4)

#However this does not guarantee that these outbreaks are a result of wind transport
#it might just be - and I'm sure it is - that these are a result of the species life cycle...











