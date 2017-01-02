#' Unicode Pattern Operators
#'
#' Manipulate and combine Unicode Properties.
#' @param x A character vector containing Unicode General Category or Unicode 
#' Properties. Use the functional forms (\code{ugc_*()}) not the constants.
#' @param y A character vector containing Unicode General Category or Unicode 
#' Properties. Use the functional forms (\code{ugc_*()}) not the constants.
#' @param ... Character vectors containing Unicode General Category or Unicode 
#' Properties. Use the functional forms (\code{ugc_*()}) not the constants.
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
#' unicode_union(ugc_punctuation(), ugc_symbol())
#' 
#' # Everything except "A" to "Z" (including punctuation, control chars etc.)
#' unicode_inverse("[A-Z]")
#' 
#' # Uppercase letters, except "A" to "Z"
#' unicode_setdiff(ugc_uppercase_letter(), "[A-Z]")
#' 
#' # "A" to "F" (in upper or lower case)
#' unicode_intersect(ugc_letter(), up_ascii_hex_digit())
#' 
#' # Usage
#' x <- c(letters, LETTERS)
#' rx <- unicode_intersect(ugc_letter(), up_ascii_hex_digit())
#' stringi::stri_extract_first_regex(x, rx)
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

