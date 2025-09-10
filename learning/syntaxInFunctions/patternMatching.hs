--Normal pattern matching
lucky :: (Integral a) => a -> String
lucky 7 = "LUCKY NUMBER SEVEN!!"
lucky x = "Sorry, you're out of luck pal"

sayMe :: (Integral a) => a -> String
sayMe 1 = "ONE"
sayMe 2 = "Two"
sayMe 3 = "Three"
sayMe x = "Not 1,2, or 3"
--Recursive pattern matching
factorial :: (Integral a) => a -> a
factorial 0 = 1
factorial n = n * factorial(n-1)
--Pattern matching without default. Causes errors
charName :: Char -> String
charName 'a' = "Alice"
charName 'b' = "Bob"
charName 'c' = "Carol"
--Tuples
addVectors :: (Num a) => (a,a) -> (a,a) -> (a,a)
--addVectors a b = (fst a + fst b, snd a + snd b)
addVectors (x1,x2) (y1,y2) = (x1+y1, x2+y2)
--Adding our own functions like fst and snd for triples
first :: (a,b,c) -> a
first (x,_,_) = x

second  :: (a,b,c) -> b
second (_,y,_) = y

third :: (a,b,c) -> c
third (_,_,z) = z

head' :: [a] -> a
head' [] = error  "list can't be empty dummy"
head' (x:_) = x

tell :: (Show a) => [a] -> String
tell [] = "This list is empty"
tell (x:[]) = "The list has one element:" ++ show x
tell (x:y:[]) = "The list had two elements:" ++ show x ++ " and " ++ show y
tell (x:y:_) = "The list is long. The first two elements are: " ++ show x ++ " and " ++ show y

length' :: (Num b) => [a] -> b
length' [] = 0
length' (_:xs) = 1 + length' xs

sum' :: (Num a) => [a] -> a
sum' [] = 0
sum' (x:xs) = x + sum' xs

capital :: String -> String
capital "" = "Empty string, whoops"
capital all@(x:xs) = "The first letter of " ++ all ++ " is " ++ [x]
