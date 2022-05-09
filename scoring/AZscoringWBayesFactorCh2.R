#######################################################
## AZ drug combination challenge 2
## contains parallelized execution for Bayes Factor 
## hard coded path to true test obs will need to be changed 
## number of cores in makeCluster will need to be changed depending on system 
## Code: Mason M, Menden MP, Wang D, Yu T
## Contributer: Dry J, Guinney J, Saez-Rodriguez J
#######################################################

rm(list=ls())
library(parallel)
library(data.table)
library(ppcor)
library(synapseClient)
library(plyr)
library("ROCR")
library("MatrixModels")

synapseLogin()

## load submission via file path (after downloading from synapse)
loadSubmission = function(x) # x is zipped file path
{
  cmd = paste('unzip -o \'',x,'\' -d \'', gsub('\\.zip$','',x),'\'',sep="")
  system(cmd)
  conf = read.csv(paste(gsub('\\.zip$','',x),'/confidence_matrix.csv',sep=""),row.names=1)
  pred = read.csv(paste(gsub('\\.zip$','',x),'/synergy_matrix.csv',sep=""),row.names=1)
  
  conf =  conf[order(rownames(conf)),]; conf =  conf[,order(colnames(conf))]; colnames(conf) = gsub("\\.","-",colnames(conf)); colnames(conf) = gsub("^X","",colnames(conf))
  pred =  pred[order(rownames(pred)),]; pred =  pred[,order(colnames(pred))]; colnames(pred) = gsub("\\.","-",colnames(pred)); colnames(pred) = gsub("^X","",colnames(pred))
  return(list("conf"=conf,"pred"=pred))
}

## get the subchallenge 2 predictions from each team submission (and confidence scores) from synapse, use only the newest submission foe each team
e           <- synGetEvaluation(4990389)
submissions <- synGetSubmissions(e@id, status='SCORED')
submissions <- synGetSubmissions(e@id, status='SCORED', limit = submissions@totalNumberOfResults)
subIds      <- sapply(submissions@results,function(x){x$id})
usrIds      <- sapply(submissions@results,function(x){x$userId})
teamIds     <- sapply(submissions@results,function(x){x$teamId})
teamIds[sapply(teamIds, length) == 0] <- usrIds[sapply(teamIds, length) == 0]
teams       <- unlist(teamIds)
dups        <- unique(teams[duplicated(teams)])
keep        <- rep(T,length(subIds)); keep[teamIds %in% dups] <- F;
for(d in dups){dInds <- which(teamIds == d); keep[dInds[length(dInds)]] = T}
subIds      <- subIds[keep]
teamNames   <- sapply(subIds, function(x){synRestGET(sprintf("/evaluation/submission/%s/status", x))$annotations$stringAnnos[[1]]$value})

dat         <- lapply(subIds, function(x){print(paste("getting",x));synGetSubmission(x, downloadFile = T)})
fLocs2      <- sapply(dat,getFileLocation);
subData2    <- lapply(fLocs2, loadSubmission)


## get the true observations
obs          <- as.data.frame(fread("~/SageData/AZdrugComboDream/ch2_test.csv"))
obs          <- obs[, c("CELL_LINE", "COMBINATION_ID", "SYNERGY_SCORE")]
obs          <- obs[order(obs$COMBINATION_ID, obs$CELL_LINE),]
obs          <- obs[!obs$COMBINATION_ID == "AKT.AKT",] # filtering out self drug combo that results in NA values

## format the predictions
formatLikeObs <- function(x, y)
{
  calls  <- as.vector(unlist(x)); if(any(is.na(calls))){print(paste(sum(is.na(calls)), "predictions labled NA"))}
  calls[is.na(calls)] <- 0
  combos <- rep(rownames(x), ncol(x))
  cells  <- unlist(lapply(colnames(x), function(a){rep(a, nrow(x))}))
  df     <- data.frame(CELL_LINE = cells, COMBINATION_ID = combos, SYNERGY_SCORE = calls)
  df = df[match(paste(y$CELL_LINE,y$COMBINATION_ID,SEP="_"),paste(df$CELL_LINE,df$COMBINATION_ID,SEP="_")),]
  return(df[,3])
}

