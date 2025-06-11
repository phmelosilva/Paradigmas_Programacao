-- somaEntradas :: IO ()
somaEntradas = do
  putStrLn "Digite o primeiro número:"
  a <- readLn
  putStrLn "Digite o segundo número:"
  b <- readLn
  putStrLn ("Então a soma é: " ++ show (a + b))
