
data KeyTree = Node Char Char KeyTree KeyTree 
             | Empty
chaveParcial :: KeyTree
chaveParcial = Node 'h' 'u' (Node 'c' 'p' (Node 'b' 'o' (Node 'a' 'n' Empty Empty) Empty)
                                          (Node 'e' 'r' Empty Empty))
                            (Node 'l' 'y' Empty (Node 'm' 'z' Empty Empty))

--exemplo: cipherT chaveParcial "hello*hello" = "uryyo*uryyo"
cipherT :: KeyTree -> String -> String
cipherT arvore [] = []
cipherT arvore (a:as) = [cipherChar arvore a] ++ cipherT arvore as 
    where
        cipherChar :: KeyTree -> Char -> Char
        cipherChar Empty chr = chr
        cipherChar (Node a b left right) chr | chr == a     = b 
                                             | chr < a      = cipherChar left chr
                                             | otherwise    = cipherChar right chr
