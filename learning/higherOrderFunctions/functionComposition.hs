--(.) :: (b -> c) -> (a -> b) -> a -> c
--f . g = \x -> f $ g x

sum' :: (Num a) => [a] -> a
sum' = foldl (+) 0

--fn x = ceiling $ negate $ tan $ cos $ max 50 x
--is the same as fn = ceiling . negate . tan . cos . max 50

oddSquareSum :: Integer
oddSquareSum = sum . takeWhile(<10000) . filter odd . map (^2) $ [1..]
