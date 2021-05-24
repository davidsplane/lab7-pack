#' Puts the various parts of speech together into a full phrase.
#'
#' @param vec A vector containing random numbers from a distribution
#' @param n The number of items you want to be in the sub sample

#'
#' @return The mean of the sub sample taken .
#'
#' @import stringr
#' @import tidyverse
#' @import dplyr
#' @import purrr
#'
#' @export


sample_mean <- function(vec, n) {
  
  sampl <- sample(vec, size = n, replace = T) 
  
  returnmean <- mean(sampl)
  
  return(returnmean)
  
}

