data Comando = ParaFrente Int
             | ParaTras Int
             | Escreva chr
             deriving (Show, Eq)

estadofinal :: String -> [Comando] -> String
estadofinal str listaComando = getString (testaEscreve str listaComando 0)
    where
        testaEscreve :: String -> [Comando] -> Int -> (Int, String)
        testaEscreve str [] idx = (idx, str)
        testaEscreve str ((ParaFrente x): xs) idx | (idx + x) < (length str - idx)  = testaEscreve str xs (idx + x)
                                                  | otherwise                       = (idx, str)
        testaEscreve str ((ParaTras x): xs) idx = testaEscreve str xs (idx - 1)
        testaEscreve str ((Escreva x): xs) idx = testaEscreve ((take (idx) str) ++ [x] ++ (drop (idx + 1) str)) xs idx

        getString :: (Int, String) -> String
        getString (x, y) = y
