-- 1. Definir la función factorial de 3 formas diferentes
factorial1::Integer->Integer
factorial1 0=0
factorial1 1=1
factorial1 x=x*factorial1 (x-1)
factorial2::Integer->Integer
factorial2 x = case x of
    0 -> 0
    1 -> 1
    x -> x*factorial2 (x-1)
factorial3::Integer->Integer
factorial3 x
    | x==0=0
    | x==1=1
    | otherwise = x*factorial3(x-1)

-- 2. Cree una función que dada una lista de números retorne la lista de los impares (función
-- odd)

oddList::[Integer]->[Integer]
oddList []=[]
oddList x= filter odd x
-- 3. Cree una función que dada una lista de números retorne la lista de pares (función even)
evenList::[Integer]->[Integer]
evenList []=[]
evenList x= filter even x
-- 4. Generalice las funciones filtra par y filtra impar , o sea, cree una única función que pueda
-- realizar los 2 tipos de filtrado
oddEvenList::[Integer]->Integer->Maybe [Integer]
oddEvenList [] _ = Nothing
oddEvenList x y
    | y==0 = Just $ evenList x
    | y==1 = Just $ oddList x
    | otherwise = Nothing
--Le añadí el Nothing para que si recibe cualquier otro
--parámetro que no sea 1 o 0 retorne nothing y no 
--algo feo como 0 xd

-- 5. Definir la función longitud_camino, de tal forma que :
-- longitud_camino [(1,2),(4,6),(7,10)] es 10.0
longitudCamino :: Floating p => [(p, p)] -> p
longitudCamino [] = 0
longitudCamino [(x1,y1)]=0
longitudCamino ((x1,y1):xs)=sqrt ((x2-x1)**2+(y2-y1)**2)+ longitudCamino xs
    where x2=(\(a,b)->a) $ head xs
          y2=(\(a,b)->b) $ head xs
--También podemos usar fst o snd de librería 
--pero opté por usar funciones anónimas :3
--esto para mantener al código sin librerías externas
-- y porque me gusta el cálculo Lambda λ *-*

-- 6. Definir la función elem_ord tal que elem_ord e l, es verdadero si el elemento se
-- encuentra en l caso contrario falso.
-- elem_ord 3 [1,3,5] verdadero
-- elem_ord 2 [1,3,5] falso
elemOrd::Integer->[Integer]->Bool
elemOrd _ []=False
elemOrd x (y:ys)= (x==y) || elemOrd x ys
-- 7. Definir la función subconjunto tal que subconjunto xs ys se verifica si xs es un
-- subconjunto de ys.
-- subconjunto [1,3,2,3] [1,2,3] verdadero
-- subconjunto [1,3,4,3] [1,2,3] falso
subConjunto::[Integer]->[Integer]->Bool
subConjunto [] _ =False
subConjunto _ [] =False
subConjunto x (y:ys)= elemOrd y x || subConjunto x ys
main :: IO ()
main = do
    print("Tres formas de factorial de 5 "++ show (factorial1 5) ++" "++ show (factorial2 5) ++" "++ show (factorial3 5) )
    print("Extraer impares "++show(oddList [1,2,3,4,5,6,7,8,9,10]))
    print("Extraer pares "++show(evenList [1,2,3,4,5,6,7,8,9,10]))
    print("Par e impar de lista "++show(oddEvenList [1,2,3,4,5,6,7,8,9,10] 0)++" "++show(oddEvenList [1,2,3,4,5,6,7,8,9,10] 1))
    print("Longitud entre [(1,2),(4,6),(7,10)] "++show(longitudCamino [(1,2),(4,6),(7,10)]))
    print("Si esque 3 está en [1,3,5] "++show(elemOrd 3 [1,3,5]))
    print("Si [1,2,3] es subconjunto de [1,3,2,3] "++show(subConjunto [1,3,2,3] [1,2,3]))