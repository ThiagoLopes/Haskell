-- tipo a é num, entao a função recebe um tipo a de Num e retorna um tipo a de Num
-- Num é um typeclass
doubleMe :: Num a => a -> a
doubleMe x = x + x

-- Recebe 2 Num do mesmo tipo e retorna outro o mesmo tipo
doubleUs :: Num a =>  a -> a -> a
doubleUs x y  = doubleMe x + doubleMe y

doubleSmallNumber x = if x > 100
                      then x
                      else x * 2


doubleSmallNumber' x = (if x > 100 then x else x*2) + 1

x = 10 `div` 5

double_list = [ x*2 | x <- [1..10]]

divided_two = [x/2 | x <- [1..10]]

rest_3 = [x | x <- [50..100], x `mod` 7 == 3]

boom xs = [if x < 10 then "BOOM!" else "BANG!" | x <- xs, odd x]

multiply = [ x*y | x <- [2,5,10], y <- [8,10,11]]

multiply_more :: [Int]
multiply_more = [ x*y | x <- [2,5,10], y <- [8,10,11], x*y > 50]

length' :: [Int] -> Int
length' xs = sum [1 | _ <- xs]

removeNonUpper :: String -> String
removeNonUpper st = [ c | c <- st, c `elem` ['A'..'Z']]

-- Pattern matching
lucky :: (Integral a) => a -> String
lucky 7 = "SETE! BINGO!"
lucky x = "Desculpe, tente novamente!"

sayMe :: (Integral a) => a -> String
sayMe 1 = "Um!"
sayMe 2 = "Dois!"
sayMe 3 = "Três!"
sayMe 4 = "Quatro!"
sayMe 5 = "Cinco!"
sayMe x = "Não está entre 1 e 5"

-- nice :D
factorial :: (Integral a) => a -> a
factorial 0 = 1
factorial n = n * factorial (n - 1)

-- aplicaçoes legais de pattern matching

-- veja a funcação comentada usando patter matching
-- addVectors :: (Num a) => (a, a) -> (a, a) -> (a, a)
-- addVectors a b = (fst a + fst b, snd a + snd b)
addVectors :: (Num a) => (a, a) -> (a, a) -> (a, a)
addVectors (x1, y1) (x2, y2) = (x1 + x2, y1 + y2)

-- another:
first :: (a, b, c) -> a
first (x, _, _) = x

second :: (a, b, c) -> b
second (_, y, _) = y

third :: (a, b, c) -> c
third (_, _, z) = z

--
somaElton:: Double -> Double -> Double
somaElton 6 6 = 666
somaElton x y = x + y
