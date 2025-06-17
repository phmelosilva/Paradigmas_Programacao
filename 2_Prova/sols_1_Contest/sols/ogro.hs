solve e d | e > d     = e + d
          | otherwise = 2*(d - e)

main = do
    e <- readLn :: IO Int
    d <- readLn :: IO Int
    print $ solve e d
