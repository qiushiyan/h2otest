test_that("foreach loop with destination", {
  h2o::h2o.init()
  # if (h2o_running()) {
  #   on.exit(h2o::h2o.shutdown(prompt = FALSE))
  # }

  doParallel::registerDoParallel()
  foreach::foreach(
    seed = 1:20
  ) %dopar% {
    mtcars_hf <- h2o::as.h2o(mtcars,
                             destination_frame = paste0("train_frame",
                                                        paste0("_", sample(letters, 3), collapse = "")))
    x <- "mpg"
    y <- "wt"
    mod <- h2o::h2o.glm(
      x = x,
      y = y,
      training_frame = mtcars_hf,
      family = "gaussian",
      seed = seed
    )
    seed
  }
})


test_that("foreach loop", {
  h2o::h2o.init()
  # if (h2o_running()) {
  #   on.exit(h2o::h2o.shutdown(prompt = FALSE))
  # }

  doParallel::registerDoParallel()
  foreach::foreach(
    seed = 1:20
  ) %dopar% {
    mtcars_hf <- h2o::as.h2o(mtcars)
    x <- "mpg"
    y <- "wt"
    mod <- h2o::h2o.glm(
      x = x,
      y = y,
      training_frame = mtcars_hf,
      family = "gaussian",
      seed = seed
    )
    seed
  }
})
