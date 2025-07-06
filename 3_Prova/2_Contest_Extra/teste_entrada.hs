import Control.Monad (replicateM)

main :: IO ()
main = do
    n <- readLn :: IO Int
    lista <- replicateM n ((map (read :: String -> Int) . words) <$> getLine)
    print lista