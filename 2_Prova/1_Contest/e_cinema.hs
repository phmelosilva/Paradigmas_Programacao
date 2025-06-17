precoPorIdade idade | idade <= 17 = 15
                    | idade >= 18 && idade <=59 = 30
                    | idade >= 60 = 20

main = do  
    n1 <- getLine
    n2 <- getLine

    let idade1 = read n1 :: Integer
    let idade2 = read n2 :: Integer

    let resultado = precoPorIdade idade1 + precoPorIdade idade2

    putStrLn $ show resultado