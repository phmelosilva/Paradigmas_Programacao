import Control.Monad (replicateM)
import Data.List (foldl)

calcCal refeicoes limit | total > limit = 0
                        | otherwise = limit - total
                        where cals = map (\[p, g, c] -> p*4+g*9+c*4) refeicoes
                              total = foldl (+) 0 cals
main = do
    listaJohn <- getLine 
    let [n, m] = map (read :: String -> Int) $ words listaJohn
    refeicoes <- replicateM n ((map (read :: String -> Int) . words) <$> getLine)
    
    let resultado = calcCal refeicoes m
    putStrLn $ show resultado