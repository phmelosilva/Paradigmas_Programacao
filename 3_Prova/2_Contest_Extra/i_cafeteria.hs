satisfazCliente xicaras_cm_cafe_e_leite |  null xicaras_cm_cafe_e_leite = "N"
                                       | otherwise = "S"
main = do
    a <- readLn :: IO Int
    b <- readLn :: IO Int
    c <- readLn :: IO Int
    d <- readLn :: IO Int
    let doses = [d, 2*d..c]
    let xicaras_cm_cafe = map (\dose -> c - dose) doses
    let xicaras_cm_cafe_e_leite = filter (\xicara ->(xicara >= a) && (xicara <= b)) xicaras_cm_cafe
    let resultado = satisfazCliente xicaras_cm_cafe_e_leite
    putStrLn $ resultado