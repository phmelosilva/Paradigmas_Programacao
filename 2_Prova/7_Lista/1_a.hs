-- No topo do seu arquivo Haskell, você precisa importar Data.Char
import Data.Char
xx
-- A função count: String -> Int
-- Recebe uma string e retorna o número de palavras que terminam com letra minúscula.
count :: String -> Int
count = length . filter (isLower . last) . words