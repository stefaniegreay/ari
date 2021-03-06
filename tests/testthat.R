library(methods)
library(testthat)
library(ari)
library(tuneR)
library(purrr)

skip_amazon_not_authorized = function() {
  # Skip if on CRAN
  if(!identical(Sys.getenv("NOT_CRAN"), "true")) {
    skip("Amazon not authenticated()")
  }

  # Skip if Amazon is not authorized 
  # if (text2speech::tts_amazon_authenticated()) {
  #   return(invisible(TRUE))
  # }

  # Eventually test2speech will be updated so that it no longer needs
  # the aws.polly package. Until then we need to skip these tests during
  # automated tests.
  
  skip("Amazon not authenticated()")
}

test_check("ari")
