bmiTell :: (RealFloat a) => a -> a -> String
bmiTell weight height 
  | bmi <= 18.5 = "Under"
  | otherwise = "I;m too lazy"
  where bmi = weight / height ^ 2
max' :: (Ord a) => a -> a -> a
max' a b 
  | a > b = a
  | otherwise = b

myCompare :: (Ord a) => a -> a -> Ordering
myCompare a b 
  | a > b = GT
  | a == b = EQ
  | otherwise = LT

initials :: String -> String -> String
initials firstname lastname = [f] ++ ". " ++ [l] ++"."
  where (f:_) = firstname
        (l:_) = lastname

calcBmis :: (RealFloat a) => [(a,a)] -> [a]
calcBmis xs = [bmi w h | (w,h) <- xs]
  where bmi weight height = weight / height ^ 2