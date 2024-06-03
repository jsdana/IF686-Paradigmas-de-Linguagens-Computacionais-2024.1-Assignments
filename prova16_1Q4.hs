type Chave = [(Char, Char)]
type FuncaoChave = (Char -> Char)

rot13Parcial :: Chave
rot13Parcial = zip ['a'..'m'] ['n'..'z']

chaveToFuncaoChave :: Chave -> FuncaoChave
chaveToFuncaoChave chave = cipherChar chave
    where
        cipherChar :: Chave -> Char -> Char
        cipherChar [] chr = chr
        cipherChar ((c1, c2):xs) chr | chr == c1    = c2
                                     | otherwise    = cipherChar xs chr

--exemplo: cipherf (chaveToFuncaoChave rotParcial) "hello*hello" = uryyo*uryyo
cipherf :: FuncaoChave -> String -> String
cipherf fchave [] = ""
cipherf fChave (a:as) = [fChave a] ++ cipherf fChave as