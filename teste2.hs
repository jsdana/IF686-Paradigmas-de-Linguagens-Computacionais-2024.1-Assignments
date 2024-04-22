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


vendas :: Int -> Int
vendas 0 = 12
vendas 1 = 14
vendas 2 = 15
vendas 3 = 20
vendas x = 0

total :: Int -> Int
total x | (x == 0)  = vendas 0 
        | otherwise = vendas x + total (x-1)

--media :: Int -> Float
--media x | (x == -1)  = total /   

cabecalho :: String
cabecalho = "Semana     Venda \n"

printTotal :: Int -> String
printTotal n = "Semana " ++ "   " ++ show(total n)

media :: Int -> Int -> Float
media s tot = fromIntegral (total s) / fromIntegral tot


printTable :: Int -> IO()
printTable n = putStr(cabecalho ++ printTotal n  ++ "\n")

-----------------------------------------

addEspacos :: Int -> String
addEspacos 0 = ""
addEspacos n = " " ++ addEspacos(n-1)

paraDireita :: Int -> String -> String
paraDireita n str = addEspacos n ++ str

printWeek :: Int -> String
printWeek n = paraDireita 2 (show n) ++ paraDireita 6 (show (vendas n)) ++ "\n"

printWeeks :: Int -> String
printWeeks 0 = printWeek 0
printWeeks x = printWeek (x - 1) ++ printWeek x
