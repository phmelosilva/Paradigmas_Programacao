calcPedacos lado | lado >= 2 = quebraPedacos lado 1 where
    quebraPedacos l n | l < 2 = n
    quebraPedacos l n | otherwise = quebraPedacos l' n' where
        l' = l `div` 2
        n' = n * 4

main = do
    l <- readLn :: IO Int
    putStrLn $ show (calcPedacos l)