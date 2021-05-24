#' Puts the various parts of speech together into a full phrase.
#'
#' @param vec A vector containing random numbers from a distribution
#' @param n The number of items you want to be in the sub sample
#' @param reps The number of repetitions you want the sample mean to be done

#'
#' @return The sample means reps times
#'
#' @import stringr
#' @import tidyverse
#' @import dplyr
#' @import purrr
#'
#' @export


many_sample_means <- function(vec, n, reps) {
  
  x <- replicate(n = reps, expr = sample_mean(vec, n), simplify = FALSE) %>% unlist()
  
  return(x)
  
}

