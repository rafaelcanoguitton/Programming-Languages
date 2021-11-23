data Tree a
  = Node (Tree a) a (Tree a)
  | Nil
  deriving (Eq, Show)

foldTree :: (b -> a -> b -> b) -> b -> Tree a -> b
foldTree f acc Nil = acc
foldTree f acc (Node l x r) = f (foldTree f acc l) x (foldTree f acc r)

mapTree :: (a -> b) -> Tree a -> Tree b
mapTree f Nil = Nil
mapTree f (Node l x r) = Node (mapTree f l) (f x) (mapTree f r)

maxTree :: Ord a => Tree a -> a
maxTree Nil = error "maxTree undefined for the empty tree"
maxTree (Node l x r) =foldTree (\x y z -> max x (max y z)) x (Node l x r)

main :: IO ()
main = do
  let t = Node (Node (Node Nil 3 Nil) 1 (Node Nil 5 Nil)) 0 (Node Nil 2 (Node Nil 4 Nil))
  print $ foldTree (\x y z -> x + y + z) 0 t
  print $ mapTree (*2) t
  print $ maxTree t