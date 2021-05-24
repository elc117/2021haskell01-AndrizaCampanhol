-- Prática 01 de Haskell - Parte 1
-- Nome: Andriza Campanhol

-- 01
sumSquares :: Int -> Int -> Int
sumSquares x y = x^2 + y^2

--02
circleArea :: Float -> Float
circleArea r = pi * r^2

--03
age :: Int -> Int -> Int
age nasc atual = atual - nasc

--04
isElderly :: Int -> Bool
isElderly i = i > 65

--05
htmlItem :: String -> String
htmlItem str = "<li>" ++ str ++ "</li>"

--06
startsWithA :: String -> Bool
startsWithA str = head str == 'A'

--07
isVerb :: String -> Bool
isVerb str = last str == 'r'

--8
isVowel :: Char -> Bool
isVowel cha
    | cha == 'a' = True 
    | cha == 'e' = True 
    | cha == 'i' = True 
    | cha == 'o' = True 
    | cha == 'u' = True 
    |otherwise = False

--9
hasEqHeads :: [Int] -> [Int] -> Bool
hasEqHeads l1 l2 = head l1 == head l2

--10
isVowel2 :: Char -> Bool
isVowel2 char = elem char "aeiouAEIOU"