
{-
1) (2.0) Escreva uma funcao locate, que recebe como entrada um elemento e uma lista de elementos, e retorna a localização (o índice) daquele elemento dentro da lista. 
A primeira posição na lista tem índice 0 (zero).
Caso o elemento não pertença à lista, deve ser retornado o valor (-1).
Exemplos: locate 'x' "abcdewxyz" ------>  6
          locate 5   [5,98,7,32] ------>  0
          locate True [False, False] --> -1
-}

locate :: Eq t => t -> [t] -> Int
locate elem [] = -1
locate elem lista = loc elem lista 0
    where
        loc :: Eq t => t -> [t] -> Int -> Int
        loc el [] index = -1
        loc el (a:as) index | a == el   = index
                            | otherwise = loc el as (index + 1)


