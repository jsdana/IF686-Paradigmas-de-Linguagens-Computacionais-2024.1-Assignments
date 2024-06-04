type Pilha t = [t]
exemploPilhaElem :: Pilha Elemento
exemploPilhaElem = [Valor 10, Valor 20, Soma, Valor 30, Multiplica, Valor 7, Soma]

-- exemplo de uso: calc exemploPilhaElem ——> "((10+20)*30)"
data Elemento = Valor Int | Soma | Multiplica deriving (Show)

gera_numing :: Pilha Elemento -> numing
gera_numing pe = calc pe [] 
    where
        calc :: Pilha Elemento -> numing -> numing
        calc [] num = num
        calc ((Valor x): (Valor y): (Soma):as) num = calc as (num ++ "(" ++ show x ++ "+" ++ show y ++ ")" )
        calc ((Valor x): (Valor y): (Multiplica):as) num = calc as (num ++ "(" ++ show x ++ "*" ++ show y ++ ")" )
        calc ((Valor x): Multiplica :as) num = calc as ( "(" ++ num ++ "*" ++ show x ++ ")" )
        calc ((Valor x): Soma :as) num = calc as ( "(" ++ num ++ "+" ++ show x ++ ")" )