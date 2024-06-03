type FuncaoChave = (Char -> Char)

trocaSoLetraL :: FuncaoChave
trocaSoLetraL  'l' = 'b'
trocaSoLetraL c = c

--exemplo: cipherf trocaSoLetraL "hello*hello" = "hebbo*hebbo"
cipherf :: FuncaoChave -> String -> String
cipherf fchave [] = ""
cipherf fChave (a:as) = [fChave a] ++ cipherf fChave as
