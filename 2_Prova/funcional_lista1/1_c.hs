median [] = Nothing
median [_] = Nothing
median [_, _] = Nothing
median (x:xs) | mod lengthArray 2 == 0 = Just $ head $ drop ((lengthArray `div` 2) - 1) (x:xs)
              | otherwise = Just $ head $ drop (lengthArray `div` 2) (x:xs)
    where lengthArray = length (x:xs)
