import Control.Monad (replicateM)

satisfazCliente a b c d | ((c-d) >= a && (c-d) <= b) = "S"
                        | otherwise = "N"
main = do
    entrada <- replicateM 4 (readLn :: IO Int)
    let [a, b, c, d] = entrada
    let resultado = satisfazCliente a b c d
    putStrLn $ resultado