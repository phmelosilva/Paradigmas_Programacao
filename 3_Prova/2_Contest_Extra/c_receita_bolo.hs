qntBolo tr ov lt = let 
    n1 = tr `div` 2
    n2 = ov `div` 3
    n3 = lt `div` 5
    
    in minimum [n1, n2, n3]

main = do
    input <- getLine
    let valores = (map read . words) input :: [Int]

    let [x, y, z] = valores
    let resultado = qntBolo x y z
    putStrLn $ show (resultado)
