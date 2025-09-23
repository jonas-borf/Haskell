module Calculate where
h :: Floating a => a
h=0.00000001
data Func = Poly | Exp deriving (Eq)

derivative :: (Floating a, Show a, Eq a) => Func -> ([a], a) -> IO ()
derivative fn (vals, eval)
 | fn == Poly = polyDerivative vals eval
 | fn == Exp = expDerivative vals eval

polyDerivative :: (Floating a, Show a, Eq a) => [a] -> a -> IO ()
polyDerivative vals eval = do 
  let derVal = ((polyFunc vals (eval+h) 0)-(polyFunc vals eval 0))/h
    in putStrLn $ show derVal

expDerivative :: (Num a, Show a) => [a] -> a -> IO ()
expDerivative vals eval = do
  putStrLn $ "this is exp" ++ show vals ++ show eval

polyFunc :: (Floating a, Eq a) => [a] -> a -> a -> a
polyFunc (x:xs) eval acc
  | xs == [] = acc + x
  | otherwise = polyFunc xs eval (acc + x * eval**(fromIntegral $ length xs))
