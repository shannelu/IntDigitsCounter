test_that("function IntDigitsCounter works", {
  # Check vector of length 0 input, like numeric(0)
  expect_equal(IntDigitsCounter(numeric(0)), numeric(0))
  # Check input with NA with na.rm = FALSE
  expect_error(IntDigitsCounter(c(2, 0, NA, 43478.99), na.rm = FALSE))
  # Check input with NA with na.rm = TRUE
  expect_equal(IntDigitsCounter(c(2, 0, NA, 43478.99), na.rm = TRUE), c(1, 0 ,5))
  # Check whether vector with negative numbers and non-integer values can work(without NA)
  expect_equal(IntDigitsCounter(c(0.123, 1, -245, 4308.99)), c(0, 1, 3, 4))
  # Check whether list() of numerical numbers can work
  expect_equal(IntDigitsCounter(list(0.99, 9.99, 99.99)), c(0, 1, 2))
  # Check character input couldn't work and will return a certain error message
  expect_error(IntDigitsCounter(c("hi","there")), "I am so sorry, but this function only works for numeric input!\nYou have provided an object of class: character")
  # Check the output produced by verbose
  expect_output(IntDigitsCounter(245, verbose = TRUE), "x divided by 10, Times: 1 and x becomes: 24.5 \nx divided by 10, Times: 2 and x becomes: 2.45 ")
})
