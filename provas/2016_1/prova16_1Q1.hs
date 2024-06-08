type Chave = [(Char, Char)]

-- a função zip combina duas listas elemento por elemento criando uma lista de tuplas 
rot13Parcial :: Chave
rot13Parcial = zip ['a'..'m'] ['n'..'z']

-- implemente a função para realizar a substituição rot13Parcial em uma palavra
-- exemplo: cipher rot13Parcial "hello*hello" = "uryyo*uryyo"

cipher :: Chave -> String -> String
cipher chave str = foldl (\coded chr -> coded ++ [cipherChar chave chr]) "" str
    where
        cipherChar :: Chave -> Char -> Char
        cipherChar [] chr = chr
        cipherChar ((c1, c2):xs) chr | chr == c1    = c2
                                     | otherwise    = cipherChar xs chr