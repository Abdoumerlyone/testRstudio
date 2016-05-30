library(httr)
library(bitops)
library(RCurl)
library(RJSONIO)


library(highfrequency)
library(xts)
require(graphics)
library(timeDate)
library(forecast)

csv_to_json <- function(dat, pretty = F,na = "null",raw = "mongo",digits = 3,force = "unclass") {
  dat_to_json <- jsonlite::toJSON(dat,pretty = pretty,na = "null",raw = raw,digits = digits ,force = force )
  dat_to_json=substr(dat_to_json,start = 2,nchar(dat_to_json)-1)
  return(dat_to_json)
}