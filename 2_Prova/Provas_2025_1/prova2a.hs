import Data.List

-- Questão 1: Implemente, em Haskell, uma função s :: Int -> Int que receba um natural n e que
-- retorne a soma de todos os números ímpares no intervalo [1..n].
s n = foldl (+) 0 $ filter odd [1..n]
-- 1 2 3 4

-- Questão 2: Implemente, em Haskell, de forma tácita e em apenas uma única linha, a função parcial
-- f :: [Int] -> Int que receba uma lista de inteiros e que retorne o terceiro menor positivo da lista,
-- se existir. Dica: use a função sort do módulo Data.List
f :: [Int] -> Int
f = head . drop 2 . sort . filter (>0)

-- Questão 3: Implemente, em Haskell, usando uma única chamada de uma dobra à esquerda e em apenas
-- uma única linha, a função parcial pgsum :: Double -> Double, que receba um número real x, com
-- |x| < 1, e que retorne a aproximação da soma dos termos de uma progressão geométrica de razão x

pgsum = 