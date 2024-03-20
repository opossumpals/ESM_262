#install.packages("testthat")
#install.packages("devtools")


library(testthat)
library(devtools)


#test_dir("name") runs all tests in the "name subdirectory (all files beginning with the word "test")

#test_file("name") runs all the tests in a file called "name"


source("R/nm_eval.R")

test_that("Democrat input = 1", {
  expect_equal(likelihood(party = "Democrat"), 1)
  expect_equal(likelihoos(hist = "Yes"), 1)
})
