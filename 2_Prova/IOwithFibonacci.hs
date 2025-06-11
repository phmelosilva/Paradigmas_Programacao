-- Arquivo: Fibonacci.hs

-- Parte Pura: A lógica de negócio
-- Esta função não sabe nada sobre I/O.
fib :: Integer -> Integer
fib 0 = 0
fib 1 = 1
-- Aviso: Esta implementação é muito lenta para números grandes (> 35)
-- devido às chamadas recursivas repetidas.
fib n = fib (n - 1) + fib (n - 2)

-- Parte Impura: A interação com o mundo exterior
-- Esta função lida com o terminal.
main :: IO ()
main = do
    putStrLn "Digite um número para calcular a sequência de Fibonacci:"

    -- Executa a ação de I/O 'getLine' e armazena o resultado em 'entrada'
    entrada <- getLine

    -- Converte a String de entrada para um número (computação pura)
    let numero = read entrada :: Integer

    -- Chama a função pura para fazer o cálculo
    let resultado = fib numero

    -- Converte o resultado de volta para String e o imprime na tela (ação de I/O)
    putStrLn $ "O resultado para " ++ show numero ++ " é: " ++ show resultado