#FMestre
#07-09-2022

#Outbreaks
blue_tongue

#Study site
study_site_alentejo

#Suitabilities
#imicola
imicola_2004_values <- as.vector(as.matrix(imicola_2004))
imicola_2004_values <- imicola_2004_values[!is.na(imicola_2004_values)]
#
imicola_2007_values <- as.vector(as.matrix(imicola_2007))
imicola_2007_values <- imicola_2007_values[!is.na(imicola_2007_values)]
#
imicola_2008_values <- as.vector(as.matrix(imicola_2008))
imicola_2008_values <- imicola_2008_values[!is.na(imicola_2008_values)]
#
imicola_2009_values <- as.vector(as.matrix(imicola_2009))
imicola_2009_values <- imicola_2009_values[!is.na(imicola_2009_values)]
#
imicola_2010_values <- as.vector(as.matrix(imicola_2010))
imicola_2010_values <- imicola_2010_values[!is.na(imicola_2010_values)]
#
imicola_2015_values <- as.vector(as.matrix(imicola_2015))
imicola_2015_values <- imicola_2015_values[!is.na(imicola_2015_values)]
#
imicola_2016_values <- as.vector(as.matrix(imicola_2016))
imicola_2016_values <- imicola_2016_values[!is.na(imicola_2016_values)]
#
imicola_2021_values <- as.vector(as.matrix(imicola_2021))
imicola_2021_values <- imicola_2021_values[!is.na(imicola_2021_values)]
#

#dewulfi
dewulfi_2004_values <- as.vector(as.matrix(dewulfi_2004))
dewulfi_2004_values <- dewulfi_2004_values[!is.na(dewulfi_2004_values)]
#
dewulfi_2007_values <- as.vector(as.matrix(dewulfi_2007))
dewulfi_2007_values <- dewulfi_2007_values[!is.na(dewulfi_2007_values)]
#
dewulfi_2008_values <- as.vector(as.matrix(dewulfi_2008))
dewulfi_2008_values <- dewulfi_2008_values[!is.na(dewulfi_2008_values)]
#
dewulfi_2009_values <- as.vector(as.matrix(dewulfi_2009))
dewulfi_2009_values <- dewulfi_2009_values[!is.na(dewulfi_2009_values)]
#
dewulfi_2010_values <- as.vector(as.matrix(dewulfi_2010))
dewulfi_2010_values <- dewulfi_2010_values[!is.na(dewulfi_2010_values)]
#
dewulfi_2015_values <- as.vector(as.matrix(dewulfi_2015))
dewulfi_2015_values <- dewulfi_2015_values[!is.na(dewulfi_2015_values)]
#
dewulfi_2016_values <- as.vector(as.matrix(dewulfi_2016))
dewulfi_2016_values <- dewulfi_2016_values[!is.na(dewulfi_2016_values)]
#
dewulfi_2021_values <- as.vector(as.matrix(dewulfi_2021))
dewulfi_2021_values <- dewulfi_2021_values[!is.na(dewulfi_2021_values)]
#


#pulicaris
pulicaris_2004_values <- as.vector(as.matrix(pulicaris_2004))
pulicaris_2004_values <- pulicaris_2004_values[!is.na(pulicaris_2004_values)]
#
pulicaris_2007_values <- as.vector(as.matrix(pulicaris_2007))
pulicaris_2007_values <- pulicaris_2007_values[!is.na(pulicaris_2007_values)]
#
pulicaris_2008_values <- as.vector(as.matrix(pulicaris_2008))
pulicaris_2008_values <- pulicaris_2008_values[!is.na(pulicaris_2008_values)]
#
pulicaris_2009_values <- as.vector(as.matrix(pulicaris_2009))
pulicaris_2009_values <- pulicaris_2009_values[!is.na(pulicaris_2009_values)]
#
pulicaris_2010_values <- as.vector(as.matrix(pulicaris_2010))
pulicaris_2010_values <- pulicaris_2010_values[!is.na(pulicaris_2010_values)]
#
pulicaris_2015_values <- as.vector(as.matrix(pulicaris_2015))
pulicaris_2015_values <- pulicaris_2015_values[!is.na(pulicaris_2015_values)]
#
pulicaris_2016_values <- as.vector(as.matrix(pulicaris_2016))
pulicaris_2016_values <- pulicaris_2016_values[!is.na(pulicaris_2016_values)]
#
pulicaris_2021_values <- as.vector(as.matrix(pulicaris_2021))
pulicaris_2021_values <- pulicaris_2021_values[!is.na(pulicaris_2021_values)]
#


