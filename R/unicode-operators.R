#' Unicode Pattern Operators
#'
#' Manipulate and combine Unicode Properties.
#' @param x A character vector containing Unicode General Category or Unicode 
#' Properties.
#' @param y A character vector containing Unicode General Category or Unicode 
#' Properties.
#' @param ... Character vectors containing Unicode General Category or Unicode 
#' Properties.
#' @param char_class \code{TRUE} or \code{FALSE}. Should the values be wrapped
#' into a character class?
#' @note Use these with ICU-based regular expression engines (\code{stringi} and
#' \code{stringr}).
#' @references \url{http://userguide.icu-project.org/strings/unicodeset}
#' @name UnicodeOperators
#' @aliases unicode_operators
#' @examples 
#' # POSIX [:punct:] is more or less equivalent to the union of
#' # Unicode punctuation and symbol general categories
#' unicode_union(UGC_PUNCTUATION, UGC_SYMBOL)
#' 
#' # Everything except "A" to "Z" (including punctuation, control chars etc.)
#' unicode_inverse("[A-Z]")
#' 
#' # Uppercase letters, except "A" to "Z"
#' unicode_setdiff(UGC_UPPERCASE_LETTER, "[A-Z]")
#' 
#' # "A" to "F" (in upper or lower case)
#' unicode_intersect(UGC_LETTER, UP_ASCII_HEX_DIGIT)
NULL

#' @rdname UnicodeOperators
#' @export
unicode_inverse <- function(x, char_class = TRUE)
{
  rebus.base:::wrap_in_char_class(paste0("^", x), char_class = char_class)
}

#' @rdname UnicodeOperators
#' @export
unicode_union <- function(..., char_class = TRUE)
{
  rebus.base:::wrap_in_char_class(paste0(...), char_class = char_class)
}

#' @rdname UnicodeOperators
#' @export
unicode_intersect <- function(x, y, char_class = TRUE)
{
  rebus.base:::wrap_in_char_class(paste0(x, "&", y), char_class = char_class)
}

#' @rdname UnicodeOperators
#' @export
unicode_setdiff <- function(x, y, char_class = TRUE)
{
  rebus.base:::wrap_in_char_class(paste0(x, "-", y), char_class = char_class)
}

