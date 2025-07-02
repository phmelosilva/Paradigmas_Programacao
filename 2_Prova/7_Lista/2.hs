eval :: [Int] -> Int -> Int
eval as x = foldl (\a b -> a*x + b) 0 as

-- Devemos obrigatoriamente usar o foldl. Não pode usar a função "product"
k_factorial :: Int -> Int -> Int
k_factorial n k = foldl (*) 1 [n, n-k .. 1]

mean :: [Int] -> Double
mean xs = fromIntegral total / fromIntegral qtd
    where (total, qtd) = foldl (\(soma, n) x -> (soma + x, n + 1)) (0, 0) xs

-- Devemos obrigatoriamente usar o foldl. Não pode usar a função "sum"
arithmetic_progression_sum :: Int -> Int -> Int -> Int
arithmetic_progression_sum n a q = foldl (+) 0 [a, a+q .. (n-1)*q+a]

exp_approx :: Double -> Double
exp_approx x = res where (res, _, _) = foldl (\(acc, denom, divi) i -> (acc+x*(denom/divi), denom*x, divi*(i+1))) (1, 1, 1) [1 .. 10] 

main = do
    print $ eval [1, -5, 6] 2
    print $ k_factorial 6 2
    print $ mean [1 .. 4]
    print $ arithmetic_progression_sum 10 1 2
    print $ exp_approx 1