#obsoletus
obsoletus_2004_values <- as.vector(as.matrix(obsoletus_2004))
obsoletus_2004_values <- obsoletus_2004_values[!is.na(obsoletus_2004_values)]
#
obsoletus_2007_values <- as.vector(as.matrix(obsoletus_2007))
obsoletus_2007_values <- obsoletus_2007_values[!is.na(obsoletus_2007_values)]
#
obsoletus_2008_values <- as.vector(as.matrix(obsoletus_2008))
obsoletus_2008_values <- obsoletus_2008_values[!is.na(obsoletus_2008_values)]
#
obsoletus_2009_values <- as.vector(as.matrix(obsoletus_2009))
obsoletus_2009_values <- obsoletus_2009_values[!is.na(obsoletus_2009_values)]
#
obsoletus_2010_values <- as.vector(as.matrix(obsoletus_2010))
obsoletus_2010_values <- obsoletus_2010_values[!is.na(obsoletus_2010_values)]
#
obsoletus_2015_values <- as.vector(as.matrix(obsoletus_2015))
obsoletus_2015_values <- obsoletus_2015_values[!is.na(obsoletus_2015_values)]
#
obsoletus_2016_values <- as.vector(as.matrix(obsoletus_2016))
obsoletus_2016_values <- obsoletus_2016_values[!is.na(obsoletus_2016_values)]
#
obsoletus_2021_values <- as.vector(as.matrix(obsoletus_2021))
obsoletus_2021_values <- obsoletus_2021_values[!is.na(obsoletus_2021_values)]
#

#Outbreaks oper year ###########################################################

blue_tongue_2004 <- blue_tongue[blue_tongue$Ano == 2004,]
blue_tongue_2007 <- blue_tongue[blue_tongue$Ano == 2007,]
blue_tongue_2008 <- blue_tongue[blue_tongue$Ano == 2008,]
blue_tongue_2009 <- blue_tongue[blue_tongue$Ano == 2009,]
blue_tongue_2010 <- blue_tongue[blue_tongue$Ano == 2010,]
blue_tongue_2015 <- blue_tongue[blue_tongue$Ano == 2015,]
blue_tongue_2016 <- blue_tongue[blue_tongue$Ano == 2016,]
blue_tongue_2021 <- blue_tongue[blue_tongue$Ano == 2021,]

