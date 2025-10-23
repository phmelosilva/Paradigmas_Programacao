-- Usando apenas as funções das bibliotecas Prelude e Data.Char e funçõess de alta ordem, implemente, de forma
-- tácita, as funçõeses listadas abaixo.

import Data.Char

-- a) count :: String -> Int, que recebe uma string e retorne o numero de palavras que terminem com letra minuscula.
-- ghci> count "Um exemplO de Contagem de PalavraS" -- 4
count = length . filter (isLower . last) . words

-- b) inverses :: [Int] -> [Double]
-- inverso mult. de 4 -> 1/4 que é 0.25
-- fromIntegral converte o y (int) em y (double)
inverses =  map (\y -> 1 / (fromIntegral y)) . filter (\y -> y /= 0)

-- c) odds :: Int -> Int
odds :: Int -> Int
odds =  length . filter (odd) . map (digitToInt) . show

-- d) palindromes :: String -> Int
palindromes = length . filter (\y -> y == reverse y) . words

-- e) isOctNumber :: Int -> Bool
isOctNumber :: Int -> Bool
isOctNumber = all (< 8) . map (digitToInt) . show 