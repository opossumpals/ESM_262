

fish_summary = function(fish) {
  
  fish_fact = as.factor(fish) # factor so you can get numeric values to work with 
  fish_sum = summary(fish_fact) # summary of fish 
  uncommon_fish = names(which.min(fish_sum)) # uncommon fish
  common_fish = names(which.max(fish_sum)) # common fish 
  nfish=length(fish) # number of fish 
  
  return(list(uncommon_fish=uncommon_fish, common_fish=common_fish, nfish=nfish))
  
}






