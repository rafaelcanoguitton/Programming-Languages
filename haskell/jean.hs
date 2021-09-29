suma:: Int -> Int -> Int
suma a b = a+b
--main=print(suma 5 6)                                      -- Buenisimo main

sumachar:: Char -> [Char] -> [Char]
sumachar a b = a:b
--main=print(sumachar 'h' "ola")                            -- Buenisimo main

merge:: [Int] -> [Int] -> [Int]                             -- templates / especialización / definición de tipos
merge a [] = a
merge [] b = b                                              -- casos base
merge (x:a) (y:b) | x < y = [x]++merge a (y:b)              -- de todas maneras funciona un x<y=x:merge(...)
                  | otherwise = [y]++merge (x:a) b        -- pero el operador de ++ concatena, osea mismo resultado.
--main=print(merge [5,7,9] [3,4,6,8])                       -- Buenisimo main

--fact 0 = 1
--fact a = a*fact(n-1)
--pascaltriangulo_help a b = fact a/fact b * fact(a-b)
--pascaltriangulo a b | b!=a = pascaltriangulo_help(a b+1)
--                    | fact a/fact b * fact(a-b)
--main=print(pascaltriangulo 5 0)

sum_arr :: [Int] -> [Int] -> [Int]
sum_arr [] [y] = [y]
sum_arr [x] [] = [x]
sum_arr (x:xs) (y:ys) = (x + y) : sum_arr xs ys

pascal::Int -> [Int]
pascal 1 = [1]
pascal x = sum_arr (pascal (x-1)) (0 : pascal(x-1))

main = print (pascal 15)