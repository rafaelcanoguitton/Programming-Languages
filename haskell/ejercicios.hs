-- Construya una función que retorna el n-ésimo elemento de la secuencia de Fibonacci.
fibonacci :: Integer -> Integer
fibonacci 0 = 0
fibonacci 1 = 1
fibonacci n = fibonacci (n -1) + fibonacci (n -2)
-- Escribir una función que borre la primera ocurrencia de un entero de una lista:
-- delete :: Int -> [Int] -> [Int]
-- Por ejemplo: delete 2 [1,2,3,2,1] = [1,3,2,1]
delete :: Integer -> [Integer] -> [Integer]
delete d [] = []
delete x (y : ys) = if x == y then ys else y : delete x ys
-- Cree una función que dada una lista de números retorna la lista de los impares (puede usar la función predefinida odd).
-- listaImpares::[Integer]->[Integer]
listaImpares :: [Integer] -> [Integer]
listaImpares [] = []
listaImpares (x : xs)
  | odd x = x : listaImpares xs
  | otherwise = listaImpares xs
-- Escribir una función para calcular el mínimo de una lista:
-- mini :: [Int] -> Int
mini :: [Integer] -> Integer
mini [] = -1
mini [x] = x
mini (x : xs) = if x < mini xs then x else mini xs
main :: IO ()
main = do
  let numeros = [9,7,2,35,4,78,352,5]
  putStrLn "Para array"
  print numeros
  putStrLn "Mínimo:"
  print (mini numeros)
  putStrLn "Impares:"
  print (listaImpares numeros)
  putStrLn "Borrando 2:"
  print (delete 2 numeros)
  putStrLn "Fibonacci de 10:"
  print (fibonacci 10)