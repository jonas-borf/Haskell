module Main where
import HandleUserInput
main :: IO ()
main = do putStrLn "Please select one of the following: \n 1. Derivative \n 2. Integral \n 3. Exit"
          choice <- getLine
          handleMainChoice choice