#Getting suitability values from the outbreaks sites
#imicola
blue_tongue_outbreaks_imicola_2004 <- extract(x=imicola_2004, y=blue_tongue_2004)
blue_tongue_outbreaks_imicola_2007 <- extract(x=imicola_2007, y=blue_tongue_2007)
blue_tongue_outbreaks_imicola_2008 <- extract(x=imicola_2008, y=blue_tongue_2008)
blue_tongue_outbreaks_imicola_2009 <- extract(x=imicola_2009, y=blue_tongue_2009)
blue_tongue_outbreaks_imicola_2010 <- extract(x=imicola_2010, y=blue_tongue_2010)
blue_tongue_outbreaks_imicola_2015 <- extract(x=imicola_2015, y=blue_tongue_2015)
blue_tongue_outbreaks_imicola_2016 <- extract(x=imicola_2016, y=blue_tongue_2016)
blue_tongue_outbreaks_imicola_2021 <- extract(x=imicola_2021, y=blue_tongue_2021)
#dewulfi
blue_tongue_outbreaks_dewulfi_2004 <- extract(x=dewulfi_2004, y=blue_tongue_2004)
blue_tongue_outbreaks_dewulfi_2007 <- extract(x=dewulfi_2007, y=blue_tongue_2007)
blue_tongue_outbreaks_dewulfi_2008 <- extract(x=dewulfi_2008, y=blue_tongue_2008)
blue_tongue_outbreaks_dewulfi_2009 <- extract(x=dewulfi_2009, y=blue_tongue_2009)
blue_tongue_outbreaks_dewulfi_2010 <- extract(x=dewulfi_2010, y=blue_tongue_2010)
blue_tongue_outbreaks_dewulfi_2015 <- extract(x=dewulfi_2015, y=blue_tongue_2015)
blue_tongue_outbreaks_dewulfi_2016 <- extract(x=dewulfi_2016, y=blue_tongue_2016)
blue_tongue_outbreaks_dewulfi_2021 <- extract(x=dewulfi_2021, y=blue_tongue_2021)
#pulicaris
blue_tongue_outbreaks_pulicaris_2004 <- extract(x=pulicaris_2004, y=blue_tongue_2004)
blue_tongue_outbreaks_pulicaris_2007 <- extract(x=pulicaris_2007, y=blue_tongue_2007)
blue_tongue_outbreaks_pulicaris_2008 <- extract(x=pulicaris_2008, y=blue_tongue_2008)
blue_tongue_outbreaks_pulicaris_2009 <- extract(x=pulicaris_2009, y=blue_tongue_2009)
blue_tongue_outbreaks_pulicaris_2010 <- extract(x=pulicaris_2010, y=blue_tongue_2010)
blue_tongue_outbreaks_pulicaris_2015 <- extract(x=pulicaris_2015, y=blue_tongue_2015)
blue_tongue_outbreaks_pulicaris_2016 <- extract(x=pulicaris_2016, y=blue_tongue_2016)
blue_tongue_outbreaks_pulicaris_2021 <- extract(x=pulicaris_2021, y=blue_tongue_2021)
#obsoletus
blue_tongue_outbreaks_obsoletus_2004 <- extract(x=obsoletus_2004, y=blue_tongue_2004)
blue_tongue_outbreaks_obsoletus_2007 <- extract(x=obsoletus_2007, y=blue_tongue_2007)
blue_tongue_outbreaks_obsoletus_2008 <- extract(x=obsoletus_2008, y=blue_tongue_2008)
blue_tongue_outbreaks_obsoletus_2009 <- extract(x=obsoletus_2009, y=blue_tongue_2009)
blue_tongue_outbreaks_obsoletus_2010 <- extract(x=obsoletus_2010, y=blue_tongue_2010)
blue_tongue_outbreaks_obsoletus_2015 <- extract(x=obsoletus_2015, y=blue_tongue_2015)
blue_tongue_outbreaks_obsoletus_2016 <- extract(x=obsoletus_2016, y=blue_tongue_2016)
blue_tongue_outbreaks_obsoletus_2021 <- extract(x=obsoletus_2021, y=blue_tongue_2021)

