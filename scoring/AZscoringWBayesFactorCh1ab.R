#######################################################
## AZ drug combination challenge 1 (A and B)
## contains parallelized execution for Bayes Factor 
## hard coded path to true test obs will need to be changed 
## number of cores in makeCluster will need to be changed depending on system 
## Code: Mason M, Menden MP, Wang D, Yu T
## Contributer: Dry J, Guinney J, Saez-Rodriguez J
#######################################################
rm(list=ls()); gc()
library(parallel)
library(data.table)
library(ppcor)
library(synapseClient)
library(plyr)

synapseLogin()

## load submission via file path (after downloading from synapse)
loadSubmission = function(x) # x is zipped file path
{
  system(paste('unzip -o \'',x,'\' -d \'', gsub('\\.zip$','',x),'\'',sep=""))
  return(read.csv(paste(gsub('\\.zip$','',x),'/prediction.csv',sep="")))
}

## get the subchallenge 1A predictions from each team submission, use only newest submission
e           <- synGetEvaluation(4990391)
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
teamNamesA  <- sapply(subIds, function(x){synRestGET(sprintf("/evaluation/submission/%s/status", x))$annotations$stringAnnos[[1]]$value})
dat         <- lapply(subIds, function(x){print(paste("getting",x));synGetSubmission(x, downloadFile = T)})
fLocs1A     <- sapply(dat,getFileLocation);
subData1A   <- lapply(fLocs1A, loadSubmission)


## get the subchallenge 1B predictions from each team submission, use only newest submission
e           <- synGetEvaluation(4990393)
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
teamNamesB  <- sapply(subIds, function(x){synRestGET(sprintf("/evaluation/submission/%s/status", x))$annotations$stringAnnos[[1]]$value})
dat         <- lapply(subIds, function(x){print(paste("getting",x));synGetSubmission(x, downloadFile = T)})
fLocs1B     <- sapply(dat,getFileLocation); 
subData1B   <- lapply(fLocs1B, loadSubmission)

## get the true observations
obs          <- as.data.frame(fread("~/SageData/AZdrugComboDream/ch1_test.csv"))
obs          <- obs[, c("CELL_LINE", "COMBINATION_ID", "SYNERGY_SCORE")]
obs          <- obs[order(obs$COMBINATION_ID, obs$CELL_LINE),]
obs$SYNERGY_SCORE <- as.numeric(obs$SYNERGY_SCORE)

## subset the 1A predicitions and confidence scores to those that are in the final test set
preds1A        <- lapply(subData1A, function(X){X = X[order(X$COMBINATION_ID, X$CELL_LINE),]; return(as.numeric(X$PREDICTION))}) 
comboIds       <- sort(as.character(subData1A[[1]]$COMBINATION_ID)); # necessary since some files only have subset of drugcombo confidences (should have been caught by validation script)
names(preds1A) <- gsub("^.*/|\\.zip$","",fLocs1A);
preds1A        <- as.data.frame(preds1A)
cellNcombo     <- subData1A[[1]][, 1:2]; cellNcombo = cellNcombo[order(cellNcombo$COMBINATION_ID, cellNcombo$CELL_LINE),]

preds1A$COMBINATION_ID <- cellNcombo$COMBINATION_ID
preds1A$CELL_LINE      <- cellNcombo$CELL_LINE
preds1A                <- preds1A[match(paste(obs$CELL_LINE, obs$COMBINATION_ID), paste(preds1A$CELL_LINE, preds1A$COMBINATION_ID)),]
preds1A                <- preds1A[,1:(ncol(preds1A)-2)]

