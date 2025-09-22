module Calculate where

data Func = Poly | Exp deriving (Eq)

derivative :: (Num a, Show a) => Func -> ([a], a) -> IO ()
derivative fn (vals, eval)
 | fn == Poly = polyDerivative vals eval
 | fn == Exp = expDerivative vals eval

polyDerivative :: (Num a, Show a) => [a] -> a -> IO ()
polyDerivative vals eval = do 
  putStrLn $ "val is" ++ show vals ++ " eval is " ++ show eval

expDerivative :: (Num a, Show a) => [a] -> a -> IO ()
expDerivative vals eval = do
  putStrLn $ "this is exp" ++ show vals ++ show eval

