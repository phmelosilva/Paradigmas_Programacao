solve x n ds = (n + 1)*x - sum ds

main = do
    input <- getContents
    let (x:n:ds) = map (read :: String -> Int) $ lines input
    print $ solve x n ds