# t Student ####################################################################
#imicola 2004
VECTOR_TEST_blue_tongue_outbreaks_imicola_2004 <- NA
for(i in 1:1000){
TEST_blue_tongue_outbreaks_imicola_2004 <- t.test(x=blue_tongue_outbreaks_imicola_2004, y=sample(imicola_2004_values, length(blue_tongue_2004)), alternative="greater")
VECTOR_TEST_blue_tongue_outbreaks_imicola_2004[i] <- TEST_blue_tongue_outbreaks_imicola_2004$p.value
message(paste(i))
}
#imicola 2007
VECTOR_TEST_blue_tongue_outbreaks_imicola_2007 <- NA
for(i in 1:1000){
  TEST_blue_tongue_outbreaks_imicola_2007 <- t.test(x=blue_tongue_outbreaks_imicola_2007, y=sample(imicola_2007_values, length(blue_tongue_2007)), alternative="greater")
  VECTOR_TEST_blue_tongue_outbreaks_imicola_2007[i] <- TEST_blue_tongue_outbreaks_imicola_2007$p.value
  message(paste(i))
}
#imicola 2008
VECTOR_TEST_blue_tongue_outbreaks_imicola_2008 <- NA
for(i in 1:1000){
  TEST_blue_tongue_outbreaks_imicola_2008 <- t.test(x=blue_tongue_outbreaks_imicola_2008, y=sample(imicola_2008_values, length(blue_tongue_2008)), alternative="greater")
  VECTOR_TEST_blue_tongue_outbreaks_imicola_2008[i] <- TEST_blue_tongue_outbreaks_imicola_2008$p.value
  message(paste(i))
}
#imicola 2009
VECTOR_TEST_blue_tongue_outbreaks_imicola_2009 <- NA
for(i in 1:1000){
  TEST_blue_tongue_outbreaks_imicola_2009 <- t.test(x=blue_tongue_outbreaks_imicola_2009, y=sample(imicola_2009_values, length(blue_tongue_2009)), alternative="greater")
  VECTOR_TEST_blue_tongue_outbreaks_imicola_2009[i] <- TEST_blue_tongue_outbreaks_imicola_2009$p.value
  message(paste(i))
}
#imicola 2010
VECTOR_TEST_blue_tongue_outbreaks_imicola_2010 <- NA
for(i in 1:1000){
  TEST_blue_tongue_outbreaks_imicola_2010 <- t.test(x=blue_tongue_outbreaks_imicola_2010, y=sample(imicola_2010_values, length(blue_tongue_2010)), alternative="greater")
  VECTOR_TEST_blue_tongue_outbreaks_imicola_2010[i] <- TEST_blue_tongue_outbreaks_imicola_2010$p.value
  message(paste(i))
}
#imicola 2015
VECTOR_TEST_blue_tongue_outbreaks_imicola_2015 <- NA
for(i in 1:1000){
  TEST_blue_tongue_outbreaks_imicola_2015 <- t.test(x=blue_tongue_outbreaks_imicola_2015, y=sample(imicola_2015_values, length(blue_tongue_2015)), alternative="greater")
  VECTOR_TEST_blue_tongue_outbreaks_imicola_2015[i] <- TEST_blue_tongue_outbreaks_imicola_2015$p.value
  message(paste(i))
}
#imicola 2016
VECTOR_TEST_blue_tongue_outbreaks_imicola_2016 <- NA
for(i in 1:1000){
  TEST_blue_tongue_outbreaks_imicola_2016 <- t.test(x=blue_tongue_outbreaks_imicola_2016, y=sample(imicola_2016_values, length(blue_tongue_2016)), alternative="greater")
  VECTOR_TEST_blue_tongue_outbreaks_imicola_2016[i] <- TEST_blue_tongue_outbreaks_imicola_2016$p.value
  message(paste(i))
}
#imicola 2021
VECTOR_TEST_blue_tongue_outbreaks_imicola_2021 <- NA
for(i in 1:1000){
  TEST_blue_tongue_outbreaks_imicola_2021 <- t.test(x=blue_tongue_outbreaks_imicola_2021, y=sample(imicola_2021_values, length(blue_tongue_2021)), alternative="greater")
  VECTOR_TEST_blue_tongue_outbreaks_imicola_2021[i] <- TEST_blue_tongue_outbreaks_imicola_2021$p.value
  message(paste(i))
}

