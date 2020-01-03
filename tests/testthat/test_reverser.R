library("reverser")
context("String reverser")

test_that("Strings are reversed correctly", {
  expect_equal(string_reverse("foo"), "oof")
  expect_equal(string_reverse("Junglee Jawani"), "inawaJ eelgnuJ")
  expect_equal(string_reverse("x"), "x")
})

test_that("Numbers are reversed correctly", {
  expect_equal(string_reverse(1234), "4321")
  expect_equal(string_reverse(3.14), "41.3")
  expect_equal(string_reverse(3), "3")
})
