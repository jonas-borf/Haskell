module FunctionGraphing where
import System.Exit

handleChoice :: String -> IO ()
--handleChoice choice
--  | choice == "1" = graphFunction 
--  | choice == "2" = exitFunction 

handleChoice choice = if choice == "1" then graphFunction else exitWith ExitSuccess

graphFunction :: IO ()
graphFunction = putStrLn "success!"
