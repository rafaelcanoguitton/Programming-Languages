sumaPos::[Int]->[Int]->Int->Int
sumaPos [] li a=li!! a
sumaPos li [] a=li!!a
sumaPos a b c=a!!c+b!!c
quicksort :: Ord a => [a] -> [a]
quicksort []=[]
quicksort (x : xs) = quicksort [y | y <- xs, y >= x] ++ [x] ++ quicksort [y | y <- xs, y < x]
isPrime::Int->Bool
isPrime x= helper' x 2
    where
        helper' x y
            | x==y=True
            | x`mod`y==0=False
            | otherwise= helper' x (y+1)
cuantosPrimos::Int->[Int]
cuantosPrimos 0 = []
cuantosPrimos x = helper' 0 3
    where
        helper'::Int->Int->[Int]
        helper' c n
            | c==x=[n | isPrime n]
            | otherwise = if isPrime n then n:helper' (c+1) (n+1) else helper' c (n+1)
diaDeSemana::Int->String
diaDeSemana x
    | x<=7=helper' x
    | otherwise = diaDeSemana (x-7)
    where
        helper' idx= ["Viernes","Sabado","Domingo","Lunes","Martes","Miercoles","Jueves"]!!(idx-1)
main :: IO ()
main = do
    print("Ordernar [7,10,1,3,14,5] de mayor a menor "++show(quicksort [7,10,1,3,14,5]))
    print("Dame 10 primos "++show(cuantosPrimos 10))
    print("Dia 27 de este mes "++show(diaDeSemana 27))