#######################################################
# AZ-Sanger Challenge 1 scoring functions
#
# Code: Mason M, Menden MP, Wang D, Yu T
# Contributer: Dry J, Guinney J, Saez-Rodriguez J
#######################################################
getPrimary <- function(obs, pred) {
  pred <- pred[match(paste(obs$CELL_LINE,obs$COMBINATION_ID),paste(pred$CELL_LINE,pred$COMBINATION_ID)),]
  pred$COMBINATION_ID <- gsub(" ", "", pred$COMBINATION_ID)
  R <- c()
  w <- c()
  for (i in as.character(unique(obs$COMBINATION_ID))) {
    n <- sum(obs$COMBINATION_ID == i)
    if (var(pred[pred$COMBINATION_ID == i, 'PREDICTION'])==0 && n>1) {
      R <- c(R, 0)
      w <- c(w, sqrt(n-1))
    } else if (n>1) {
      R <- c(R, sqrt(n-1) * cor(obs[obs$COMBINATION_ID == i, 'SYNERGY_SCORE'], 
                    pred[pred$COMBINATION_ID == i, 'PREDICTION']))
      w <- c(w, sqrt(n-1))
    }
  }
  return(sum(R)/sum(w))
}

getTieBreak <- function(obs, pred) {
  maxCor <- aggregate(obs$SYNERGY_SCORE, list(combination_id=obs$COMBINATION_ID), max)
  synCombi <- as.character(maxCor$combination_id[maxCor$x>=20])
  getPrimary(obs[obs$COMBINATION_ID %in% synCombi,], pred[pred$COMBINATION_ID %in% synCombi,])
}