## subset the 1B predicitions and confidence scores to those that are in the final test set
preds1B        <- lapply(subData1B, function(X){X = X[order(X$COMBINATION_ID, X$CELL_LINE),]; return(as.numeric(X$PREDICTION))}) 
comboIds       <- sort(as.character(subData1B[[1]]$COMBINATION_ID)); # necessary since some files only have subset of drugcombo confidences (should have been caught by validation script)
names(preds1B) <- gsub("^.*/|\\.zip$","",fLocs1B);
preds1B        <- as.data.frame(preds1B)
cellNcombo     <- subData1B[[1]][, 1:2]; cellNcombo = cellNcombo[order(cellNcombo$COMBINATION_ID, cellNcombo$CELL_LINE),]

preds1B$COMBINATION_ID <- cellNcombo$COMBINATION_ID
preds1B$CELL_LINE      <- cellNcombo$CELL_LINE
preds1B                <- preds1B[match(paste(obs$CELL_LINE, obs$COMBINATION_ID), paste(preds1B$CELL_LINE, preds1B$COMBINATION_ID)),]
preds1B                <- preds1B[,1:(ncol(preds1B)-2)]

### primary and tie-breaking scorining

computeScores = function(INDs=NA,dat) # INDs are for parallelized bootstrapping when needed
{
  if(!is.na(INDs)){dat = dat[INDs,]}
  R           <- t(as.data.frame(dlply(dat, "COMBINATION_ID", function(x){return(cor(x[,4:ncol(x)],x$SYNERGY_SCORE,))})))
  R[is.na(R)] <- 0
  N           <- table(dat$COMBINATION_ID)
  obsMax      <- ddply(dat, "COMBINATION_ID", function(x){max(x$SYNERGY_SCORE)})
  tInds       <- obsMax[,2] > 20

  primary     <- apply(R, 2, function(x){sum(x*sqrt(N-1))/sum(sqrt(N-1))})
  tieBreaker  <- apply(R, 2, function(x){sum((x*sqrt(N-1))[tInds])/sum(sqrt(N-1)[tInds])})

  return(data.frame(primary, tieBreaker))
}

dat1A              <- as.data.frame(cbind(obs, preds1A))
dat1B              <- as.data.frame(cbind(obs, preds1B))
scores1A           <- computeScores(dat=dat1A)
scores1B           <- computeScores(dat=dat1B)

# parallelized bootstrapped scoring
N        <- 1000 # number of samples

cl       <- makeCluster(10)    # cluster set up with 10 nodes
clusterEvalQ(cl,library(plyr)) # supply each node with plyr package since computeScores function uses it
set.seed(13)                   # set seed for repeatability

allPermInds   <- matrix(1:nrow(obs), nrow(obs), N) # permutation via indices by using matrix
allPermInds   <- data.frame(apply(allPermInds,2,sample, replace=T))
bsScores1A    <- parLapply(cl,X= allPermInds, fun = computeScores, dat=dat1A)
bsScores1B    <- parLapply(cl,X= allPermInds, fun = computeScores, dat=dat1B)

stopCluster(cl)


## compute Bayes Factor using the best primary score
bestI <- which(scores1A$primary == max(scores1A$primary)) # index of team with highest primary score
M     <- as.data.frame(lapply(bsScores1A,function(x){x$primary[bestI] - x$primary}))
BF1A  <- apply(M,1,function(x){sum(x>0)/sum(x<=0)})

bestI <- which(scores1B$primary == max(scores1B$primary)) # index of team with highest primary score
M     <- as.data.frame(lapply(bsScores1B,function(x){x$primary[bestI] - x$primary}))
BF1B  <- apply(M,1,function(x){sum(x>0)/sum(x<=0)})

# format for output and write out
scores1A$BayesFactor <- BF1A; rownames(scores1A) <- teamNamesA
scores1A <- scores1A[order(scores1A$primary,decreasing=F),]
write.csv(scores1A, file = "~/SageOutput/AZdrugComboDream/AZchallenge1AfinalScores.csv")

scores1B$BayesFactor <- BF1B; rownames(scores1B) <- teamNamesB
scores1B <- scores1B[order(scores1B$primary,decreasing=F),]
write.csv(scores1B, file = "~/SageOutput/AZdrugComboDream/AZchallenge1BfinalScores.csv")






