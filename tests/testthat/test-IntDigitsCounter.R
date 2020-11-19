test_that("numeric vectors work", {
  # Check input with NA with na.rm = FALSE
  expect_error(IntDigitsCounter(c(2, 0, NA, 43478.99), na.rm = FALSE))
  # Check input with NA with na.rm = TRUE
  expect_equal(IntDigitsCounter(c(2, 0, NA, 43478.99), na.rm = TRUE), c(1, 0 ,5))
  # Check whether vector with negative numbers and non-integer values can work(without NA)
  expect_equal(IntDigitsCounter(c(0.123, 1, -245, 4308.99)), c(0, 1, 3, 4))
})

test_that("list inputs work", {
  # Check whether list of numerical numbers can work
  expect_equal(IntDigitsCounter(list(0.99, 9.99, 99.99)), c(0, 1, 2))
  # Check whether list of numerical numbers with negative numbers and non-integer values can work
  expect_equal(IntDigitsCounter(list(0.123, 1, -245, 4308.99)), c(0, 1, 3, 4))
})

test_that("Logicals and character vectors don't work", {
  # Check character input couldn't work
  expect_error(IntDigitsCounter(c("hi","there")))
  # Check logical input couldn't work
  expect_error(IntDigitsCounter(c(TRUE, FALSE)))
})

test_that("check output produced by verbose", {
  expect_output(IntDigitsCounter(245, verbose = TRUE), "x divided by 10, Times: 1 and x becomes: 24.5 \nx divided by 10, Times: 2 and x becomes: 2.45 ")
})
