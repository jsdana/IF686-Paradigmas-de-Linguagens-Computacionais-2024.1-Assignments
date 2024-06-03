data Instrucao =  PUSH Int -- Empila um valor inteiro
                | POP -- Desempilha o valor do topo da pilha
                | ADD -- lê os dois valores no topo da pilha e deixa a soma deles no topo
                | SUB -- lê os dois valores no topo da pilha e deixa a subtração deles no topo
                | DUP -- duplica o topo da pilha
                deriving (Show)

type Pilha = [Int]

-- eval1 : avalia uma única instrução em uma dada pilha
eval1 :: Instrucao -> Pilha -> Pilha
eval1 (PUSH x) [] = [x]
eval1 (PUSH x) pilha = x : pilha
eval1 _ [] = []
eval1 POP (a:as) = as 
eval1 ADD (a:b:xs) = (a + b) : xs
eval1 SUB (a:b:xs) = (a - b) : xs
eval1 DUP (a:as) = (a:a:as)

evalProg :: [Instrucao] -> Pilha
evalProg lista = foldl (\pilha instr -> eval1 instr pilha) [] lista

data Expr = Literal Int 
          | Soma Expr Expr
          | Subtrai Expr Expr
          | Dobra Expr 

translate :: Expr -> [Instrucao]
translate expressao = reverse (translate' expressao)
    where
        translate' :: Expr -> [Instrucao]
        translate' (Literal x) = [PUSH x]
        translate' (Soma x y) = ADD : (translate' (x) ++ translate' (y))
        translate' (Subtrai x y) = SUB: (translate' (x) ++ translate' (y))
        translate' (Dobra x) = DUP : (translate' x)