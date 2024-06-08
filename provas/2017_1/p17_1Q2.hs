{-2) (3.0) Escreva uma função que verifique se uma lista está contida em outra (por exemplo, se uma String ésubstring de outra).
Exemplos: substr "abc" "xyz12abrt" ----> False
          substr "abc" "aaabrsabcfr" --> True
          substr "aab" "aacrtxxeaayb" -> False

-}
substr :: String -> String -> Bool
substr "" str = True
substr sub "" = False
substr sub str | length str < length sub    = False
               | sub == take (length sub) str  = True
               | otherwise                  = substr sub (drop 1 str) 