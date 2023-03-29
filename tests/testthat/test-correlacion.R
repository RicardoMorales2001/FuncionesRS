
data <- data.frame(x = c(1, 2, 3, 4), y = c(2, 4, 6, 8))
expected_output <- 1

test_that("La función my_corr_plot devuelve el resultado esperado", {
  output <- my_corr_plot(data, "x", "y")
  expect_equal(output, expected_output)
})

test_that("La función my_corr_plot devuelve el error esperado cuando se le pasan argumentos incorrectos", {
  expect_error(my_corr_plot(data, "z", "y"), "La columna 'z' no existe en el dataframe.")
})
