data Arbol a
  = H a
  | N a (Arbol a) (Arbol a)
  deriving (Show, Eq)

data Tree
  = EmptyTree
  | Node Char Tree Tree
  deriving (Show, Read, Eq)

data CharTree x
  = Hoja x
  | Nodo x (CharTree x) (CharTree x)
  deriving (Show, Read, Eq)

nHojas :: Arbol a -> Int
nHojas (H _) = 1
nHojas (N x i d) = nHojas i + nHojas d

nNodos :: Arbol a -> Int
nNodos (H _) = 0
nNodos (N x i d) = 1 + nNodos i + nNodos d

preOrder :: Arbol a -> [a]
preOrder (H x) = [x]
preOrder (N x i d) = x : preOrder i ++ preOrder d

postOrder :: Arbol a -> [a]
postOrder (H x) = [x]
postOrder (N x i d) = postOrder i ++ postOrder d ++ [x]

inOrder :: Arbol a -> [a]
inOrder (H x) = [x]
inOrder (N x i d) = inOrder i ++ [x] ++ inOrder d

profundidad :: Arbol a -> Int
profundidad (H x) = 1
profundidad (N x i d) =
  if profundidad i > profundidad d
    then profundidad i + 1
    else profundidad d + 1

hojasChar :: Tree -> Int
hojasChar EmptyTree = 1
hojasChar (Node x i d) = hojasChar i + hojasChar d

hojasUlt :: CharTree x -> Int
hojasUlt (Hoja x) = 1
hojasUlt (Nodo x i d) = hojasUlt i + hojasUlt d

main :: IO ()
main = do
  putStrLn "Numero de hojas, nodos, preorder, postorder y profundidad"
  print (nHojas (N 9 (N 3 (H 2) (H 4)) (H 17)))
  print (nNodos (N 9 (N 3 (H 2) (H 4)) (H 17)))
  print (preOrder (N 9 (N 3 (H 2) (H 4)) (H 17)))
  print (postOrder (N 9 (N 3 (H 2) (H 4)) (H 17)))
  print (inOrder (N 9 (N 3 (H 2) (H 4)) (H 17)))
  print (profundidad (N 9 (N 3 (H 2) (H 4)) (H 17)))

  print "Char tree"
  print (hojasUlt (Nodo 'a' (Hoja 'b') (Hoja 'c')))
  print (nHojas (N 'a' (N 'b' (H 'c') (H 'd')) (H 'e')))
