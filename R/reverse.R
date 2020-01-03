#' Reverses a string or number
#' @param x A string or a number
#' @return the reverse of input
#' @examples
#' string_reverse(1234)
#' string_reverse("1234")
#' @importFrom magrittr "%>%"
#' @export
string_reverse <- function(x)
{
  splits <- auto_split(x)
  reversed <- rev(splits)
  final_result <- paste(reversed, collapse = "")
  return (final_result)
}

auto_split <- function(x)
{
  return (strsplit(as.character(x), "")[[1]])
}

