localizar :: String -> String -> Int
localizar substr str = localizar' substr str 0
    where
        localizar' :: String -> String -> Int -> Int
        localizar' substr [] index = 0
        localizar' [] str index = 0
        localizar' substr str index | substr == (take (length substr) str)     = index + 1
                                    | otherwise                         = localizar' substr (drop 1 str) (index + 1)  