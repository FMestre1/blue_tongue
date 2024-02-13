################################################################################
# UINCERTAINTY ANALYSIS
################################################################################
#fmESTRE
#12-02-2024

#devtools::install_github('babaknaimi/sdm')

en <- ensemble(m, preds, setting=list(method=c('weighted','uncertainty', 'stdev','ci'), 
                                      stat='auc')) 
# generates 4 outputs including weighted average of predictions, 
#model-based uncertainty, standard deviation of predicted probabilities, 
#and confidence interval length (upper limit - lower limit)





