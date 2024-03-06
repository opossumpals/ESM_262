#' Fish catch data
#'
#' Data on a catch of fish from Santa Barbara
#'
#' @format A dataframe with 100 rows 1 column
#' \itemize{
#'   \item fish name
#'   }
#'@source \url{http://www.sblter.ed/}
"fish"


#library(tidyverse)

#possible.fish = c("salmon","steelhead","shark","tuna","cod") # this is always the same 

#fish_summary <- function(fish) {
#ndays=10 # days sampled 
#catches = round(runif(min=3, max=400, n=ndays)) # sample of catches 
#catch = sample(x = possible.fish, size=catches[1], replace=TRUE) # pmap does this multiple times 
#catches_res <- list(catches) %>%  pmap(sample, x=possible.fish, replace=TRUE) # pmap passes it through the function 
#} 

#fish_summary(catch_res[[1]]) 

#res = catches_res %>%  map_df(fish_summary)
#res = map(catches_res, fish_summary)


# pmap over multiple inputs 
# map over lists 




fish_summary = function(fish) {
  
  fish_fact = as.factor(fish) # factor so you can get numeric values to work with 
  fish_sum = summary(fish_fact) # summary of fish 
  uncommon_fish = names(which.min(fish_sum)) # uncommon fish
  common_fish = names(which.max(fish_sum)) # common fish 
  nfish=length(fish) # number of fish 
  
  return(list(uncommon_fish=uncommon_fish, common_fish=common_fish, nfish=nfish))
  
}






