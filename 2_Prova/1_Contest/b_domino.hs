calculaDuploN :: Integer -> Integer
calculaDuploN n =  div ((n+1) * (n+2)) 2

main = do 
    n <- getLine

    let n' = read n :: Integer

    let resultado = calculaDuploN n'

    putStrLn $ show resultado  
