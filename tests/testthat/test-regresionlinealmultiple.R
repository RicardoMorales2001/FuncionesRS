# Crear datos de prueba
df <- data.frame(x = 1:5, y = c(2, 4, 6, 8, 10), z = c(3, 5, 7, 9, 11))

test_that("La función genera una excepción cuando el argumento data no es un dataframe", {
  expect_error(multi_reg(list(x = df$x, y = df$y), "y", c("x", "z")), "El argumento data debe ser un dataframe.")
})

test_that("La función genera una excepción cuando la variable dependiente o alguna de las variables independientes no existen en el dataframe", {
  expect_error(multi_reg(df, "w", c("x", "z")), "La variable dependiente 'w' no existe en el dataframe.")
  expect_error(multi_reg(df, "y", c("x", "w")), "Alguna de las variables independientes no existe en el dataframe.")
})

