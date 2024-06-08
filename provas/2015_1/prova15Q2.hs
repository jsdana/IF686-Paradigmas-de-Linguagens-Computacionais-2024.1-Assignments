
-- QUESTAO 2    
-- o sorteio da megasena é uma lista de números
-- os cartoes de aposta sao uma lista de lista de numeros

-- funcao premiados retorna o numero de premiados com a sena

type Resultado = [Int]
type Jogos = [[Int]]

premiados :: Resultado -> Jogos-> Int
premiados resultado [] = 0
premiados resultado (j:js) =  premiados' resultado j + premiados resultado js
    where 
        premiados' :: Resultado -> [Int] -> Int
        premiados' [] [] = 1
        premiados' (a:as) (b:bs) | a == b       = premiados' as bs
                                 | otherwise    = 0

-- a função acertos retorna a quantidade de acertos de cada cartão
acertos :: Resultado -> Jogos -> [Int]
acertos resultado [] = []
acertos resultado (j:js) = acertos' resultado j : acertos resultado js
    where
        acertos' :: Resultado -> [Int] -> Int
        acertos' [] [] = 0
        acertos' (a:as) (b:bs) | a == b     = 1 + acertos' as bs
                               | otherwise  = acertos' as bs

-- a função numPremios retorna uma tupla com tres inteiros contendo a quantidade de cartões premiados com 4, 5 e 6 acertos 
numPremios :: Resultado -> Jogos -> (Int, Int, Int)
numPremios resultado jogos = (length $ filter (\x -> x==4) listaAcertos,
                              length $ filter (\x -> x==5) listaAcertos,
                              length $ filter (\x -> x==6) listaAcertos)
    where 
        listaAcertos = acertos resultado jogos

main = do 
       let sorte = [03, 07, 26, 33, 48, 52]
       let cartoes = [[03, 07, 26, 33, 47, 52], [04, 10, 26, 33, 47, 52], [03, 07, 26, 33, 48, 52], [01, 07, 26, 33, 48, 50], [03, 07, 26, 33, 48, 52]]
       let resulta = numPremios sorte cartoes
       print resulta