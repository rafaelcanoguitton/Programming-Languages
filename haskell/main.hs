-- main = do
--     let var1=2
--     let var2=3
--     putStrLn "El resultado de la suma es :"
--     print(var1+var2)
-- main::IO()
-- add :: Integer ->Integer -> Integer
-- add x y= x+y
-- main = do
--     let a=[1,2,3]
--     let b=[4,6,8]
--     let c=zipWith (+) a b
--     let d=zipWith (*) a b
--     putStrLn "La suma de elementos sería:"
--     print c
--     putStrLn "La multiplicación de elementos sería:"
--     print d
--     print (add 3 2)
add :: Integer -> Integer -> Integer
add x y =  x + y
main = do 
putStrLn "La suma de ambos números es la siguiente:"
print(add 3 5)
-- What was done in class