#FMesttre
#01-08-2022

#portugal_shapefile
#study_site_alentejo
#blue_tongue

########################### Culicoides brevitasis ##############################



############################# Culicoides imicola ###############################

#2004
imicola_suitability_2004 <- extract(x=imicola_2004, y=blue_tongue[blue_tongue$Ano==2004,])
RANDOM_imicola_suitability_2004 <- extract(x=imicola_2004, y=spsample(study_site_alentejo,n=length(imicola_suitability_2004),"random"))
#t Student test
TEST_imicola_2004 <- t.test(x=imicola_suitability_2004, y=RANDOM_imicola_suitability_2004, alternative="greater")



############################# Culicoides dewulfi ###############################



############################ Culicoides pulicaris ##############################



############################ Culicoides obsoletus ##############################
