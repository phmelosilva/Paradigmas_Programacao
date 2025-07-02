parity :: Int -> Int
parity n | mod n 2 == 0 = 0
         | otherwise = 1

remainder :: Int -> Int -> Int
remainder a b | a >= b = remainder (a-b) b
              | a < b = a

quotient :: Int -> Int -> Int
quotient a b | a >= b = 1 + quotient (a-b) b
             | a < b = 0