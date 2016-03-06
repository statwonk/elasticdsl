context("index.R")

first_available_index <- indices()[[1]]


test_that("index() returns the right class", {
  # Using the ES_IP env var to pass in the
  # cluster's ip.
  expect_equal(class(index(first_available_index)), "index")
})

test_that("indices returns at least one index", {
  expect_gt(length(indices()), 0)
})

test_that("get_map", {
  expect_equal(names(elasticdsl:::get_map(first_available_index)), "record")
  expect_equal(names(elasticdsl:::get_map(first_available_index)[["record"]]), "properties")
})
