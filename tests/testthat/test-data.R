test_that("send data works 1", {
  # if (h2o_running()) {
  #   on.exit(h2o::h2o.shutdown(prompt = FALSE))
  # }

  expect_success({
    iris_hf <- as.h2o(iris)
  })
})

test_that("send data works 2", {
  # if (h2o_running()) {
  #   on.exit(h2o::h2o.shutdown(prompt = FALSE))
  # }

  expect_success({
    iris_hf <- as.h2o(iris)
  })

})
