#######################################################
# AZ-Sanger subchallenge 2 scoring functions
#
# Code: Mason M, Menden MP, Wang D, Yu T
# Contributer: Dry J, Guinney J, Saez-Rodriguez J
#######################################################

# observation list to matrix transformation
getObs_ch2 <- function(ls, threshold = F) {
  combi <- unique(ls$COMBINATION_ID)
  cell <- unique(ls$CELL_LINE)
  mat <- matrix(NA, nrow=length(combi), ncol=length(cell),
                dimnames=list(combi, cell))
  for (i in 1:nrow(ls)) 
    mat[as.character(ls$COMBINATION_ID[i]), 
        as.character(ls$CELL_LINE[i])] <- ls$SYNERGY_SCORE[i]
  
  if (is.numeric(threshold)) {
    mat <- signif(mat,3)
    mat[mat < threshold] = 0
    mat[mat >= threshold ] = 1
  }
  
  mat[rownames(mat)=="AKT.AKT",] <- NA # discarding AKT.AKT
  return(mat)
}

getPrimary <- function(obs, pred) { 
  obs <- getObs_ch2(obs)
  pred <- pred[match(row.names(obs),row.names(pred)),]
  pred <- pred[,match(colnames(obs),colnames(pred))]
  
  c0 <- rep(rownames(obs), ncol(obs))
  c1 <- as.vector(matrix(colnames(obs), ncol=ncol(obs), nrow=nrow(obs), byrow=T))
  
  obs <- as.vector(obs)
  pred <- as.vector(pred)
  
  c0 <- c0[!is.na(obs)]
  c1 <- c1[!is.na(obs)]
  pred <- pred[!is.na(obs)]
  obs <- obs[!is.na(obs)]
  
  if(all(pred==0) | all(pred==1))
    return(0)
  
  fit <- aov(obs ~ c0 + c1 + pred)
  pVal <- -log10(anova(fit)['pred','Pr(>F)'])
  
  sign <- 1
  if (sum(!is.na(obs[pred==1])) >0  && sum(!is.na(obs[pred==0]))>0)
    if (mean(obs[pred==1], na.rm=T) < mean(obs[pred==0], na.rm=T))
      sign <- -1
  
  return(sign * pVal)
}

getTieBreak <- function(obs, pred, threshold=20) {
  obs <- getObs_ch2(obs, threshold)
  
  pred <- pred[match(row.names(obs),row.names(pred)),]
  pred <- pred[,match(colnames(obs),colnames(pred))]
  
  pred <- as.numeric(pred)[!is.na(obs)]
  obs <- as.numeric(obs)[!is.na(obs)]
  
  TP <- sum(pred & obs)
  FP <- sum(pred & !obs)
  FN <- sum(!pred & obs)
  TN <- sum(!pred & !obs)
  
  sensitivity <- TP / (TP + FN)
  specificity <- TN / (TN + FP)
  
  return((sensitivity + specificity)/2)
}