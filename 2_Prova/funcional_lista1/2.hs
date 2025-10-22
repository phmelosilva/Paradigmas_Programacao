-- 2 a)
parity n  | n < 0     = error "A função parity só aceita inteiros positivos!"
          | n == 0    = 0
          | n == 1    = 1
          | otherwise = parity (n - 2)
        
-- 2 b)
remainder a b | a < b = a
              | a > b = remainder (a - b) b
              | otherwise = 0
-- remainder 10 3 tem quer ser igual a 1

-- 2 c)
quotient a b | a < b = 0
             | a >= b = 1 + quotient (a-b) b 

-- quotient 7 3 tem que ser igual a 2 (quotient 7 3 com 1+1 do quotient 4 3)
-- 2 d)


-- 2 e)

-- 2 f)

-- 2 g)

-- 2 h)