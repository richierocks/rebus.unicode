#' Unicode Pattern Operators
#'
#' Manipulate and combine Unicode Properties.
#' @param x A string containing a Unicode General Category or Unicode Property.
#' @param y A string containing a Unicode General Category or Unicode Property.
#' @note Use these with ICU-based regular expression engines (\code{stringi} and
#' \code{stringr}).
#' @references \url{http://userguide.icu-project.org/strings/unicodeset}
#' @name UnicodeOperators
#' @aliases unicode_operators
NULL

#' @rdname UnicodeOperators
#' @export
unicode_inverse <- function(x)
{
  regex("^", x)
}

#' @rdname UnicodeOperators
#' @export
unicode_union <- function(x, y)
{
  regex(x, y)
}

#' @rdname UnicodeOperators
#' @export
unicode_intersect <- function(x, y)
{
  regex(x, "&", y)
}

#' @rdname UnicodeOperators
#' @export
unicode_setdiff <- function(x, y)
{
  regex(x, "-", y)
}

