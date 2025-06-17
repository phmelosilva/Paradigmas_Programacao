solve n ts p m | countSize 1 >= p && countSize 2 >= m = "S"
               | otherwise                            = "N"
               where
                   countSize s = length $ filter (==s) ts

main = do
    n <- readLn :: IO Int
    s <- getLine
    let ts = map (read :: String -> Int) $ words s
    p <- readLn :: IO Int
    m <- readLn :: IO Int
    putStrLn $ solve n ts p m
