mapF :: [a -> b] -> a -> [b]
mapF [] _ = []
mapF (f : fs) x = f x : mapF fs x

generateAux :: [a -> a] -> [a -> a] -> a -> [a]
generateAux [] y x = generateAux y y x
generateAux _ [] _ = []
generateAux (f : fs) y x = x : generateAux fs y (f x)

generate :: [a -> a] -> a -> [a]
generate [] _ = []
generate f x = generateAux f f x

main :: IO ()
main = do
  print $ mapF [(* 2), (`div` 2)] 14
  let infiniteList = generate [(+ 3), (* 2), \x -> x -1] 1
  --Para sólo imprimir los primeros 10 elementos
  print $ take 10 infiniteList
