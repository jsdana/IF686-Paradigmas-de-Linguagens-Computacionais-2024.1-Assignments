{-
(- 4) (2.5) Ao invés de uma busca linear no dicionário representado como uma lista, ele pode ser representado
por uma árvore binária, acelerando a busca. Implemente a função codeTree abaixo que, ao invés de receber o
dicionário como uma lista, o recebe como uma árvore de busca binária.

decodeTree meu meuDicionarioT teste ---> "a casa tinha cafe mas nao era uma cafeteria, a casa era uma sorveteria"
-}

type DicionarioT = Tree Int String
data Tree chave valor = Node chave valor (Tree chave valor) (Tree chave valor)
                      | Leaf

teste = "a 1 tinha 3 mas nao 6 7 34, a 1 6 7 sorve4"

meuDicionarioT :: DicionarioT
meuDicionarioT = Node 4 "teria" (Node 3 "cafe" (Node 1 "casa" Leaf Leaf) Leaf)
                                (Node 6 "era" Leaf (Node 7 "uma" Leaf Leaf))

charToInt :: Char -> Int
charToInt chr | chr >= '0' && chr <= '9'    = fromEnum chr - fromEnum '0'
              | otherwise                   = -1

charInDict :: DicionarioT -> Int -> String
charInDict Leaf n = ""
charInDict (Node num word (leftTree) (rightTree)) n | n == num    = word
                                                    | otherwise   = charInDict leftTree n ++ charInDict rightTree n
decodeTree :: DicionarioT -> String -> String
decodeTree dic [] = ""
decodeTree dic (a:as) | (charInDict dic (charToInt a)) == ""    = [a] ++ decodeTree dic as
                  | otherwise                               = (charInDict dic (charToInt a)) ++ decodeTree dic as