library(testthat)

test_that("La función genera una excepción cuando los vectores tienen diferentes longitudes", {
  expect_error(reg_lineal(x, c(y, 12)), "Los vectores deben tener el mismo tamaño.")
})

test_that("La función genera una excepción cuando x o y son nulos", {
  expect_error(reg_lineal(NULL, y), "x is NULL")
  expect_error(reg_lineal(x, NULL), "y is NULL")
})
