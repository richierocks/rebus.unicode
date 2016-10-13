
#' @rdname UnicodeGeneralCategory
#' @export
ugc_cased_letter <- function(lo, hi, char_class = TRUE)
{
  repeated("\\p{LC}", lo, hi, char_class = char_class)
}
 
#' @rdname UnicodeGeneralCategory
#' @export
ugc_close_punctuation <- function(lo, hi, char_class = TRUE)
{
  repeated("\\p{Pe}", lo, hi, char_class = char_class)
}
 
#' @rdname UnicodeGeneralCategory
#' @export
ugc_connector_punctuation <- function(lo, hi, char_class = TRUE)
{
  repeated("\\p{Pc}", lo, hi, char_class = char_class)
}
 
#' @rdname UnicodeGeneralCategory
#' @export
ugc_control <- function(lo, hi, char_class = TRUE)
{
  repeated("\\p{Cc}", lo, hi, char_class = char_class)
}
 
#' @rdname UnicodeGeneralCategory
#' @export
ugc_currency_symbol <- function(lo, hi, char_class = TRUE)
{
  repeated("\\p{Sc}", lo, hi, char_class = char_class)
}
 
#' @rdname UnicodeGeneralCategory
#' @export
ugc_dash_punctuation <- function(lo, hi, char_class = TRUE)
{
  repeated("\\p{Pd}", lo, hi, char_class = char_class)
}
 
#' @rdname UnicodeGeneralCategory
#' @export
ugc_decimal_number <- function(lo, hi, char_class = TRUE)
{
  repeated("\\p{Nd}", lo, hi, char_class = char_class)
}
 
#' @rdname UnicodeGeneralCategory
#' @export
ugc_enclosing_mark <- function(lo, hi, char_class = TRUE)
{
  repeated("\\p{Me}", lo, hi, char_class = char_class)
}
 
#' @rdname UnicodeGeneralCategory
#' @export
ugc_final_punctuation <- function(lo, hi, char_class = TRUE)
{
  repeated("\\p{Pf}", lo, hi, char_class = char_class)
}
 
#' @rdname UnicodeGeneralCategory
#' @export
ugc_format_control <- function(lo, hi, char_class = TRUE)
{
  repeated("\\p{Cf}", lo, hi, char_class = char_class)
}
 
#' @rdname UnicodeGeneralCategory
#' @export
ugc_initial_punctuation <- function(lo, hi, char_class = TRUE)
{
  repeated("\\p{Pi}", lo, hi, char_class = char_class)
}
 
#' @rdname UnicodeGeneralCategory
#' @export
ugc_letter <- function(lo, hi, char_class = TRUE)
{
  repeated("\\p{L}", lo, hi, char_class = char_class)
}
 
#' @rdname UnicodeGeneralCategory
#' @export
ugc_letter_number <- function(lo, hi, char_class = TRUE)
{
  repeated("\\p{Nl}", lo, hi, char_class = char_class)
}
 
#' @rdname UnicodeGeneralCategory
#' @export
ugc_line_separator <- function(lo, hi, char_class = TRUE)
{
  repeated("\\p{Zl}", lo, hi, char_class = char_class)
}
 
#' @rdname UnicodeGeneralCategory
#' @export
ugc_lowercase_letter <- function(lo, hi, char_class = TRUE)
{
  repeated("\\p{Ll}", lo, hi, char_class = char_class)
}
 
#' @rdname UnicodeGeneralCategory
#' @export
ugc_mark <- function(lo, hi, char_class = TRUE)
{
  repeated("\\p{M}", lo, hi, char_class = char_class)
}
 
#' @rdname UnicodeGeneralCategory
#' @export
ugc_math_symbol <- function(lo, hi, char_class = TRUE)
{
  repeated("\\p{Sm}", lo, hi, char_class = char_class)
}
 
#' @rdname UnicodeGeneralCategory
#' @export
ugc_modifier_letter <- function(lo, hi, char_class = TRUE)
{
  repeated("\\p{Lm}", lo, hi, char_class = char_class)
}
 
