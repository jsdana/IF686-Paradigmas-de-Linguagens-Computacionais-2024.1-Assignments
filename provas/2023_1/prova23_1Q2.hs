
{-2) (2.5) Defina uma função que informa em que posição um elemento 
(primeiro parametro) ocorre um uma lista (segundo parâmetro). 
Caso ele não ocorra você deve retornar o resultado (-1).
Considere que primeira posição de uma lista é a posição zero.

search :: Eq t => t -> [t] - > Int

exemplo: search 'a' "xy wxy ab def abc xyz" ---> 7
exemplo: search 'z' "xy wxy ab def abc xyz" ---> 20
exemplo: search 1 [1,2,3,4,5,6,7,8,22] ---> 0
exemplo: search 'k' "xy wxy ab dxefy abc xyz" ---> -}

search :: Eq z => z -> [z] -> Int
search x lista = searchIndex 0 x lista
    where
        searchIndex :: Eq z => Int -> z -> [z] -> Int
        searchIndex n x [] = -1
        searchIndex n x (a:as) | a == x = n
                               | otherwise = searchIndex (n + 1) x as