module HandleUserInput where
import System.Exit
import Calculate

handleMainChoice :: String -> IO ()
handleMainChoice choice
  | choice == "1" = handleDerivativeInput
  | choice == "2" = handleIntegralInput
  | choice == "3" = exitWith ExitSuccess
  | otherwise = do putStrLn "Not a valid choice, time to shut down!"

handleDerivativeInput :: IO ()
handleDerivativeInput = do 
  putStrLn "Choose one of the following functions: \n 1. polynomial"
  choice <- getLine
  handleDerivativeChoice choice

handleDerivativeChoice :: String -> IO ()
handleDerivativeChoice choice
  | choice == "1" = handlePolynomialInput 
  | otherwise = putStrLn "What are you doing! Not a valid choice. Shutting down"

handlePolynomialInput :: IO ()
handlePolynomialInput = do
  putStrLn "Input as a tuple your coefficients and then the value at which the derivative should be evaluated. \n e.g. x^2+2x+3 at x=4 -> ([1,2,3], 4)"
  input <- getLine
  derivative Poly (read input)

handleIntegralInput :: IO ()
handleIntegralInput = putStrLn "Integral Handled"