#' @rdname UnicodeGeneralCategory
#' @export
ugc_modifier_symbol <- function(lo, hi, char_class = TRUE)
{
  repeated("\\p{Sk}", lo, hi, char_class = char_class)
}
 
#' @rdname UnicodeGeneralCategory
#' @export
ugc_nonspacing_mark <- function(lo, hi, char_class = TRUE)
{
  repeated("\\p{Mn}", lo, hi, char_class = char_class)
}
 
#' @rdname UnicodeGeneralCategory
#' @export
ugc_number <- function(lo, hi, char_class = TRUE)
{
  repeated("\\p{N}", lo, hi, char_class = char_class)
}
 
#' @rdname UnicodeGeneralCategory
#' @export
ugc_open_punctuation <- function(lo, hi, char_class = TRUE)
{
  repeated("\\p{Ps}", lo, hi, char_class = char_class)
}
 
#' @rdname UnicodeGeneralCategory
#' @export
ugc_other <- function(lo, hi, char_class = TRUE)
{
  repeated("\\p{O}", lo, hi, char_class = char_class)
}
 
#' @rdname UnicodeGeneralCategory
#' @export
ugc_other_letter <- function(lo, hi, char_class = TRUE)
{
  repeated("\\p{Lo}", lo, hi, char_class = char_class)
}
 
#' @rdname UnicodeGeneralCategory
#' @export
ugc_other_number <- function(lo, hi, char_class = TRUE)
{
  repeated("\\p{No}", lo, hi, char_class = char_class)
}
 
#' @rdname UnicodeGeneralCategory
#' @export
ugc_other_punctuation <- function(lo, hi, char_class = TRUE)
{
  repeated("\\p{Po}", lo, hi, char_class = char_class)
}
 
#' @rdname UnicodeGeneralCategory
#' @export
ugc_other_symbol <- function(lo, hi, char_class = TRUE)
{
  repeated("\\p{So}", lo, hi, char_class = char_class)
}
 
#' @rdname UnicodeGeneralCategory
#' @export
ugc_paragraph_separator <- function(lo, hi, char_class = TRUE)
{
  repeated("\\p{Zp}", lo, hi, char_class = char_class)
}
 
#' @rdname UnicodeGeneralCategory
#' @export
ugc_private_use_control <- function(lo, hi, char_class = TRUE)
{
  repeated("\\p{Co}", lo, hi, char_class = char_class)
}
 
#' @rdname UnicodeGeneralCategory
#' @export
ugc_punctuation <- function(lo, hi, char_class = TRUE)
{
  repeated("\\p{P}", lo, hi, char_class = char_class)
}
 
#' @rdname UnicodeGeneralCategory
#' @export
ugc_separator <- function(lo, hi, char_class = TRUE)
{
  repeated("\\p{Z}", lo, hi, char_class = char_class)
}
 
#' @rdname UnicodeGeneralCategory
#' @export
ugc_space_separator <- function(lo, hi, char_class = TRUE)
{
  repeated("\\p{Zs}", lo, hi, char_class = char_class)
}
 
#' @rdname UnicodeGeneralCategory
#' @export
ugc_spacing_mark <- function(lo, hi, char_class = TRUE)
{
  repeated("\\p{Mc}", lo, hi, char_class = char_class)
}
 
#' @rdname UnicodeGeneralCategory
#' @export
ugc_surrogate_control <- function(lo, hi, char_class = TRUE)
{
  repeated("\\p{Cs}", lo, hi, char_class = char_class)
}
 
#' @rdname UnicodeGeneralCategory
#' @export
ugc_symbol <- function(lo, hi, char_class = TRUE)
{
  repeated("\\p{S}", lo, hi, char_class = char_class)
}
 
#' @rdname UnicodeGeneralCategory
#' @export
ugc_titlecase_letter <- function(lo, hi, char_class = TRUE)
{
  repeated("\\p{Lt}", lo, hi, char_class = char_class)
}
 
#' @rdname UnicodeGeneralCategory
#' @export
ugc_unassigned_control <- function(lo, hi, char_class = TRUE)
{
  repeated("\\p{Cn}", lo, hi, char_class = char_class)
}
 
