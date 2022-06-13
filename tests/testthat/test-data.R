test_that("send data works 1", {
  h2o::h2o.init()
  # if (h2o_running()) {
  #   on.exit(h2o::h2o.shutdown(prompt = FALSE))
  # }

  iris_hf <- as.h2o(iris)
  expect_snapshot(iris_hf)
})

test_that("send data works 2", {
  h2o::h2o.init()
  # if (h2o_running()) {
  #   on.exit(h2o::h2o.shutdown(prompt = FALSE))
  # }

  iris_hf <- as.h2o(iris)
  expect_snapshot(iris_hf)
})
