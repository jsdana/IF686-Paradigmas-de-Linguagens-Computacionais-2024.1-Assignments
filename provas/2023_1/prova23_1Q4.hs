data TimeOfDay = AM Int Int -- hora e minuto antes do meio dia
                | PM Int Int -- hora e minuto após o meio dia
                deriving (Show)

data Resultado t = Success t | Fail
                    deriving Show

convertTime :: Int -> Int -> Resultado TimeOfDay
convertTime hora minuto = if (hora >= 0 && hora < 24) && (minuto >= 0 && minuto < 60) then Success (convert hora minuto)
                                                                                      else Fail
    where
        convert :: Int -> Int -> TimeOfDay
        convert hr min | hr == 12 = PM hr min
                       | hr < 12 = AM hr min
                       | hr > 12 = PM (mod hr 12) min
