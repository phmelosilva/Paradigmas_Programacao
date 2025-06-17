solve n | n < 18    = 15
        | n < 60    = 30
        | otherwise = 20

main = do
    a <- readLn :: IO Int
    b <- readLn :: IO Int
    print $ solve a + solve b
