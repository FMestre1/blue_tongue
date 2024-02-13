################################################################################
# MODEL CALIBRATION
################################################################################
#FMestre
#28/07/2022

library(sdm)
getmethodNames()
installAll()

#1. Build Models ###############################################################
obsoletus_COMPLEX_sdm <- sdm::sdm(occurrence ~.,data=data_obsoletus_COMPLEX,methods=c('maxent','cart','rf','fda','glm','gam','mars','svm','brt'),replication='sub',test.percent=30,n=10)
dewulfi_sdm <- sdm::sdm(dewulfi_occ ~.,data=data_dewulfi_gbif,methods=c('maxent','cart','rf','fda','glm','gam','mars','svm','brt'),replication='sub',test.percent=30,n=10)
pulicaris_sdm <- sdm::sdm(occurrence ~.,data=data_pulicaris,methods=c('maxent','cart','rf','fda','glm','gam','mars','svm','brt'),replication='sub',test.percent=30,n=10)
imicola_sdm <- sdm::sdm(occurrence ~.,data=data_imicola,methods=c('maxent','cart','rf','fda','glm','gam','mars','svm','brt'),replication='sub',test.percent=30,n=10)

#Save these models
#save(obsoletus_COMPLEX_sdm, file = "obsoletus_COMPLEX_sdm.RData")
#save(dewulfi_sdm, file = "dewulfi_sdm.RData")
#save(pulicaris_sdm, file = "pulicaris_sdm.RData")
#save(imicola_sdm, file = "imicola_sdm.RData")

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
mean_ev_metrics_obsoletus_sdm <- as.data.frame(round(colMeans(x=ev_metrics_imicola_sdm),3))

#3. Save #######################################################################
save.image("blue_tongue.RData")
