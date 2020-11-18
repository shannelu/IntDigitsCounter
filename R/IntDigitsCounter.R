#' Count Numbers of Individual Integer Digits in a Vector
#'
#' @param x A numeric vector.
#' @param na.rm A logical input indicating whether missing values should be removed before the computation proceeds.
#' @param verbose A logical input indicating whether keeps the user up-to-date with messages that print to screen as the function is running.
#' @param ... Other arguments passed on to methods.
#'
#' @return
#' A vector containing the numbers of integer digits of each number in input.
#' @export
#'
#' @examples
#' DigitCounter_single(43458.99, verbose=TRUE)
#' DigitCounter(c(0.123, 1, -245, 4308.99), na.rm = FALSE)
DigitCounter <- function(x, na.rm = TRUE, verbose = FALSE, ...) {
  if(na.rm) x <- na.omit(x)  # remove missing value if na.rm is TRUE
  map_dbl(x, ~ DigitCounter_single(.x, na.rm = na.rm, verbose = verbose))
}
