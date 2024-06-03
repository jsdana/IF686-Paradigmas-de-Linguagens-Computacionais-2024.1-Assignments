-- faça uma função que inverta a ordem dos pares de uma chave
type Chave = [(Char, Char)]

rot13Parcial :: Chave 
rot13Parcial = zip ['a'..'m'] ['n'..'z']

inverteChave :: Chave -> Chave
inverteChave [] = []
inverteChave ((c1, c2) : xs) = (c2, c1) : inverteChave xs