#' @rdname UnicodeGeneralCategory
#' @export
ugc_uppercase_letter <- function(lo, hi, char_class = TRUE)
{
  repeated("\\p{Lu}", lo, hi, char_class = char_class)
}
 
#' @rdname UnicodeProperty
#' @export
up_alphabetic <- function(lo, hi, char_class = TRUE)
{
  repeated("\\p{ALPHABETIC}", lo, hi, char_class = char_class)
}
 
#' @rdname UnicodeProperty
#' @export
up_ascii_hex_digit <- function(lo, hi, char_class = TRUE)
{
  repeated("[:ASCII_HEX_DIGIT:]", lo, hi, char_class = char_class)
}
 
#' @rdname UnicodeProperty
#' @export
up_bidi_control <- function(lo, hi, char_class = TRUE)
{
  repeated("[:BIDI_CONTROL:]", lo, hi, char_class = char_class)
}
 
#' @rdname UnicodeProperty
#' @export
up_bidi_mirrored <- function(lo, hi, char_class = TRUE)
{
  repeated("[:BIDI_MIRRORED:]", lo, hi, char_class = char_class)
}
 
#' @rdname UnicodeProperty
#' @export
up_case_ignorable <- function(lo, hi, char_class = TRUE)
{
  repeated("[:CASE_IGNORABLE:]", lo, hi, char_class = char_class)
}
 
#' @rdname UnicodeProperty
#' @export
up_case_sensitive <- function(lo, hi, char_class = TRUE)
{
  repeated("[:CASE_SENSITIVE:]", lo, hi, char_class = char_class)
}
 
#' @rdname UnicodeProperty
#' @export
up_cased <- function(lo, hi, char_class = TRUE)
{
  repeated("[:CASED:]", lo, hi, char_class = char_class)
}
 
#' @rdname UnicodeProperty
#' @export
up_changes_when_casefolded <- function(lo, hi, char_class = TRUE)
{
  repeated("[:CHANGES_WHEN_CASEFOLDED:]", lo, hi, char_class = char_class)
}
 
#' @rdname UnicodeProperty
#' @export
up_changes_when_casemapped <- function(lo, hi, char_class = TRUE)
{
  repeated("[:CHANGES_WHEN_CASEMAPPED:]", lo, hi, char_class = char_class)
}
 
#' @rdname UnicodeProperty
#' @export
up_changes_when_lowercased <- function(lo, hi, char_class = TRUE)
{
  repeated("[:CHANGES_WHEN_LOWERCASED:]", lo, hi, char_class = char_class)
}
 
#' @rdname UnicodeProperty
#' @export
up_changes_when_nfkc_casefolded <- function(lo, hi, char_class = TRUE)
{
  repeated("[:CHANGES_WHEN_NFKC_CASEFOLDED:]", lo, hi, char_class = char_class)
}
 
#' @rdname UnicodeProperty
#' @export
up_changes_when_titlecased <- function(lo, hi, char_class = TRUE)
{
  repeated("[:CHANGES_WHEN_TITLECASED:]", lo, hi, char_class = char_class)
}
 
#' @rdname UnicodeProperty
#' @export
up_changes_when_uppercased <- function(lo, hi, char_class = TRUE)
{
  repeated("[:CHANGES_WHEN_UPPERCASED:]", lo, hi, char_class = char_class)
}
 
#' @rdname UnicodeProperty
#' @export
up_dash <- function(lo, hi, char_class = TRUE)
{
  repeated("[:DASH:]", lo, hi, char_class = char_class)
}
 
#' @rdname UnicodeProperty
#' @export
up_default_ignorable_code_point <- function(lo, hi, char_class = TRUE)
{
  repeated("[:DEFAULT_IGNORABLE_CODE_POINT:]", lo, hi, char_class = char_class)
}
 
#' @rdname UnicodeProperty
#' @export
up_deprecated <- function(lo, hi, char_class = TRUE)
{
  repeated("[:DEPRECATED:]", lo, hi, char_class = char_class)
}
 
#' @rdname UnicodeProperty
#' @export
up_diacritic <- function(lo, hi, char_class = TRUE)
{
  repeated("[:DIACRITIC:]", lo, hi, char_class = char_class)
}
 
