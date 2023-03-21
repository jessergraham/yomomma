#' A function that returns a your-momma joke
#'
#' This function allows you to express your love of cats.
#' @param yo_momma_api returns a random your-momma joke
#' @keywords jokes
#' @export
#' @name yo_momma_api
#' @return returns a random your momma joke from api.yomoma.info
#' yo_momma()

library(httr)
library(jsonlite)

yo_momma <- function(){
  res = GET("https://api.yomomma.info/")
  return(fromJSON(rawToChar(res$content)))
}

