library(testthat)

x <- c(1, 2, 3, 4, 5)
y <- c(2, 4, 6, 8, 10)

test_that("La función devuelve un objeto modelo", {
  expect_s3_class(reg_lineal(x, y), "lm")
})

test_that("La función traza un gráfico", {
  plot_output <- capture.output(reg_lineal(x, y))
  expect_match(plot_output, "Regresión lineal")
})

test_that("La función genera una excepción cuando los vectores tienen diferentes longitudes", {
  expect_error(reg_lineal(x, c(y, 12)))
})

