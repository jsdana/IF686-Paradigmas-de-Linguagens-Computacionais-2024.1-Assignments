
{-3) (2.5) Dado o tipo de dados abaixo, que representa as horas do dia em formato de
12h pela manhã (AM) e 12h a partir de meio dia (PM), defina uma função em que
sejam adicionados minutos a uma hora do dia, considerando a possível mudanca
de turno. 
assuma que o formato da hora é vaálido e que serão somados no máximo 719 minutos.-}

--exemplo: somar 30 minutos ás 11:59 da manhã:
--exemplo: somaMinutos (AM 11 59) 30 --> PM 12 29
--exemplo: somaMinutos (PM 10 28) 22 --> PM 10 

data TimeOfDay = AM Int Int -- hora e minuto antes do meio dia
                | PM Int Int -- hora e minuto após o meio dia
                deriving (Show)

calculaTempo :: Int -> String-> TimeOfDay
calculaTempo total "AM" = (AM (mod (div total 60) 12) (mod total 60))
calculaTempo total "PM" = (PM (if hora == 0 then 12 else hora) (mod total 60))
    where 
        hora = (mod (div total 60) 12)

tempoTotal :: Int -> Int -> Int -> Int
tempoTotal hora minuto acrescimo = hora*60 + minuto + acrescimo

somaMinutos :: TimeOfDay -> Int -> TimeOfDay
somaMinutos entrada acres = case entrada of 
                            (AM hr min) -> if (tempoTotal hr min acres >= 720)  then calculaTempo (tempoTotal hr min acres) "PM"
                                                                           else calculaTempo (tempoTotal hr min acres) "AM"
                            (PM hr min) -> if (tempoTotal hr min acres >= 720)  then calculaTempo (tempoTotal hr min acres) "AM"
                                                                           else calculaTempo (tempoTotal hr min acres) "PM"

                                                                    