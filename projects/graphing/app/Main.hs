module Main where
import FunctionGraphing
import System.IO
main :: IO ()
main = do 
        putStrLn "Type which you would like: \n 1. graph a function \n 2. Quit"
        choice <- getLine
        handleChoice choice



