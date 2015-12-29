simpleWordList <- unlist(SentencesAfterStopwords,recursive = TRUE)
WordFreqMatrix <- wfm(simpleWordList,output = "raw")

ArticleScores1 <- vector(mode = "numeric",length = length(SentencesAfterStopwords))

for(i in 1:(length(SentencesAfterStopwords))){
  
  
  for(j in 1:length(SentencesAfterStopwords[[i]]))
  {
    ArticleScores1[i]<-ArticleScores1[i] +WordFreqMatrix[SentencesAfterStopwords[[i]][j],]
  }
  ArticleScores1[i] <- ArticleScores1[i]/length(SentencesAfterStopwords[[i]])
  
  
}
