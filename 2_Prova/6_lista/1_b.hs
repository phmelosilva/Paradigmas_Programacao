body [] = Nothing
body [x] = Nothing
body [x, y] = Nothing
body (x:xs) = Just ( take ((length xs)-1) xs )