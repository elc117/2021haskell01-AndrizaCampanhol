-- Prática 01 de Haskell - Parte 2
-- Nome: Andriza Campanhol

import FunctionsAux

--01
itemize :: [String] -> [String]
itemize strlist = map htmlItem strlist

--02
onlyVowels :: String -> String
onlyVowels str = filter isVowel2 str

--03
onlyElderly :: [Int] -> [Int]
onlyElderly intlist = filter isElderly intlist

--04
onlyLongWords :: [String] -> [String]
onlyLongWords strlist = filter isLongWord strlist

--05
onlyEven :: [Int] -> [Int]
onlyEven intlist = filter isEvenBetter intlist

--06
between60and80 :: Int -> Bool
between60and80 num = num >= 60 && num <= 80

onlyBetween60and80 :: [Int] -> [Int]
onlyBetween60and80 numlist = filter between60and80 numlist

--07
spaceAux :: Char -> Bool
spaceAux c = c == ' '

countSpaces :: String -> Int
countSpaces str = length (filter spaceAux str) 

--08
calcAreas :: [Float] -> [Float]
calcAreas rlist = map circleArea rlist

--09
charAux :: Char -> Char -> Bool
charAux cha1 cha2 = cha1 == cha2

charFound :: Char -> String -> Bool
charFound cha str = length (filter (charAux cha) str) >= 1