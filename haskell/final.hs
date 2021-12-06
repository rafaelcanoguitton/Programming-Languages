alfabetoMin :: [Char]
alfabetoMin = ['a' .. 'z']

alfabetoMay :: [Char]
alfabetoMay = ['A' .. 'Z']

cifrado :: [Char] -> Int -> [Char]
cifrado [] _ = []
cifrado (x : xs) n
  | x `elem` alfabetoMin = alfabetoMin !! ((searchInList alfabetoMin x + 2 + n) `mod` 26) : cifrado xs n
  | x `elem` alfabetoMay = alfabetoMay !! ((searchInList alfabetoMay x + 2 + n) `mod` 26) : cifrado xs n
  | otherwise = x : cifrado xs n

searchInList :: [Char] -> Char -> Int
searchInList [] _ = -1
searchInList (x : xs) y
  | x == y = 0
  | otherwise = 1 + searchInList xs y

main :: IO ()
main = do
  print "Ingrese una frase"
  frase <- getLine
  print "Ingrese el desplazamiento"
  desplaza <- getLine
  let desplazamiento = read desplaza :: Int
  print ("Nuestra palabra sin cifrar es: " ++ frase)
  print ("Nuestra palabra cifrada es: " ++ cifrado frase desplazamiento)
