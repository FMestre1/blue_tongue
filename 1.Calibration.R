#FMestre
#28/07/2022

getmethodNames()

#6. Build Models
obsoletus_COMPLEX_sdm <- sdm::sdm(species_occ ~.,data=data_obsoletus_COMPLEX_gbif,methods=c('maxent','cart','rf','fda','glm','gam','mars','svm','brt'),replication='sub',test.percent=30,n=10)
#brevitasis_sdm <- sdm::sdm(brevitasis_occ ~.,data=data_brevitasis_gbif,methods=c('maxent','cart','rf','fda','glm','gam','mars','svm','brt'),replication='sub',test.percent=30,n=10)
dewulfi_sdm <- sdm::sdm(dewulfi_occ ~.,data=data_dewulfi_gbif,methods=c('maxent','cart','rf','fda','glm','gam','mars','svm','brt'),replication='sub',test.percent=30,n=10)
pulicaris_sdm <- sdm::sdm(pulicaris_occ ~.,data=data_pulicaris_gbif,methods=c('maxent','cart','rf','fda','glm','gam','mars','svm','brt'),replication='sub',test.percent=30,n=10)
#obsoletus_sdm <- sdm::sdm(obsoletus_occ ~.,data=data_obsoletus_gbif,methods=c('maxent','cart','rf','fda','glm','gam','mars','svm','brt'),replication='sub',test.percent=30,n=10)
#imicola_sdm <- sdm::sdm(imicola_occ ~.,data=data_imicola_gbif,methods=c('maxent','cart','rf','fda','glm','gam','mars','svm','brt'),replication='sub',test.percent=30,n=10)
imicola_leta_et_al_sdm <- sdm::sdm(imicola_occ ~.,data=data_imicola_Leta_et_al,methods=c('maxent','cart','rf','fda','glm','gam','mars','svm','brt'),replication='sub',test.percent=30,n=10)

# 7.Model metrics and variable importance
#brevitasis
getModelInfo(obsoletus_COMPLEX_sdm)
getVarImp(obsoletus_COMPLEX_sdm)
plot(getVarImp(obsoletus_COMPLEX_sdm),'auc')
rcurve(obsoletus_COMPLEX_sdm, id=, mean=TRUE, smooth=TRUE)
ev_metrics_obsoletus_COMPLEX_sdm <- getEvaluation(obsoletus_COMPLEX_sdm,stat=c('TSS','Kappa','AUC', 'specificity', 'sensitivity'),opt="max(se+sp)")
mean_ev_obsoletus_COMPLEX_sdm <- as.data.frame(round(colMeans(x=ev_metrics_obsoletus_COMPLEX_sdm),3))
#
#brevitasis
#getModelInfo(brevitasis_sdm)
#getVarImp(brevitasis_sdm)
#plot(getVarImp(brevitasis_sdm),'auc')
#rcurve(brevitasis_sdm, id=, mean=TRUE, smooth=TRUE)
#ev_metrics_brevitasis_sdm <- getEvaluation(brevitasis_sdm,stat=c('TSS','Kappa','AUC', 'specificity', 'sensitivity'),opt="max(se+sp)")
#mean_ev_metrics_brevitasis_sdm <- as.data.frame(round(colMeans(x=ev_metrics_brevitasis_sdm),3))
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
#obsoletus
#getModelInfo(obsoletus_sdm)
#getVarImp(obsoletus_sdm)
#plot(getVarImp(obsoletus_sdm),'auc')
#rcurve(obsoletus_sdm, id=, mean=TRUE, smooth=TRUE)
#ev_metrics_obsoletus_sdm <- getEvaluation(obsoletus_sdm,stat=c('TSS','Kappa','AUC', 'specificity', 'sensitivity'),opt="max(se+sp)")
#mean_ev_metrics_obsoletus_sdm <- as.data.frame(round(colMeans(x=ev_metrics_obsoletus_sdm),3))
#
#imicola
getModelInfo(imicola_leta_et_al_sdm)
getVarImp(imicola_leta_et_al_sdm)
plot(getVarImp(imicola_leta_et_al_sdm),'auc')
rcurve(imicola_leta_et_al_sdm, id=, mean=TRUE, smooth=TRUE)
ev_metrics_imicola_sdm <- getEvaluation(imicola_leta_et_al_sdm,stat=c('TSS','Kappa','AUC', 'specificity', 'sensitivity'),opt="max(se+sp)")
mean_ev_metrics_obsoletus_sdm <- as.data.frame(round(colMeans(x=ev_metrics_imicola_sdm),3))
#

#Save
save.image("blue_tongue.RData")
