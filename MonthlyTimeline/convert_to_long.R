#!/usr/local/bin/Rscript
library(tidyverse)
library(data.table)
library(stringr)


parse_revisions <- function(revision){
  # check for commas in the username
  # if(str_count(revision,",") > 5){
  #   patt <- "(^\\[[0-9]+?, [0-9]+?, [0-9]+?, [0-9]+?, )(.+?)(, .+?\\])"
  #   user_name <- gsub(pattern = patt, replacement = "\\2", x = revision)
  #   user_name <- gsub(pattern = ",", replacement = "", user_name)
  #   revision <- gsub(pattern = patt, replacement = sprintf("\\1%s\\3", user_name), x = revision)
  # }
  
  parts <- strsplit(revision,", ",fixed = TRUE)[[1]]
  if(length(parts) != 6){
    print(revision)
    print(parts)
  }
  parts[1] <- gsub("\\[","",parts[1])
  parts[6] <- gsub("\\]","",parts[6])
  return(matrix(parts, nrow = 1, ncol = 6))
}

parse_timeline <- function(timeline){
  return(regmatches(timeline, gregexpr(pattern = '(\\[.+?\\])+', timeline)))
}

timeline_to_df <- function(timeline){
  revision_list <- parse_timeline(timeline)[[1]]
  tl_df <- as.data.frame(t(sapply(revision_list, parse_revisions, USE.NAMES = FALSE)), stringsAsFactors = FALSE)
  colnames(tl_df) <- c('days_since_creation','time','word_count','minor_flag','user_name','user_id')
  # print(str(tl_df))
  tl_df[,c(1:4)] <- sapply(tl_df[,c(1:4)], as.integer)
  tl_df <- tl_df %>% arrange(days_since_creation,time)
  return(as.data.table(tl_df))
}


dt_raw <- fread('creation_timelines_5yrs.csv', header = TRUE, sep = ',', stringsAsFactors = FALSE)
# head(dt_raw)
str(dt_raw)

df <- data.frame(dt_raw)
# str(df)

# df$creation_datetime <- strptime(df$creation_datetime,format = "%Y-%m-%d %H:%M:%S")
str(df)


total_revisions <-  sum(df$num_revisions)

dt_long <- data.table(article_id = rep(as.integer(0), total_revisions),
                      article_name = rep(' ', total_revisions),
                      creation_datetime = rep(' ', total_revisions),
                      days_since_creation  = rep(as.integer(0), total_revisions),
                      time = rep(as.integer(0), total_revisions),
                      word_count = rep(as.integer(0), total_revisions),
                      minor_flag = rep(as.integer(0), total_revisions),
                      user_name = rep(' ', total_revisions),
                      user_id = rep(' ', total_revisions))

start <- 1L

for(idx in c(1:nrow(df))){
  
  finish <- start + df[idx,"num_revisions"] - 1L
  
  set(dt_long, i = start:finish , j = 1L, value = df[idx,"article_id"])
  set(dt_long, i = start:finish , j = 2L, value = df[idx,"article_name"])
  set(dt_long, i = start:finish , j = 3L, value = df[idx,"creation_datetime"])
  # print(dt_long[1:finish,])
  
  all_revisions <- timeline_to_df(df[idx,"all_revisions"])
  
  set(dt_long, i = start:finish, j = 4L:9L, value = all_revisions)
  
  start <- finish + 1L
  
  if((idx %% 1000) == 0){
    print(sprintf("%d articles processed",idx))
  }
}

fwrite(dt_long, file = "~/Documents/DistributedComp/Wikipedia-Revisions-1000-articleid-sample/timelines_5yrs_long.csv", col.names = TRUE)


