merge :: Ord t => [t] -> [t] -> [t]
merge [] lista = lista
merge lista [] = lista
merge (a:as) (b:bs) | a < b = [a] ++ merge as (b:bs)
                    | otherwise = [b] ++ merge (a:as) bs