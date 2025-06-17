main = do
    input <- getLine
    let xs = [read x :: Int | x <- words input]
    print $ sum xs - 3
