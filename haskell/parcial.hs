import System.Random ( Random(randomR), mkStdGen )
randomNumber::Int
randomNumber = fst $ randomR (1,100) (mkStdGen 0)

guessNumber::Int->Int->IO()
guessNumber n g
    | n == g = putStrLn "¡Adivinaste!"
    | n < g =do
         putStrLn "Muy alto"
         number <- getLine
         let n = read number :: Int
         guessNumber n g
    | n > g =do
         putStrLn "Muy bajo"
         number <- getLine
         let n = read number :: Int
         guessNumber n n
main :: IO ()
main=do
    putStrLn "Adivina un número de 1 al 100"
    number <- getLine
    let n = read number :: Int
    guessNumber randomNumber n