context("filter.R")

first_available_index <- indices()[[1]]

test_that("filter", {
  expect_true("filtered" %in% class(filter(NULL)))
})

test_that("ids", {
  expect_true("comb" %in% class(ids_(c(1, 2))))
  expect_true("ids" %in% class(ids_(c(1, 2))[[1]]))


  expect_equal(index(first_available_index) %>%
                 filter() %>%
                 ids(c(1, 2)) %>%
                 exec() %>%
                 n(),
               1)

  expect_equal(index(first_available_index) %>%
                 filter() %>%
                 ids(c(1, 2)) %>%
                 exec() %>%
                 n(),
               2)
})

test_that("ids_", {
  expect_true("comb" %in% class(ids_(c(1, 2))))
  expect_true("ids" %in% class(ids_(c(1, 2))[[1]]))
})


