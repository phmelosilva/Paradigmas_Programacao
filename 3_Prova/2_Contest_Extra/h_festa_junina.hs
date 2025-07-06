main = do
    escola <- readLn :: IO Int
    mercado <- readLn :: IO Int
    loja <- readLn :: IO Int

    print ((abs (escola-mercado)) + (abs (mercado-loja)) + (abs (escola-loja)))