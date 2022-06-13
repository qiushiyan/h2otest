test_that("fitting model works", {
  h2o_start()
  on.exit(h2o::h2o.shutdown(prompt = FALSE))
  skip_if(!h2o_running())

  bank <- h2o.importFile(
    path ="https://s3.amazonaws.com/h2o-public-test-data/smalldata/demos/bank-additional-full.csv"
  )
  predictors <- 1:20
  target <- "y"
  mod <- h2o.glm(x = predictors,
                y = target,
                training_frame = bank,
                family = "binomial",
                standardize = TRUE,
                lambda_search = TRUE)
  expect_snapshot(mod)
})


test_that("fitting model works again", {
  h2o_start()
  on.exit(h2o::h2o.shutdown(prompt = FALSE))
  skip_if(!h2o_running())

  bank <- h2o.importFile(
    path ="https://s3.amazonaws.com/h2o-public-test-data/smalldata/demos/bank-additional-full.csv"
  )
  predictors <- 1:20
  target <- "y"
  mod <- h2o.glm(x = predictors,
                 y = target,
                 training_frame = bank,
                 family = "binomial",
                 standardize = TRUE,
                 lambda_search = TRUE)
  expect_snapshot(mod)
})
