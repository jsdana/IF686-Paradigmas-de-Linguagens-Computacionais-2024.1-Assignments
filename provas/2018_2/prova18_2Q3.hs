
-- exemplo: decode meuDicionario teste ---> "a casa tinha cafe mas nao era uma cafeteria, a casa era uma sorveteria"

type Dicionario = [(Int, String)]

meuDicionario :: Dicionario
meuDicionario = [(1, "casa"), (3, "cafe"), (4, "teria"), (6, "era"), (7, "uma")]
teste = "a 1 tinha 3 mas nao 6 7 34, a 1 6 7 sorve4"

charToInt :: Char -> Int
charToInt chr | chr >= '0' && chr <= '9'    = fromEnum chr - fromEnum '0'
              | otherwise                   = -1

charInDict :: Dicionario -> Int -> String
charInDict [] n = ""
charInDict ((num, word):xs) n | n == num    = word
                              | otherwise   = charInDict xs n

decode :: Dicionario -> String -> String
decode dic [] = ""
decode dic (a:as) | (charInDict dic (charToInt a)) == ""    = [a] ++ decode dic as
                  | otherwise                               = (charInDict dic (charToInt a)) ++ decode dic as