nAmigos g p = let
    fatias = (g*8)+(p*4)
    in fatias-2

main = do
    g <- readLn :: IO Int
    p <- readLn :: IO Int

    let resultado = nAmigos g p

    putStrLn $ show resultado