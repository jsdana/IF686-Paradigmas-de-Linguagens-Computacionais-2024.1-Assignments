{- Defina uma função que, dado um valor inteiro s e
um número de semanas n, retorna quantas
semanas de 0 a n tiveram vendas iguais a s. Para
resolver esta questão, primeiro construa uma
definição simples para vendas. -}

vendas :: Int -> Int
vendas 0 = 0
vendas 1 = 10
vendas 2 = 10
vendas 3 = 10
vendas n = n * 10

vendaIgual :: Int -> Int -> Int
vendaIgual s n  | (s == vendas n)  = 1
                | otherwise        = 0

totalIguais :: Int -> Int -> Int
totalIguais s n | (n == 0)  = vendaIgual s 0
                | otherwise = vendaIgual s n + totalIguais s (n-1)

{-Defina uma função que, dado um número inteiro,
determina se ele é primo ou não.-}

isPrimeN :: Int -> Bool
isPrimeN n  | (n <= 1)   = False
            | (n == 2)   = True
            | ((mod n 2) == 1) = True
            | otherwise  = True


{- maxi :: Int -> Int -> Int
maxi n m    | (n > m)   = n 
            | otherwise = m -}

maxiThree :: Int -> Int -> Int -> Int
maxiThree m n p = maxi p (maxi m n)
    where maxi x y |(x > y)    = x
                   | otherwise = y

{- maxiThree :: Int -> Int -> Int -> Int
maxiThree m n p | ((m>=n) && (m>=p))  = m
                | ((n>=m) && (n>=p))  = n
                | otherwise           = p -}

equalCount :: Int -> Int -> Int -> Int -> Int
equalCount valor x y z = testa valor x + testa valor y + testa valor z
    where testa a b | a == b    = 1
                    | otherwise = 0


maxThreeOccurs :: Int -> Int -> Int -> (Int, Int)
maxThreeOccurs m n p = (mx, eqCount)
    where mx = maxiThree m n p
          eqCount = equalCount mx m n p
