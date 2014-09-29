module Lists where 

import Prelude hiding (null, head, tail, length, reverse, (++))

{-
Chapter 4 lists 
data [a] = [] | (a : [a])
-}

foo = [1,2,3]
bar = 1 : (2: (3 : []))

prob1 = [[1,2.0],[3,4.0]]

ones = 1 : ones 

--null function 
null:: [a] -> Bool 
null [] = True
null (x:xs) = False

--head function 
head (x:xs) = x
head [] = error "derp"

--tail function 
tail (x:xs) = xs
tail [] = error "don't be an idiot"

--length 
length :: [a] -> Int
length [] = 0
length (x:xs) = 1 + length xs

--reverse
reverse :: [a] -> [a]
reverse [] = error "no list provided"
reverse (x:xs) = reverse xs ++ [x]

--(++)
(++) :: [a] -> [a] -> [a]
[] ++ xs = xs
(y:ys) ++ xs = y : (ys ++ xs) 