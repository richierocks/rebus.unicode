#' @include imports.R
NULL

#' Unicode General Categories
#' 
#' Match a Unicode General Category.
#' @param lo A non-negative integer. Minimum number of repeats, when grouped.
#' @param hi positive integer. Maximum number of repeats, when grouped.
#' @param char_class \code{TRUE} or \code{FALSE}. Should the values be wrapped
#' into a character class?
#' @return A character vector representing part or all of a regular expression.
#' @references Table 12 of the Unicode Standard Annex #44 defines the Unicode
#' General Categories.
#' \url{http://www.unicode.org/reports/tr44}
#' 
#' You can see which characters are contained in a category by visiting, e.g.,
#' \url{http://www.fileformat.info/info/unicode/category/Nd/list.htm}
#' @seealso \code{\link{unicode_property}}, \code{\link{Unicode}}
#' @examples 
#' # Classes
#' ugc_lowercase_letter()
#' ugc_decimal_number()
#' ugc_paragraph_separator()
#' ugc_currency_symbol()
#' 
#' # With repetition
#' ugc_nonspacing_mark(3, 6)
#' ugc_separator(1, Inf)
#' ugc_dash_punctuation(0, Inf)
#' 
#' # Without a class wrapper
#' ugc_titlecase_letter(char_class = FALSE)
#' 
#' # Constants
#' UGC_UPPERCASE_LETTER
#' UGC_LETTER_NUMBER
#' UGC_MATH_SYMBOL
#' UGC_FORMAT_CONTROL
#' 
#' \dontrun{
#' # All the Unicode general categories.
#' # Not run, since it generates lots of output
#' ls("package:rebus.unicode", pattern = "^ugc")
#' }
#' 
#' # Usage
#' library(rebus.base)
#' x <- "I exchanged $1000 for \u20ac665.41 and \u00a3243.13."
#' (rx <- capture(ugc_currency_symbol()) %R% 
#'   capture(
#'     ugc_decimal_number(1, Inf) %R%
#'     optional(group("." %R% ugc_decimal_number(2)))
#'   )
#' )
#' stringi::stri_match_all_regex(x, rx)
#' @name UnicodeGeneralCategory
#' @aliases unicode_general_category
NULL

unicode_general_category <- function(x)
{
  rebus.base::regex("\\p{", x, "}")
}

#' Unicode Properties
#' 
#' Match a Unicode Property.
#' @param lo A non-negative integer. Minimum number of repeats, when grouped.
#' @param hi positive integer. Maximum number of repeats, when grouped.
#' @param char_class \code{TRUE} or \code{FALSE}. Should the values be wrapped
#' into a character class?
#' @return A character vector representing part or all of a regular expression.
#' @references Table 12 of the Unicode Standard Annex #44 defines the Unicode
#' General Categories.
#' \url{http://www.unicode.org/reports/tr44/}
#' 
#' You can see which characters are contained in a category by visiting, e.g.,
#' \url{http://www.fileformat.info/info/unicode/category/Nd/list.htm}
#' @seealso \code{\link{unicode_general_category}}, \code{\link{Unicode}},
#' \code{\link[stringi]{stringi-search-charclass}}
#' @examples 
#' # Classes
#' up_math()
#' up_posix_alnum()
#' up_changes_when_uppercased()
#' up_diacritic()
#' 
#' # With repetition
#' ugc_nonspacing_mark(3, 6)
#' up_quotation_mark(1, Inf)
#' up_posix_xdigit(0, Inf)
#' 
#' # Without a class wrapper
#' up_hyphen(char_class = FALSE)
#' 
#' # Constants
#' UP_ALPHABETIC
#' UP_DASH
#' UP_POSIX_ALNUM
#' UP_CHANGES_WHEN_LOWERCASED
#' 
#' \dontrun{
#' # All the Unicode properties.
#' # Not run, since it generates lots of output
#' ls("package:rebus.unicode", pattern = "^up")
#' }
#' 
#' # Usage
#' # Hello in Samoan, Serbian, Persian, Simplified Chinese
#' hello <- "t\u101lofa, \u437\u434\u440\u430\u432\u43e, \u633\u644\u627\u645, \u4f60\u597d"
#' stringi::stri_extract_all_regex(hello, up_alphabetic(1, Inf))
#' stringi::stri_extract_all_regex(hello, up_case_sensitive(1, Inf))
#' @name UnicodeProperty
#' @aliases unicode_property
NULL

unicode_property <- function(x, syntax = c("unicode", "posix"))
{
  syntax <- match.arg(syntax)
  if(syntax == "unicode")
  {
    rebus.base::regex("\\p{", x, "}")
  } else
  {
    rebus.base::regex("[:", x, ":]")
  }
}

# Unicode General Categories ----------------------------------------------

#' @rdname UnicodeGeneralCategory
#' @export
UGC_UPPERCASE_LETTER <- unicode_general_category("Lu")

