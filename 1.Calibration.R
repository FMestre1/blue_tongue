################################################################################
# MODEL CALIBRATION
################################################################################
#FMestre
#28/07/2022

library(sdm)
#getmethodNames()
#sdm::installAll()

#1. Build Models ###############################################################
obsoletus_COMPLEX_sdm <- sdm::sdm(occurrence ~.,data=data_obsoletus_COMPLEX,methods=c('maxent','cart','rf','fda','glm','gam','mars','svm','brt'),replication='sub',test.percent=30,n=10)
dewulfi_sdm <- sdm::sdm(dewulfi_occ ~.,data=data_dewulfi_gbif,methods=c('maxent','cart','rf','fda','glm','gam','mars','svm','brt'),replication='sub',test.percent=30,n=10)
pulicaris_sdm <- sdm::sdm(occurrence ~.,data=data_pulicaris,methods=c('maxent','cart','rf','fda','glm','gam','mars','svm','brt'),replication='sub',test.percent=30,n=10)
imicola_sdm <- sdm::sdm(occurrence ~.,data=data_imicola,methods=c('maxent','cart','rf','fda','glm','gam','mars','svm','brt'),replication='sub',test.percent=30,n=10)

#Save these models
#save(obsoletus_COMPLEX_sdm, file = "obsoletus_COMPLEX_sdm_17apr24.RData")
#save(dewulfi_sdm, file = "dewulfi_sdm_17apr24.RData")
#save(pulicaris_sdm, file = "pulicaris_sdm_17apr24.RData")
#save(imicola_sdm, file = "imicola_sdm_17apr24.RData")

#2. Model metrics and variable importance ######################################
#brevitasis
getModelInfo(obsoletus_COMPLEX_sdm)
getVarImp(obsoletus_COMPLEX_sdm)
plot(getVarImp(obsoletus_COMPLEX_sdm),'auc')
rcurve(obsoletus_COMPLEX_sdm, id=, mean=TRUE, smooth=TRUE)
ev_metrics_obsoletus_COMPLEX_sdm <- getEvaluation(obsoletus_COMPLEX_sdm,stat=c('TSS','Kappa','AUC', 'specificity', 'sensitivity'),opt="max(se+sp)")
mean_ev_obsoletus_COMPLEX_sdm <- as.data.frame(round(colMeans(x=ev_metrics_obsoletus_COMPLEX_sdm),3))
#
#dewulfi
getModelInfo(dewulfi_sdm)
getVarImp(dewulfi_sdm)
plot(getVarImp(dewulfi_sdm),'auc')
rcurve(dewulfi_sdm, id=, mean=TRUE, smooth=TRUE)
ev_metrics_dewulfi_sdm <- getEvaluation(dewulfi_sdm,stat=c('TSS','Kappa','AUC', 'specificity', 'sensitivity'),opt="max(se+sp)")
mean_ev_metrics_dewulfi_sdm <- as.data.frame(round(colMeans(x=ev_metrics_dewulfi_sdm),3))
#
#pulicaris
getModelInfo(pulicaris_sdm)
getVarImp(pulicaris_sdm)
plot(getVarImp(pulicaris_sdm),'auc')
rcurve(pulicaris_sdm, id=, mean=TRUE, smooth=TRUE)
ev_metrics_pulicaris_sdm <- getEvaluation(pulicaris_sdm,stat=c('TSS','Kappa','AUC', 'specificity', 'sensitivity'),opt="max(se+sp)")
mean_ev_metrics_pulicaris_sdm <- as.data.frame(round(colMeans(x=ev_metrics_pulicaris_sdm),3))
#
#imicola
getModelInfo(imicola_sdm)
getVarImp(imicola_sdm)
plot(getVarImp(imicola_sdm),'auc')
rcurve(imicola_sdm, id=, mean=TRUE, smooth=TRUE)
ev_metrics_imicola_sdm <- getEvaluation(imicola_sdm,stat=c('TSS','Kappa','AUC', 'specificity', 'sensitivity'),opt="max(se+sp)")
mean_ev_metrics_imicola_sdm <- as.data.frame(round(colMeans(x=ev_metrics_imicola_sdm),3))

################################################################################

#Create table 1 - Average adjustment metrics for each of the ensemble models: 
#AUC - Area under the ROC Curve; TSS - True Skill Statistics.

table1 <- data.frame(
t(mean_ev_metrics_imicola_sdm)[,-1],
t(mean_ev_metrics_dewulfi_sdm)[,-1],
t(mean_ev_metrics_pulicaris_sdm)[,-1],
t(mean_ev_metrics_obsoletus_sdm)[,-1]
)

table1 <- t(table1)

rownames(table1) <- c("C. imicola", "C. dewulfi", "C. pulicaris", "C. obsoletus complex")

#write
#write.csv(table1, "table1.csv")

################################################################################

#Create table 2 - Variable importance based on AUC across ensemble models (in %).

imicola_sdm_varimp <- getVarImp(imicola_sdm)


pulicaris_sdm_varimp <- getVarImp(pulicaris_sdm)
pulicaris_sdm_varimp@variables

dewulfi_sdm_varimp <- getVarImp(dewulfi_sdm)
dewulfi_sdm_varimp@variables

obsoletus_sdm_varimp <- getVarImp(obsoletus_COMPLEX_sdm)
obsoletus_sdm_varimp@variables


table2 <- data.frame(
  imicola_sdm_varimp@varImportanceMean$corTest$corTest *100,
  dewulfi_sdm_varimp@varImportanceMean$corTest$corTest *100,
  pulicaris_sdm_varimp@varImportanceMean$corTest$corTest *100,
  obsoletus_sdm_varimp@varImportanceMean$corTest$corTest *100
  )

table2 <- t(table2)
rownames(table2) <- c("C. imicola", "C. dewulfi", "C. pulicaris", "C. obsoletus complex")
colnames(table2) <- imicola_sdm_varimp@variables
table2 <- round(table2, 1)

#write
#write.csv(table2, "table2.csv")

#3. Save #######################################################################
#save.image("blue_tongue.RData")
