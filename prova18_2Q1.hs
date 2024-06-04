
--exemplo: encode_rle "WWWWWWBWWWXYYZZZ" ---> "6W1B3W1X2Y3Z"

encode_rle :: String -> String
encode_rle "" = ""
encode_rle (a:as) = encodeHelper as a 1
    where
        encodeHelper :: String -> Char -> Int -> String
        encodeHelper "" chr qtd = show qtd ++ [chr]
        encodeHelper (a:as) chr qtd | a == chr  = encodeHelper as chr (qtd + 1)
                                    | otherwise = show qtd ++ [chr] ++ encodeHelper as a 1