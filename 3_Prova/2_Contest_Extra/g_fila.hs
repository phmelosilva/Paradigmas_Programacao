import Control.Monad (replicateM)

qntNaoEnxergados n y xs maiorAluno = totalAlunosNaoEnxergados 
    where totalAlunosNaoEnxergados = fst (foldl (\(acc, maior) x -> if maior >= x then (acc+1,maior) else (acc, x)) (0, maiorAluno) xs) 

main = do
    n <- readLn :: IO Int
    an <- getLine
    let alturas = [read x :: Int | x <- words an]
    let maiorAluno = last alturas
    let fila = reverse ( init alturas)
    putStrLn $ show (qntNaoEnxergados n 0 fila maiorAluno)