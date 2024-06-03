{-1 ) (2.5) Defina uma função que insira uma lista (primeiro parâmetro) 
em uma outra lista (segundo parâmetro) em uma posição informada (terceiro parâmetro). 
Se a posição por menor ou igual a zero insira a primeira lista no início da segunda lista;
se for igual ou maior que o tamanho da segundo lista, insira ela no final.

insert :: [t] -> [t] -> Int -> [t]

exemplo: insert "abc" "xyz 123 def" 4 --> "xyz abc123 def"
exemplo: insert "abc" "xyz 123 def" 0 --> "abcxyz 123 def"
exemplo: inesrt [1,2] [3,4,5,6] 10 --> [3,4,5,6,1,2]
-}
insert :: [z] -> [z] -> Int -> [z]
insert (a:as) (b:bs) x | x <= 0                 = (a:as) ++ (b:bs)
                       | x >= (length (b:bs))   = (b:bs) ++ (a:as)
                       | otherwise              = take x (b:bs) ++ (a:as) ++ drop x (b:bs)