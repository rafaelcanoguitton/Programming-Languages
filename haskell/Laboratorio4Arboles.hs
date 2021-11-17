--Ejercicio1
--Funciona para caracteres porque el tipo de dato char es
--Compatible con Show y Eq
data Arbol a
  = H a
  | N a (Arbol a) (Arbol a)
  deriving (Show, Eq)

listOfNodes :: Arbol a -> [a]
listOfNodes (H a) = [a]
listOfNodes (N a i d) = [a] ++ listOfNodes i ++ listOfNodes d

--Ejercicio2
preOrder :: Arbol a -> [a]
preOrder (H a) = [a]
preOrder (N a i d) = [a] ++ preOrder i ++ preOrder d

postOrder :: Arbol a -> [a]
postOrder (H a) = [a]
postOrder (N a i d) = postOrder i ++ postOrder d ++ [a]

--Ejercicio3
similarTree :: Eq a => Arbol a -> Arbol a -> Bool
similarTree (H a) (H b) = a == b
similarTree (N a i d) (N b j e) = a == b && similarTree i j && similarTree d e

--Ejercicio4
data ArBinEA a
  = Vacio
  | Hoja a
  | NoEA (Char, ArBinEA a, ArBinEA a)
  deriving (Show)

ea :: ArBinEA Float
ea = NoEA ('+', NoEA ('*', Hoja 10, Hoja 5), Hoja 7)

operateTree:: ArBinEA Float -> Float
operateTree Vacio = 0
operateTree (Hoja a) = a
operateTree (NoEA (c, i, d)) =
  case c of
    '+' -> operateTree i + operateTree d
    '*' -> operateTree i * operateTree d
    '/' -> operateTree i / operateTree d
    '-' -> operateTree i - operateTree d

main::IO ()
main= do
    print "Ejercicio1"
    print $ listOfNodes (N "a" (H "b") (H "c"))
    print "Ejercicio2"
    print $ preOrder (N "a" (H "b") (H "c"))
    print $ postOrder (N "a" (H "b") (H "c"))
    print "Ejercicio3"
    print $ similarTree (N "a" (H "b") (H "c")) (N "a" (H "b") (H "c"))
    print "Ejercicio4"
    print $ operateTree ea