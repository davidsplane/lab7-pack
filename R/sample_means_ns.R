#' Puts the various parts of speech together into a full phrase.
#'
#' @param vec A vector containing random numbers from a distribution
#' @param ns The numbers of items you want to be in the sub sample, in a vector
#' @param reps The number of repetitions you want the sample mean to be done

#'
#' @return A data frame with the sample means reps times, with corresponding n
#'
#' @import stringr
#' @import tidyverse
#' @import dplyr
#' @import purrr
#'
#' @export


sample_means_ns <- function(vec, reps, ns) {
  
  x <- as.data.frame(map(ns, ~many_sample_means(vec = vec, n = ., reps = reps)),
                     col.names = as.numeric(ns)) %>% rowid_to_column(var = "rowid")
  
  y <- x %>% pivot_longer(
    
    cols = !rowid,
    names_to = "sample mean"
    
  )
  
  return(y)
  
}

