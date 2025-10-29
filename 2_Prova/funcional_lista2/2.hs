-- Usando uma unica dobra a esquerda, implemente as funcoes abaixo. A implementacao deve ser feita em uma unica  ́linha.

-- a) eval :: [Int] -> Int -> Int, que recebe uma lista de inteiros as e um inteiro x e retorna o valor de p(x), onde
-- Exemplo: ghci> eval [1 -5 6] 2 -- 0
-- [1 -5 6] 2 seria: x² -5x + 6 -> 4 - 10 + 6 = 0
eval (x:xs) y = foldl (\acc c -> (acc * y) + c) 0 (x:xs)

-- b)   
-- ghci> k_factorial 6 2 -- 48
-- 6 * (6-2)! -> 6 * 4 * 2 * 1 
k_factorial n k = foldl (*) 1  

-- c) mean :: [Int] -> Double, que recebe uma lista de inteiros xs e retorna a media aritmetica destes numeros
-- ghci> mean [1..4] -- 2.5
-- 1 + 2 + 3 + 4 = 10, que 10/4 dá 2.5
mean :: [Int] -> Double
mean (x:xs) = (fromIntegral $ foldl (+) 0 (x:xs)) / (fromIntegral $ length (x:xs))

