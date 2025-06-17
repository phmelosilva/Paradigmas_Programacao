solve xs = f (0, 0) where
    i1 (x, y) = (1 - x, y)
    i2 (x, y) = (1 - x, 1 - y)
    fs = map (\x -> if x == 1 then i1 else i2) xs
    f = foldl (.) id fs

main = do
    n <- readLn :: IO Int
    s <- getLine
    let xs = map (read :: String -> Int) $ words s
    let (a, b) = solve xs
    print a
    print b
