import Control.Monad (replicateM)

calculaNet a mesAtual [] = mesAtual
calculaNet a mesAtual (x:xs) = calculaNet a (a + mesAtual - x) xs

main = do
    a <- readLn :: IO Int
    n <- readLn :: IO Int
    valores <- replicateM n (readLn :: IO Int)

-- 200 - 150 (1° mês), sobrou 50, no segundo mes é 250 - 220, sobrou 30
    putStrLn $ show (calculaNet a a valores)