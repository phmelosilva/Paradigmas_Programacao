-- sumTomadas num = foldl (+) 0 num

-- checaIntervalo num = 2 <= num && x <= 6
checaIntervalo :: Integer -> Maybe Integer
checaIntervalo num = if num >= 2 && num <= 6 then Just num else Nothing

main = do 
    entrada <- getLine

    -- Lendo entrada como um array de inteiros
    let valores = (map read . words) entrada :: [Integer]

    let numTomadas = sequence (map checaIntervalo valores)

    case numTomadas of 
        Nothing -> putStrLn "Entrada inválida"
        Just numTomadas -> do
            -- Calculando o número total de tomadas
            let numTomadasTotal = sum numTomadas - 3
            -- Exibindo o resultado
            putStrLn $ show numTomadasTotal
    
    -- let numNotebooks = sum numTomadas - 3