preds2        <- lapply(subData2, function(x){formatLikeObs(x[[2]],obs)}) 
confs2        <- lapply(subData2, function(x){formatLikeObs(x[[1]],obs)}) 
names(preds2) <- gsub("^.*/|\\.zip$","",fLocs2); names(confs2) <- names(preds2)
preds2        <- as.data.frame(preds2)
confs2        <- as.data.frame(confs2)

########################################################################################################
## with the data loaded and predictions in a single data frame, scoring metrics function is parallelized 
## for determining Bayes factor
########################################################################################################

# --------------------------------------------------------------------------------------------
# main scoring function that enable parallelzation
# iteration number (iter) and indices (INDs) use as flags in addition to their main purpose
# --------------------------------------------------------------------------------------------

computeScores = function(iter=NA,INDs=NA,PREDS,OBS, bootStrap=F)
{
  if(!is.na(iter))
  {
    if(bootStrap == T){ PREDS = PREDS[INDs[,iter],]; }
    OBS  = OBS[INDs[,iter],]; 
    nr   = nrow(read.csv("./progressFile.csv"))/ncol(INDs); # for tracking progress
    print(paste(iter,": ", signif(nr,3),sep = ""))
  }
     
  resp       <- as.numeric(OBS$SYNERGY_SCORE)
  cl         <- as.factor(OBS$CELL_LINE)
  combo      <- as.factor(OBS$COMBINATION_ID)
  primary    <- apply(PREDS,2,function(X){X = as.integer(X); temp = coefficients(summary(lm(resp~0+cl+combo+X)));p = temp[rownames(temp) == "X",4];if(length(p)==0){return(0);}else{return(-log10(p))} }); # 3-way anova
  
  pos        <- resp > 20
  tieBreaker <- apply(PREDS,2,function(X){sens = sum(X==1 & pos)/sum(pos); spec = sum(X == 0 & !pos)/sum(!pos); return(mean(c(sens,spec)))})
  
  return(data.frame(primary=unlist(primary), tieBreaker))
}

# --------------------------------------------------------------------------------------------
# score challenge 2 submissions
# --------------------------------------------------------------------------------------------
ch2Scores           = computeScores(NA, NA,PREDS=preds2, OBS=obs)

# Bootstrapped scoring for computing Bayes factor
N        <- 1000 
RUN      <- F # time consuming so only run it if necessary (ie set RUN to T)
if(RUN)
{
  cl       <- makeCluster(10,outfile='~/SageCode/progressFile.csv') # for tracking progress in shell, use "> watch tail -n 20 progressFile.csv"
  clusterEvalQ(cl,library(plyr))                                    # ensure each not has plyr package 
  set.seed(13)                                                      # set seed for repeatablity

  write.csv(matrix(,0,1), file = "~/SageCode/progressFile.csv", row.names=F,quote=F, col.names=F) # for tracking progress
  bsPermInds  <- matrix(1:nrow(obs), nrow(obs), N)                  # permutation via indices by using matrix
  bsPermInds  <- data.frame(apply(bsPermInds,2,sample, replace=T))
  bsScores2   <- parLapply(cl,X= as.list(1:ncol(bsPermInds)), fun = computeScores, INDs = bsPermInds,PREDS=preds2, OBS = obs,bootStrap=T)

  stopCluster(cl)
  save(bsScores2, list=c('bsScores2'), file = "~/SageData/bsScores2.Rdat")
}
else
{
  load(file = "~/SageData/bsScores2.Rdat")
}

# compute Bayes Factor using the best primary score and boostrapped values above
bestI <- which(ch2Scores[,1] == max(ch2Scores[,1]))
M     <- as.data.frame(lapply(bsScores2,function(x){x[bestI,1] - x[,1]}))
BF2   <- apply(M,1,function(x){sum(x>0)/sum(x<=0)})

# format and output
ch2Scores$BayesFactor <- BF2; rownames(ch2Scores) <- teamNames;
ch2Scores             <- ch2Scores[order(ch2Scores$primary, decreasing=T),]
write.csv(ch2Scores, file = "~/SageOutput/AZdrugComboDream/AZchallenge2finalScores.csv")