################################################################################
#dewulfi 2004
VECTOR_TEST_blue_tongue_outbreaks_dewulfi_2004 <- NA
for(i in 1:1000){
  TEST_blue_tongue_outbreaks_dewulfi_2004 <- t.test(x=blue_tongue_outbreaks_dewulfi_2004, y=sample(dewulfi_2004_values, length(blue_tongue_2004)), alternative="greater")
  VECTOR_TEST_blue_tongue_outbreaks_dewulfi_2004[i] <- TEST_blue_tongue_outbreaks_dewulfi_2004$p.value
  message(paste(i))
}
#dewulfi 2007
VECTOR_TEST_blue_tongue_outbreaks_dewulfi_2007 <- NA
for(i in 1:1000){
  TEST_blue_tongue_outbreaks_dewulfi_2007 <- t.test(x=blue_tongue_outbreaks_dewulfi_2007, y=sample(dewulfi_2007_values, length(blue_tongue_2007)), alternative="greater")
  VECTOR_TEST_blue_tongue_outbreaks_dewulfi_2007[i] <- TEST_blue_tongue_outbreaks_dewulfi_2007$p.value
  message(paste(i))
}
#dewulfi 2008
VECTOR_TEST_blue_tongue_outbreaks_dewulfi_2008 <- NA
for(i in 1:1000){
  TEST_blue_tongue_outbreaks_dewulfi_2008 <- t.test(x=blue_tongue_outbreaks_dewulfi_2008, y=sample(dewulfi_2008_values, length(blue_tongue_2008)), alternative="greater")
  VECTOR_TEST_blue_tongue_outbreaks_dewulfi_2008[i] <- TEST_blue_tongue_outbreaks_dewulfi_2008$p.value
  message(paste(i))
}
#dewulfi 2009
VECTOR_TEST_blue_tongue_outbreaks_dewulfi_2009 <- NA
for(i in 1:1000){
  TEST_blue_tongue_outbreaks_dewulfi_2009 <- t.test(x=blue_tongue_outbreaks_dewulfi_2009, y=sample(dewulfi_2009_values, length(blue_tongue_2009)), alternative="greater")
  VECTOR_TEST_blue_tongue_outbreaks_dewulfi_2009[i] <- TEST_blue_tongue_outbreaks_dewulfi_2009$p.value
  message(paste(i))
}
#dewulfi 2010
VECTOR_TEST_blue_tongue_outbreaks_dewulfi_2010 <- NA
for(i in 1:1000){
  TEST_blue_tongue_outbreaks_dewulfi_2010 <- t.test(x=blue_tongue_outbreaks_dewulfi_2010, y=sample(dewulfi_2010_values, length(blue_tongue_2010)), alternative="greater")
  VECTOR_TEST_blue_tongue_outbreaks_dewulfi_2010[i] <- TEST_blue_tongue_outbreaks_dewulfi_2010$p.value
  message(paste(i))
}
#dewulfi 2015
VECTOR_TEST_blue_tongue_outbreaks_dewulfi_2015 <- NA
for(i in 1:1000){
  TEST_blue_tongue_outbreaks_dewulfi_2015 <- t.test(x=blue_tongue_outbreaks_dewulfi_2015, y=sample(dewulfi_2015_values, length(blue_tongue_2015)), alternative="greater")
  VECTOR_TEST_blue_tongue_outbreaks_dewulfi_2015[i] <- TEST_blue_tongue_outbreaks_dewulfi_2015$p.value
  message(paste(i))
}
#dewulfi 2016
VECTOR_TEST_blue_tongue_outbreaks_dewulfi_2016 <- NA
for(i in 1:1000){
  TEST_blue_tongue_outbreaks_dewulfi_2016 <- t.test(x=blue_tongue_outbreaks_dewulfi_2016, y=sample(dewulfi_2016_values, length(blue_tongue_2016)), alternative="greater")
  VECTOR_TEST_blue_tongue_outbreaks_dewulfi_2016[i] <- TEST_blue_tongue_outbreaks_dewulfi_2016$p.value
  message(paste(i))
}
#dewulfi 2021
VECTOR_TEST_blue_tongue_outbreaks_dewulfi_2021 <- NA
for(i in 1:1000){
  TEST_blue_tongue_outbreaks_dewulfi_2021 <- t.test(x=blue_tongue_outbreaks_dewulfi_2021, y=sample(dewulfi_2021_values, length(blue_tongue_2021)), alternative="greater")
  VECTOR_TEST_blue_tongue_outbreaks_dewulfi_2021[i] <- TEST_blue_tongue_outbreaks_dewulfi_2021$p.value
  message(paste(i))
}

