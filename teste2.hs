myOr :: Bool -> Bool -> Bool
myOr True x = True
myOr False x = x


maxi :: Int -> Int -> Int
maxi n m | n >= m       = n
         | otherwise    = m

vendas :: Int -> Int
vendas 0 = 30
vendas 1 = 40 
vendas 2 = 50
vendas 3 = 60
vendas 4 = 70
vendas x = 0

totalVendas :: Int -> Int
--totalVendas 0 = vendas 0
--totalVendas n = totalVendas (n-1) + vendas n

totalVendas n   | (n == 0)      = vendas 0
                | otherwise     = vendas n + totalVendas (n-1)



fatorial :: Int -> Int
fatorial n  | (n == 0)      = 1
            | otherwise     = n * fatorial (n - 1)

--fatorial 0 = 1
--fatorial n = fatorial 0 * fatorial (n - 1)

addD :: Int -> Int -> Int
addD a b = 2 * (a + b)
