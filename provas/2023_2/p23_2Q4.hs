-- exemplo de uso: calcula exemploPilhaElem ——> 900

type Pilha t = [t]
exemploPilhaElem :: Pilha Elemento
exemploPilhaElem = [Valor 10, Valor 20, Soma, Valor 30, Multiplica]

data Elemento = Valor Int | Soma | Multiplica deriving (Show)

calcula :: Pilha Elemento -> Int
calcula pe = calc pe 0 
    where
        calc :: Pilha Elemento -> Int -> Int
        calc [] num = num
        calc ((Valor x): (Valor y): (Soma):as) num = calc as (x + y)
        calc ((Valor x): (Valor y): (Multiplica):as) num = calc as (x*y)
        calc ((Valor x): Multiplica :as) num = calc as ( num * x )
        calc ((Valor x): Soma :as) num = calc as ( num + x )