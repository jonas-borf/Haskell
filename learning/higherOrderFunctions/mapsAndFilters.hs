map' :: (a->b)->[a]->[b]
map' _ [] = []
map' f (x:xs) = f x:map' f xs

filter' :: (a -> Bool) -> [a] -> [a]
filter' _ [] = []
filter' p (x:xs)
    | p x = x : filter' p xs
    | otherwise = filter' p xs

quicksort :: (Ord a) => [a] -> [a]
quicksort [] = []
quicksort (x:xs) =
    let smallerSorted = quicksort (filter' (<=x) xs)
        biggerSorted = quicksort (filter' (>x) xs)
    in smallerSorted ++ [x] ++ biggerSorted

--Find the largest number under 100,000 that is divisible
--by 3829.

largestDivisible :: (Integral a) => a
largestDivisible = head (filter' p [100000,99999..])
    where p x = mod x 3829 == 0

--Sum of all odd squares that are smaller than 10,000
--sum (takeWhile (<10000) (filter' odd (map (^2) [1..])))

chain :: (Integral a) => a -> [a]
chain 1 = [1]
chain n 
    | even n = n:chain (div n 2)
    | odd n = n:chain (n*3+1)

numLongChains :: Int
numLongChains = length (filter' isLong (map' chain [1..100]))
    where isLong xs = length xs > 15

