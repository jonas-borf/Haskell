data Maybe a = Nothing | Just a
{-data Car = Car {
    company :: String
    , model :: String
    , year :: Int
} deriving (Show)
-}
data Car a b c = Car {company :: a
    , model :: b
    , year :: c
} deriving (Show)

tellCar :: (Show a) => Car String String a -> String
tellCar (Car {company = c, model = m, year = y}) = "This " ++ c ++ " " ++ m ++ " was made in " ++ show y

data Vector a = Vector a a a deriving (Show)

vplus :: (Num a) => Vector a -> Vector a -> Vector a
vplus (Vector x y z) (Vector i j k) = Vector (x+i) (y+j) (z+k)

vdot :: (Num a) => Vector a -> Vector a -> a
vdot (Vector x y z) (Vector i j k) = x*i + y*j + z*k

scalarMult :: (Num a) => a -> Vector a -> Vector a
scalarMult k (Vector x y z) = Vector (k*x) (k*y) (k*z)
