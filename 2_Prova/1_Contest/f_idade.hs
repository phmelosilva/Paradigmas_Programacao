import Control.Monad (replicateM)
import Data.List

idadeCamila [i1, i2, i3] =  i2

main = do
    idades <- replicateM 3 (readLn :: IO Int)

    let [i1, i2, i3] = idades

    putStrLn $ show (idadeCamila (sort idades))