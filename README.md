# TextSummarization
#A sentences based summary of Articles from Times of India.

#FetchArticle.R
using rvest package in R, performed web scraping and fetched article with headline from TOI's website.Stored it in a local file "document.txt"

#ArticleCleaning.R
Using NLP,openNLP and qdap packages broke down articles into different sentences,removed stop words,pucntuations etc.

#ScoreSentiment.R
created a word-freqency matrix and assigned scores1 to each sentence based on the frqencies of words in that sentence.

[Some more scores need to be calculated further for better algoritmic approach]

