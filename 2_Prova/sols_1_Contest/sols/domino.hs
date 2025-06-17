main = do
    n <- readLn :: IO Int
    print $ div ((n + 1) * (n + 2)) 2