################################################################################
#pulicaris 2004
VECTOR_TEST_blue_tongue_outbreaks_pulicaris_2004 <- NA
for(i in 1:1000){
  TEST_blue_tongue_outbreaks_pulicaris_2004 <- t.test(x=blue_tongue_outbreaks_pulicaris_2004, y=sample(pulicaris_2004_values, length(blue_tongue_2004)), alternative="greater")
  VECTOR_TEST_blue_tongue_outbreaks_pulicaris_2004[i] <- TEST_blue_tongue_outbreaks_pulicaris_2004$p.value
  message(paste(i))
}
#pulicaris 2007
VECTOR_TEST_blue_tongue_outbreaks_pulicaris_2007 <- NA
for(i in 1:1000){
  TEST_blue_tongue_outbreaks_pulicaris_2007 <- t.test(x=blue_tongue_outbreaks_pulicaris_2007, y=sample(pulicaris_2007_values, length(blue_tongue_2007)), alternative="greater")
  VECTOR_TEST_blue_tongue_outbreaks_pulicaris_2007[i] <- TEST_blue_tongue_outbreaks_pulicaris_2007$p.value
  message(paste(i))
}
#pulicaris 2008
VECTOR_TEST_blue_tongue_outbreaks_pulicaris_2008 <- NA
for(i in 1:1000){
  TEST_blue_tongue_outbreaks_pulicaris_2008 <- t.test(x=blue_tongue_outbreaks_pulicaris_2008, y=sample(pulicaris_2008_values, length(blue_tongue_2008)), alternative="greater")
  VECTOR_TEST_blue_tongue_outbreaks_pulicaris_2008[i] <- TEST_blue_tongue_outbreaks_pulicaris_2008$p.value
  message(paste(i))
}
#pulicaris 2009
VECTOR_TEST_blue_tongue_outbreaks_pulicaris_2009 <- NA
for(i in 1:1000){
  TEST_blue_tongue_outbreaks_pulicaris_2009 <- t.test(x=blue_tongue_outbreaks_pulicaris_2009, y=sample(pulicaris_2009_values, length(blue_tongue_2009)), alternative="greater")
  VECTOR_TEST_blue_tongue_outbreaks_pulicaris_2009[i] <- TEST_blue_tongue_outbreaks_pulicaris_2009$p.value
  message(paste(i))
}
#pulicaris 2010
VECTOR_TEST_blue_tongue_outbreaks_pulicaris_2010 <- NA
for(i in 1:1000){
  TEST_blue_tongue_outbreaks_pulicaris_2010 <- t.test(x=blue_tongue_outbreaks_pulicaris_2010, y=sample(pulicaris_2010_values, length(blue_tongue_2010)), alternative="greater")
  VECTOR_TEST_blue_tongue_outbreaks_pulicaris_2010[i] <- TEST_blue_tongue_outbreaks_pulicaris_2010$p.value
  message(paste(i))
}
#pulicaris 2015
VECTOR_TEST_blue_tongue_outbreaks_pulicaris_2015 <- NA
for(i in 1:1000){
  TEST_blue_tongue_outbreaks_pulicaris_2015 <- t.test(x=blue_tongue_outbreaks_pulicaris_2015, y=sample(pulicaris_2015_values, length(blue_tongue_2015)), alternative="greater")
  VECTOR_TEST_blue_tongue_outbreaks_pulicaris_2015[i] <- TEST_blue_tongue_outbreaks_pulicaris_2015$p.value
  message(paste(i))
}
#pulicaris 2016
VECTOR_TEST_blue_tongue_outbreaks_pulicaris_2016 <- NA
for(i in 1:1000){
  TEST_blue_tongue_outbreaks_pulicaris_2016 <- t.test(x=blue_tongue_outbreaks_pulicaris_2016, y=sample(pulicaris_2016_values, length(blue_tongue_2016)), alternative="greater")
  VECTOR_TEST_blue_tongue_outbreaks_pulicaris_2016[i] <- TEST_blue_tongue_outbreaks_pulicaris_2016$p.value
  message(paste(i))
}
#pulicaris 2021
VECTOR_TEST_blue_tongue_outbreaks_pulicaris_2021 <- NA
for(i in 1:1000){
  TEST_blue_tongue_outbreaks_pulicaris_2021 <- t.test(x=blue_tongue_outbreaks_pulicaris_2021, y=sample(pulicaris_2021_values, length(blue_tongue_2021)), alternative="greater")
  VECTOR_TEST_blue_tongue_outbreaks_pulicaris_2021[i] <- TEST_blue_tongue_outbreaks_pulicaris_2021$p.value
  message(paste(i))
}

