foldl (\acc x -> (x == 5) (acc - 1000) (acc + x^5)) 0 [1..5]
foldr (\x acc -> acc + x^5) 0 [1..5]

((0 + 1^5) + 2^5) + 3^5
0 * 1 * 2 * [3..5]

foldl *x 0 [1..n]