#' @rdname UnicodeProperty
#' @export
up_extender <- function(lo, hi, char_class = TRUE)
{
  repeated("[:EXTENDER:]", lo, hi, char_class = char_class)
}
 
#' @rdname UnicodeProperty
#' @export
up_hex_digit <- function(lo, hi, char_class = TRUE)
{
  repeated("[:HEX_DIGIT:]", lo, hi, char_class = char_class)
}
 
#' @rdname UnicodeProperty
#' @export
up_hyphen <- function(lo, hi, char_class = TRUE)
{
  repeated("[:HYPHEN:]", lo, hi, char_class = char_class)
}
 
#' @rdname UnicodeProperty
#' @export
up_id_continue <- function(lo, hi, char_class = TRUE)
{
  repeated("[:ID_CONTINUE:]", lo, hi, char_class = char_class)
}
 
#' @rdname UnicodeProperty
#' @export
up_id_start <- function(lo, hi, char_class = TRUE)
{
  repeated("[:ID_START:]", lo, hi, char_class = char_class)
}
 
#' @rdname UnicodeProperty
#' @export
up_ideographic <- function(lo, hi, char_class = TRUE)
{
  repeated("[:IDEOGRAPHIC:]", lo, hi, char_class = char_class)
}
 
#' @rdname UnicodeProperty
#' @export
up_lowercase <- function(lo, hi, char_class = TRUE)
{
  repeated("[:LOWERCASE:]", lo, hi, char_class = char_class)
}
 
#' @rdname UnicodeProperty
#' @export
up_math <- function(lo, hi, char_class = TRUE)
{
  repeated("[:MATH:]", lo, hi, char_class = char_class)
}
 
#' @rdname UnicodeProperty
#' @export
up_noncharacter_code_point <- function(lo, hi, char_class = TRUE)
{
  repeated("[:NONCHARACTER_CODE_POINT:]", lo, hi, char_class = char_class)
}
 
#' @rdname UnicodeProperty
#' @export
up_posix_alnum <- function(lo, hi, char_class = TRUE)
{
  repeated("[:POSIX_ALNUM:]", lo, hi, char_class = char_class)
}
 
#' @rdname UnicodeProperty
#' @export
up_posix_blank <- function(lo, hi, char_class = TRUE)
{
  repeated("[:POSIX_BLANK:]", lo, hi, char_class = char_class)
}
 
#' @rdname UnicodeProperty
#' @export
up_posix_graph <- function(lo, hi, char_class = TRUE)
{
  repeated("[:POSIX_GRAPH:]", lo, hi, char_class = char_class)
}
 
#' @rdname UnicodeProperty
#' @export
up_posix_print <- function(lo, hi, char_class = TRUE)
{
  repeated("[:POSIX_PRINT:]", lo, hi, char_class = char_class)
}
 
#' @rdname UnicodeProperty
#' @export
up_posix_xdigit <- function(lo, hi, char_class = TRUE)
{
  repeated("[:POSIX_XDIGIT:]", lo, hi, char_class = char_class)
}
 
#' @rdname UnicodeProperty
#' @export
up_quotation_mark <- function(lo, hi, char_class = TRUE)
{
  repeated("[:QUOTATION_MARK:]", lo, hi, char_class = char_class)
}
 
#' @rdname UnicodeProperty
#' @export
up_soft_dotted <- function(lo, hi, char_class = TRUE)
{
  repeated("[:SOFT_DOTTED:]", lo, hi, char_class = char_class)
}
 
#' @rdname UnicodeProperty
#' @export
up_terminal_punctuation <- function(lo, hi, char_class = TRUE)
{
  repeated("[:TERMINAL_PUNCTUATION:]", lo, hi, char_class = char_class)
}
 
#' @rdname UnicodeProperty
#' @export
up_uppercase <- function(lo, hi, char_class = TRUE)
{
  repeated("[:UPPERCASE:]", lo, hi, char_class = char_class)
}
 
#' @rdname UnicodeProperty
#' @export
up_white_space <- function(lo, hi, char_class = TRUE)
{
  repeated("[:WHITE_SPACE:]", lo, hi, char_class = char_class)
}
