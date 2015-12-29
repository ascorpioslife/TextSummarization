library(rvest)
library(tm)
ArticleURL <- "http://timesofindia.indiatimes.com/india/DDCA-row-AAP-poses-5-questions-to-Jaitley/articleshow/50233827.cms"
ArticleHTML <- html(ArticleURL)
ArticleHTMLNode <- html_nodes(ArticleHTML,".Normal")
HeadingHTMLNode <- html_nodes(ArticleHTML,".heading1")
ArticleText <- html_text(ArticleHTMLNode)
HeadingText <- html_text(HeadingHTMLNode)

fileConn <- file("document.txt")
writeLines(c(HeadingText,ArticleText),fileConn)