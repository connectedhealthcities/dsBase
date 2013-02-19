#' Summary with length constraint.
#'
#' @param data vector of data
#' @export
#' 
summary <- function(data) {
  if(is.atomic(data)) {
    if(length(data) <= 1) {
      "Vector too small."
    } else {
      base::summary(data);
    }
  } else if(is.recursive(data)) {
    base::summary.default(data);
  }
}

#' Mean with NA values stripped before computation proceeds.
#'
#' @param a R object
#' @export
#' 
mean <- function (a) {
  base::mean(a,na.rm=TRUE)
}
