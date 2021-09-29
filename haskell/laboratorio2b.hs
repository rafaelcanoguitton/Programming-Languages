-- 1) unaCifra : recibe un entero devuelve True si el entero se encuentra entre 0 y 9.
unaCifra x = (0 <= x) && (x <= 9)

-- 2) segundoNum : dada una terna de enteros devuelve su segundo elemento.
segundoNum :: [Int] -> Int
segundoNum [] = 0
segundoNum [_] = 0
segundoNum (x : y : z) = y

-- 3) ordenaNum : dados dos enteros los ordena de menor a mayor.
ordenaNum :: Int -> Int -> (Int, Int)
ordenaNum x y = if x < y then (x, y) else (y, x)

-- 4) esMultiplo : dado un entero n devuelve True si n es múltiplo de 2.
esMultiplo :: Int -> Bool
esMultiplo n = if mod n 2 == 0 then True else False

-- 5) mayorNumeros : que dada una una terna de enteros devuelve una terna de valores booleanos }
-- que indica si cada uno de los enteros es mayor que 3. Por ejemplo: mayor3:(1; 4; 3) = (False;True; False)
mayorNumeros :: [Int] -> [Bool]
mayorNumeros [] = []
mayorNumeros [x] = [x > 3]
mayorNumeros (x : y : z) = if x > 3 then True : mayorNumeros (y : z) else False : mayorNumeros (y : z)

-- 6) Construya una función del_posicion_n :: [Int] → Int → [Int] en que, dada una lista de enteros y
-- la posición de un elemento cualquiera, retorne una nueva lista sin aquel elemento en la n-ésima
-- posición. Ejemplo de uso:
-- > del_posicion_n [1,3,4,1,3,2] 4
-- [1,3,4,3,2]
-- > del_posicion_n [1,3,4,1,3,2] 1
-- [3,4,1,3,2]
del_posicion_n :: [Int] -> Int -> [Int]
del_posicion_n [] x = []
del_posicion_n (x : xs) n = if n == 1 then xs else x : del_posicion_n xs (n -1)

-- 7) Implemente una función que reciba una lista de enteros (no necesariamente ordenada) y
-- retorne una lista ordenada (de forma creciente), formada solamente por los números impares
-- de la lista recibida.
-- > impares [3,6,4,8,1,9,7]
-- [1,3,7,9]
deleteOdds :: [Int] -> [Int]
deleteOdds [] = []
deleteOdds (x : xs) = if odd x then x : deleteOdds xs else deleteOdds xs

-- QuickSort implementation
quicksort :: [Int] -> [Int]
quicksort [] = []
quicksort (x : xs) = quicksort [y | y <- xs, y <= x] ++ [x] ++ quicksort [y | y <- xs, y > x]
-- What happens here is that the first element of the list is taken as the pivot, and the
-- elements smaller than it are put in the left part of the list, and the elements bigger than
-- it are put in the right part of the list.
impares :: [Int] -> [Int]
impares x = quicksort (deleteOdds x)

-- 8) Implemente una función que haga una búsqueda por substrings de inicio. Considere siempre
-- los n-primeros caracteres que el usuario pasa en la línea de comando. Ejemplo:
-- > busca_sub :: String → [String] → [String]
-- > busca_sub “an” [“freddy mercury”, “antonio banderas”, “zorro”, “zebra” ]
-- [“antonio banderas”]
-- > busca_sub “z” [“freddy mercury”, “antonio banderas”, “zorro”, “zebra” ]
-- [“zorro”, “zebra”]
busca_sub :: String -> [String] -> [String]
busca_sub _ [] = []
busca_sub x (y : ys) =
  if x == take (length x) y
    then y : busca_sub x ys
    else busca_sub x ys

main :: IO ()
main = do
  print ("Una cifra de 22 " ++ show (unaCifra 22))
  print ("Una cifra de 1 " ++ show (unaCifra 1))
  print ("Segundo numero de [1,2,3] " ++ show (segundoNum [1, 2, 3]))
  print ("Ordena pares [1,2] " ++ show (ordenaNum 1 2))
  print ("Si 56 es multiplo de 2 " ++ show (esMultiplo 56))
  print ("Mayor numeros de [1,2,3] " ++ show (mayorNumeros [1, 2, 5]))
  print ("Lista sin el elemento en la posicion 3 " ++ show (del_posicion_n [1, 3, 4, 1, 3, 2] 4))
  print ("Lista de impares ordenada " ++ show (impares [3, 6, 4, 8, 1, 9, 7]))