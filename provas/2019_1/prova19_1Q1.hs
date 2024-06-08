meio :: String -> Int -> Int -> String
meio str inicio tamanho = if (inicio > 0 && inicio < length str) then take tamanho (drop (inicio - 1) str) 
                                                                 else "" 