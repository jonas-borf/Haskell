-- max 4 5 is the same as (max 4) 5
--max :: (Ord a) => a->(a->a) implies that max first
--returns a function that takes in a and returns a and
--then evaluates that function.

multThree :: (Num a) => a -> (a -> (a -> a))
multThree x y z = x * y * z

compareWithHundred :: (Num a, Ord a) => a -> Ordering
compareWithHundred = compare 100

divideByTen :: (Floating a) => a -> a
divideByTen = (/10)

isUpperAlphanum :: Char -> Bool
isUpperAlphanum = (`elem` ['A'..'Z'])