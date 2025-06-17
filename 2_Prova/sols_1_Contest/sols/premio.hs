import Control.Monad

solve = length . takeWhile (<1000000) . scanl (+) 0

main = do
    n <- readLn :: IO Int
    xs <- replicateM n (readLn :: IO Int)
    print $ solve xs
