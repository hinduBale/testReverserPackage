#' Reverses a string or number
#' @param x A string or a number
#' @return the reverse of input
#' @examples
#' string_reverse(1234)
#' string_reverse("1234")
#' @importFrom magrittr "%>%"
#' @export
string_reverse <- function(x, convert = TRUE)
{
  splits <- auto_split(x)
  r <- rev(splits) %>% paste(collapse = "")
  if(convert)
  {
    tryCatch(as.numeric(r), warning = function(c) return (r))
  }
  else
  {
    r
  }
}

auto_split <- function(x)
{
  return (strsplit(as.character(x), "")[[1]])
}

