
--exemplo: decode_rle "6W1B3W1X2Y3Z" ---> "WWWWWWBWWWXYYZZZ"

charToInt :: Char -> Int
charToInt ch = fromEnum ch - fromEnum '0'

decode_rle :: String -> String
decode_rle "" = ""
decode_rle (num:letra:xs) = decodeHelper xs (charToInt num) letra
    where
        decodeHelper :: String -> Int -> Char -> String
        decodeHelper [] qtd chr = replicate qtd chr
        decodeHelper (n:l:xs) qtd chr = replicate qtd chr ++ decodeHelper xs (charToInt n) l