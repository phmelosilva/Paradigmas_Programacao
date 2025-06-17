brincadeira x y | x > y = x+y
                | otherwise = 2 * (y-x)

main = do
    n1 <- getLine
    n2 <- getLine

    let esq = read n1 :: Integer
    let dir = read n2 :: Integer

    let resultado = brincadeira esq dir

    putStrLn $ show resultado