################################################################################
#obsoletus 2004
VECTOR_TEST_blue_tongue_outbreaks_obsoletus_2004 <- NA
for(i in 1:1000){
  TEST_blue_tongue_outbreaks_obsoletus_2004 <- t.test(x=blue_tongue_outbreaks_obsoletus_2004, y=sample(obsoletus_2004_values, length(blue_tongue_2004)), alternative="greater")
  VECTOR_TEST_blue_tongue_outbreaks_obsoletus_2004[i] <- TEST_blue_tongue_outbreaks_obsoletus_2004$p.value
  message(paste(i))
}
#obsoletus 2007
VECTOR_TEST_blue_tongue_outbreaks_obsoletus_2007 <- NA
for(i in 1:1000){
  TEST_blue_tongue_outbreaks_obsoletus_2007 <- t.test(x=blue_tongue_outbreaks_obsoletus_2007, y=sample(obsoletus_2007_values, length(blue_tongue_2007)), alternative="greater")
  VECTOR_TEST_blue_tongue_outbreaks_obsoletus_2007[i] <- TEST_blue_tongue_outbreaks_obsoletus_2007$p.value
  message(paste(i))
}
#obsoletus 2008
VECTOR_TEST_blue_tongue_outbreaks_obsoletus_2008 <- NA
for(i in 1:1000){
  TEST_blue_tongue_outbreaks_obsoletus_2008 <- t.test(x=blue_tongue_outbreaks_obsoletus_2008, y=sample(obsoletus_2008_values, length(blue_tongue_2008)), alternative="greater")
  VECTOR_TEST_blue_tongue_outbreaks_obsoletus_2008[i] <- TEST_blue_tongue_outbreaks_obsoletus_2008$p.value
  message(paste(i))
}
#obsoletus 2009
VECTOR_TEST_blue_tongue_outbreaks_obsoletus_2009 <- NA
for(i in 1:1000){
  TEST_blue_tongue_outbreaks_obsoletus_2009 <- t.test(x=blue_tongue_outbreaks_obsoletus_2009, y=sample(obsoletus_2009_values, length(blue_tongue_2009)), alternative="greater")
  VECTOR_TEST_blue_tongue_outbreaks_obsoletus_2009[i] <- TEST_blue_tongue_outbreaks_obsoletus_2009$p.value
  message(paste(i))
}
#obsoletus 2010
VECTOR_TEST_blue_tongue_outbreaks_obsoletus_2010 <- NA
for(i in 1:1000){
  TEST_blue_tongue_outbreaks_obsoletus_2010 <- t.test(x=blue_tongue_outbreaks_obsoletus_2010, y=sample(obsoletus_2010_values, length(blue_tongue_2010)), alternative="greater")
  VECTOR_TEST_blue_tongue_outbreaks_obsoletus_2010[i] <- TEST_blue_tongue_outbreaks_obsoletus_2010$p.value
  message(paste(i))
}
#obsoletus 2015
VECTOR_TEST_blue_tongue_outbreaks_obsoletus_2015 <- NA
for(i in 1:1000){
  TEST_blue_tongue_outbreaks_obsoletus_2015 <- t.test(x=blue_tongue_outbreaks_obsoletus_2015, y=sample(obsoletus_2015_values, length(blue_tongue_2015)), alternative="greater")
  VECTOR_TEST_blue_tongue_outbreaks_obsoletus_2015[i] <- TEST_blue_tongue_outbreaks_obsoletus_2015$p.value
  message(paste(i))
}
#obsoletus 2016
VECTOR_TEST_blue_tongue_outbreaks_obsoletus_2016 <- NA
for(i in 1:1000){
  TEST_blue_tongue_outbreaks_obsoletus_2016 <- t.test(x=blue_tongue_outbreaks_obsoletus_2016, y=sample(obsoletus_2016_values, length(blue_tongue_2016)), alternative="greater")
  VECTOR_TEST_blue_tongue_outbreaks_obsoletus_2016[i] <- TEST_blue_tongue_outbreaks_obsoletus_2016$p.value
  message(paste(i))
}
#obsoletus 2021
VECTOR_TEST_blue_tongue_outbreaks_obsoletus_2021 <- NA
for(i in 1:1000){
  TEST_blue_tongue_outbreaks_obsoletus_2021 <- t.test(x=blue_tongue_outbreaks_obsoletus_2021, y=sample(obsoletus_2021_values, length(blue_tongue_2021)), alternative="greater")
  VECTOR_TEST_blue_tongue_outbreaks_obsoletus_2021[i] <- TEST_blue_tongue_outbreaks_obsoletus_2021$p.value
  message(paste(i))
}

