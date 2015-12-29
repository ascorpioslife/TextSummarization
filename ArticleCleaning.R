library(openNLP)
library(NLP)
library(qdap)
convert_text_to_sentences <- function(text, lang = "en") {
  # Function to compute sentence annotations using the Apache OpenNLP Maxent sentence detector employing the default model for language 'en'. 
  sentence_token_annotator <- Maxent_Sent_Token_Annotator(language = lang)
  
  # Convert text to class String from package NLP
  text <- as.String(text)
  
  # Sentence boundaries in text
  sentence.boundaries <- annotate(text, sentence_token_annotator)
  
  # Extract sentences
  sentences <- text[sentence.boundaries]
  
  # return sentences
  return(sentences)
}
Sentences <- convert_text_to_sentences(ArticleText,"en")
SentencesStriped <- strip(Sentences,digit.remove = TRUE,apostrophe.remove = TRUE,lower.case = TRUE)
SentencesAfterStopwords <- qdap::rm_stopwords(SentencesStriped,tm::stopwords("english"))
headingStriped <- strip(HeadingText,digit.remove = TRUE,apostrophe.remove = TRUE,lower.case = TRUE)
headingAfterStopwords <- qdap::rm_stopwords(headingStriped,tm::stopwords("english"))