data Comando = ParaFrente Int
             | ParaTras Int
             | Escreva chr
             deriving (Show, Eq)

posicaofinal :: String -> [Comando] -> Int 
posicaofinal str listaComando = foldl (\index comando -> testa str comando index ) 0 listaComando + 1
    where
        testa :: String -> Comando -> Int -> Int
        testa str (ParaFrente x) idx | (idx + x) < (length str - idx) = (idx + x)
                                        | otherwise                      = idx
        testa str (ParaTras x) idx    = (idx - x)
        testa str (Escreva chr) idx   = idx