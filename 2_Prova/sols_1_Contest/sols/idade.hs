import Data.List
import Control.Monad

solve = head . tail . sort

main = do
    xs <- replicateM 3 (readLn :: IO Int)
    print $ solve xs
