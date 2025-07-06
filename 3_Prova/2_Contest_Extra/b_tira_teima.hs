coord x y = if (x >= 0 && x <= 432) && (y >= 0 && y <= 468)
            then "dentro"
            else "fora"

main = do
    input <- getLine
    let valores = (map read . words) input :: [Int]

    let [x, y] = valores
    let resultado = coord x y

    putStrLn resultado