#' @rdname UnicodeGeneralCategory
#' @export
UGC_LOWERCASE_LETTER <- unicode_general_category("Ll")

#' @rdname UnicodeGeneralCategory
#' @export
UGC_TITLECASE_LETTER <- unicode_general_category("Lt")

#' @rdname UnicodeGeneralCategory
#' @export
UGC_CASED_LETTER <- unicode_general_category("LC")

#' @rdname UnicodeGeneralCategory
#' @export
UGC_MODIFIER_LETTER <- unicode_general_category("Lm")

#' @rdname UnicodeGeneralCategory
#' @export
UGC_OTHER_LETTER <- unicode_general_category("Lo")

#' @rdname UnicodeGeneralCategory
#' @export
UGC_LETTER <- unicode_general_category("L")

#' @rdname UnicodeGeneralCategory
#' @export
UGC_NONSPACING_MARK <- unicode_general_category("Mn")

#' @rdname UnicodeGeneralCategory
#' @export
UGC_SPACING_MARK <- unicode_general_category("Mc")

#' @rdname UnicodeGeneralCategory
#' @export
UGC_ENCLOSING_MARK <- unicode_general_category("Me")

#' @rdname UnicodeGeneralCategory
#' @export
UGC_MARK <- unicode_general_category("M")

#' @rdname UnicodeGeneralCategory
#' @export
UGC_DECIMAL_NUMBER <- unicode_general_category("Nd")

#' @rdname UnicodeGeneralCategory
#' @export
UGC_LETTER_NUMBER <- unicode_general_category("Nl")

#' @rdname UnicodeGeneralCategory
#' @export
UGC_OTHER_NUMBER <- unicode_general_category("No")

#' @rdname UnicodeGeneralCategory
#' @export
UGC_NUMBER <- unicode_general_category("N")

#' @rdname UnicodeGeneralCategory
#' @export
UGC_CONNECTOR_PUNCTUATION <- unicode_general_category("Pc")

#' @rdname UnicodeGeneralCategory
#' @export
UGC_DASH_PUNCTUATION <- unicode_general_category("Pd")

#' @rdname UnicodeGeneralCategory
#' @export
UGC_OPEN_PUNCTUATION <- unicode_general_category("Ps")

#' @rdname UnicodeGeneralCategory
#' @export
UGC_CLOSE_PUNCTUATION <- unicode_general_category("Pe")

#' @rdname UnicodeGeneralCategory
#' @export
UGC_INITIAL_PUNCTUATION <- unicode_general_category("Pi")

#' @rdname UnicodeGeneralCategory
#' @export
UGC_FINAL_PUNCTUATION <- unicode_general_category("Pf")

#' @rdname UnicodeGeneralCategory
#' @export
UGC_OTHER_PUNCTUATION <- unicode_general_category("Po")

#' @rdname UnicodeGeneralCategory
#' @export
UGC_PUNCTUATION <- unicode_general_category("P")

#' @rdname UnicodeGeneralCategory
#' @export
UGC_MATH_SYMBOL <- unicode_general_category("Sm")

#' @rdname UnicodeGeneralCategory
#' @export
UGC_CURRENCY_SYMBOL <- unicode_general_category("Sc")

#' @rdname UnicodeGeneralCategory
#' @export
UGC_MODIFIER_SYMBOL <- unicode_general_category("Sk")

#' @rdname UnicodeGeneralCategory
#' @export
UGC_OTHER_SYMBOL <- unicode_general_category("So")

#' @rdname UnicodeGeneralCategory
#' @export
UGC_SYMBOL <- unicode_general_category("S")

#' @rdname UnicodeGeneralCategory
#' @export
UGC_SPACE_SEPARATOR <- unicode_general_category("Zs")

#' @rdname UnicodeGeneralCategory
#' @export
UGC_LINE_SEPARATOR <- unicode_general_category("Zl")

#' @rdname UnicodeGeneralCategory
#' @export
UGC_PARAGRAPH_SEPARATOR <- unicode_general_category("Zp")

#' @rdname UnicodeGeneralCategory
#' @export
UGC_SEPARATOR <- unicode_general_category("Z")

#' @rdname UnicodeGeneralCategory
#' @export
UGC_CONTROL <- unicode_general_category("Cc")

#' @rdname UnicodeGeneralCategory
#' @export
UGC_FORMAT_CONTROL <- unicode_general_category("Cf")

#' @rdname UnicodeGeneralCategory
#' @export
UGC_SURROGATE_CONTROL <- unicode_general_category("Cs")

#' @rdname UnicodeGeneralCategory
#' @export
UGC_PRIVATE_USE_CONTROL <- unicode_general_category("Co")

#' @rdname UnicodeGeneralCategory
#' @export
UGC_UNASSIGNED_CONTROL <- unicode_general_category("Cn")

#' @rdname UnicodeGeneralCategory
#' @export
UGC_OTHER <- unicode_general_category("O")


# Unicode Properties ------------------------------------------------------