################################################################################ imicola

#imicola 2004
VECTOR_TEST_blue_tongue_outbreaks_imicola_2004
#imicola 2007
VECTOR_TEST_blue_tongue_outbreaks_imicola_2007
#imicola 2008
VECTOR_TEST_blue_tongue_outbreaks_imicola_2008
#imicola 2009
VECTOR_TEST_blue_tongue_outbreaks_imicola_2009
#imicola 2010
VECTOR_TEST_blue_tongue_outbreaks_imicola_2010
#imicola 2015
VECTOR_TEST_blue_tongue_outbreaks_imicola_2015
#imicola 2016
VECTOR_TEST_blue_tongue_outbreaks_imicola_2016
#imicola 2021
VECTOR_TEST_blue_tongue_outbreaks_imicola_2021

################################################################################ dewulfi

#dewulfi 2004
VECTOR_TEST_blue_tongue_outbreaks_dewulfi_2004
#dewulfi 2007
VECTOR_TEST_blue_tongue_outbreaks_dewulfi_2007
#dewulfi 2008
VECTOR_TEST_blue_tongue_outbreaks_dewulfi_2008
#dewulfi 2009
VECTOR_TEST_blue_tongue_outbreaks_dewulfi_2009
#dewulfi 2010
VECTOR_TEST_blue_tongue_outbreaks_dewulfi_2010
#dewulfi 2015
VECTOR_TEST_blue_tongue_outbreaks_dewulfi_2015
#dewulfi 2016
VECTOR_TEST_blue_tongue_outbreaks_dewulfi_2016
#dewulfi 2021
VECTOR_TEST_blue_tongue_outbreaks_dewulfi_2021

################################################################################ pulicaris

#pulicaris 2004
VECTOR_TEST_blue_tongue_outbreaks_pulicaris_2004
#pulicaris 2007
VECTOR_TEST_blue_tongue_outbreaks_pulicaris_2007
#pulicaris 2008
VECTOR_TEST_blue_tongue_outbreaks_pulicaris_2008
#pulicaris 2009
VECTOR_TEST_blue_tongue_outbreaks_pulicaris_2009
#pulicaris 2010
VECTOR_TEST_blue_tongue_outbreaks_pulicaris_2010
#pulicaris 2015
VECTOR_TEST_blue_tongue_outbreaks_pulicaris_2015
#pulicaris 2016
VECTOR_TEST_blue_tongue_outbreaks_pulicaris_2016
#pulicaris 2021
VECTOR_TEST_blue_tongue_outbreaks_pulicaris_2021

################################################################################ obsoletus

#obsoletus 2004
VECTOR_TEST_blue_tongue_outbreaks_obsoletus_2004
#obsoletus 2007
VECTOR_TEST_blue_tongue_outbreaks_obsoletus_2007
#obsoletus 2008
VECTOR_TEST_blue_tongue_outbreaks_obsoletus_2008
#obsoletus 2009
VECTOR_TEST_blue_tongue_outbreaks_obsoletus_2009
#obsoletus 2010
VECTOR_TEST_blue_tongue_outbreaks_obsoletus_2010
#obsoletus 2015
VECTOR_TEST_blue_tongue_outbreaks_obsoletus_2015
#obsoletus 2016
VECTOR_TEST_blue_tongue_outbreaks_obsoletus_2016
#obsoletus 2021
VECTOR_TEST_blue_tongue_outbreaks_obsoletus_2021

################################################################################