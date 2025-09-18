class Functor f where
    fmap :: (a -> b) -> f a -> f b

class Tofu t where
    tofu :: j a -> t a j

data Frank a b = Frank {frankField :: b a} deriving (Show)

instance Tofu Frank where
    tofu x = Frank x
    
--I'm gonna be honest, this makes no sense