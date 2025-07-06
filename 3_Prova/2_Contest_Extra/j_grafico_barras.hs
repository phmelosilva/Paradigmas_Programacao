desenha_matriz = putStr . unlines . map unwords . map (map show)

desenha_linha k yi = map (\x -> if x >= k then 1 else 0) yi

grafico_barras h xi = map (\x -> desenha_linha x xi) niveis where 
    niveis = [h, h-1..1]

main = do
    n <- readLn :: IO Int
    n2 <- getLine
    let xi = [read x :: Int | x <- words n2]
    let h = maximum xi
    desenha_matriz (grafico_barras h xi)