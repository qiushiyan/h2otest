library(testthat)
library(h2o)
library(foreach)
library(h2otest)

h2o::h2o.init()
h2o::h2o.no_progress()
test_check("h2otest")

h2o::h2o.show_progress()
h2o::h2o.shutdown()