#' @rdname UnicodeProperty
#' @export
UP_ALPHABETIC <- unicode_general_category("ALPHABETIC")

#' @rdname UnicodeProperty
#' @export
UP_ASCII_HEX_DIGIT <- unicode_property("ASCII_HEX_DIGIT")

#' @rdname UnicodeProperty
#' @export
UP_BIDI_CONTROL <- unicode_property("BIDI_CONTROL")

#' @rdname UnicodeProperty
#' @export
UP_BIDI_MIRRORED <- unicode_property("BIDI_MIRRORED")

#' @rdname UnicodeProperty
#' @export
UP_DASH <- unicode_property("DASH")

#' @rdname UnicodeProperty
#' @export
UP_DEFAULT_IGNORABLE_CODE_POINT <- unicode_property("DEFAULT_IGNORABLE_CODE_POINT")

#' @rdname UnicodeProperty
#' @export
UP_DEPRECATED <- unicode_property("DEPRECATED")

#' @rdname UnicodeProperty
#' @export
UP_DIACRITIC <- unicode_property("DIACRITIC")

#' @rdname UnicodeProperty
#' @export
UP_EXTENDER <- unicode_property("EXTENDER")

#' @rdname UnicodeProperty
#' @export
UP_HEX_DIGIT <- unicode_property("HEX_DIGIT")

#' @rdname UnicodeProperty
#' @export
UP_HYPHEN <- unicode_property("HYPHEN")

#' @rdname UnicodeProperty
#' @export
UP_ID_CONTINUE <- unicode_property("ID_CONTINUE")

#' @rdname UnicodeProperty
#' @export
UP_ID_START <- unicode_property("ID_START")

#' @rdname UnicodeProperty
#' @export
UP_IDEOGRAPHIC <- unicode_property("IDEOGRAPHIC")

#' @rdname UnicodeProperty
#' @export
UP_LOWERCASE <- unicode_property("LOWERCASE")

#' @rdname UnicodeProperty
#' @export
UP_MATH <- unicode_property("MATH")

#' @rdname UnicodeProperty
#' @export
UP_NONCHARACTER_CODE_POINT <- unicode_property("NONCHARACTER_CODE_POINT")

#' @rdname UnicodeProperty
#' @export
UP_QUOTATION_MARK <- unicode_property("QUOTATION_MARK")

#' @rdname UnicodeProperty
#' @export
UP_SOFT_DOTTED <- unicode_property("SOFT_DOTTED")

#' @rdname UnicodeProperty
#' @export
UP_TERMINAL_PUNCTUATION <- unicode_property("TERMINAL_PUNCTUATION")

#' @rdname UnicodeProperty
#' @export
UP_UPPERCASE <- unicode_property("UPPERCASE")

#' @rdname UnicodeProperty
#' @export
UP_WHITE_SPACE <- unicode_property("WHITE_SPACE")

#' @rdname UnicodeProperty
#' @export
UP_CASE_SENSITIVE <- unicode_property("CASE_SENSITIVE")

#' @rdname UnicodeProperty
#' @export
UP_POSIX_ALNUM <- unicode_property("ALNUM")

#' @rdname UnicodeProperty
#' @export
UP_POSIX_BLANK <- unicode_property("BLANK")

#' @rdname UnicodeProperty
#' @export
UP_POSIX_GRAPH <- unicode_property("GRAPH")

#' @rdname UnicodeProperty
#' @export
UP_POSIX_PRINT <- unicode_property("PRINT")

#' @rdname UnicodeProperty
#' @export
UP_POSIX_XDIGIT <- unicode_property("XDIGIT")

#' @rdname UnicodeProperty
#' @export
UP_CASED <- unicode_property("CASED")

#' @rdname UnicodeProperty
#' @export
UP_CASE_IGNORABLE <- unicode_property("CASE_IGNORABLE")

#' @rdname UnicodeProperty
#' @export
UP_CHANGES_WHEN_LOWERCASED <- unicode_property("CHANGES_WHEN_LOWERCASED")

#' @rdname UnicodeProperty
#' @export
UP_CHANGES_WHEN_UPPERCASED <- unicode_property("CHANGES_WHEN_UPPERCASED")

#' @rdname UnicodeProperty
#' @export
UP_CHANGES_WHEN_TITLECASED <- unicode_property("CHANGES_WHEN_TITLECASED")

#' @rdname UnicodeProperty
#' @export
UP_CHANGES_WHEN_CASEFOLDED <- unicode_property("CHANGES_WHEN_CASEFOLDED")

#' @rdname UnicodeProperty
#' @export
UP_CHANGES_WHEN_CASEMAPPED <- unicode_property("CHANGES_WHEN_CASEMAPPED")

#' @rdname UnicodeProperty
#' @export
UP_CHANGES_WHEN_NFKC_CASEFOLDED <- unicode_property("CHANGES_WHEN_NFKC_CASEFOLDED")
