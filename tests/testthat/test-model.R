test_that("fitting model works 1", {
  # if (h2o_running()) {
  #   on.exit(h2o::h2o.shutdown(prompt = FALSE))
  # }


  expect_success({
    bank <- h2o.importFile(
      path ="https://s3.amazonaws.com/h2o-public-test-data/smalldata/demos/bank-additional-full.csv"
    )
    predictors <- 1:3
    target <- "y"
    mod <- h2o.glm(x = predictors,
                   y = target,
                   training_frame = bank,
                   family = "binomial",
                   standardize = TRUE,
                   lambda_search = TRUE,
                   seed = 1)
  })
})


test_that("fitting model works 2", {
  # if (h2o_running()) {
  #   on.exit(h2o::h2o.shutdown(prompt = FALSE))
  # }

  expect_success({
    bank <- h2o.importFile(
      path ="https://s3.amazonaws.com/h2o-public-test-data/smalldata/demos/bank-additional-full.csv"
    )
    predictors <- 1:3
    target <- "y"
    mod <- h2o.glm(x = predictors,
                   y = target,
                   training_frame = bank,
                   family = "binomial",
                   standardize = TRUE,
                   lambda_search = TRUE,
                   seed = 1)
  })
})
