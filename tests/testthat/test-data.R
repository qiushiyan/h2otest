test_that("send data works", {
  h2o::h2o.init()
  on.exit(h2o::h2o.shutdown(prompt = FALSE))
  skip_if(!h2o_running())

  iris_hf <- as.h2o(iris)
  expect_snapshot(iris_hf)
})

test_that("send data works again", {
  h2o::h2o.init()
  on.exit(h2o::h2o.shutdown(prompt = FALSE))
  skip_if(!h2o_running())

  iris_hf <- as.h2o(iris)
  expect_snapshot(iris_hf)
})
