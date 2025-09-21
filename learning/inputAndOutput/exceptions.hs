import System.Enviornment
import Syste.IO
import System.Directory

main = do (fileName:_) <- getArgs
          fileExists <- doesFileExist fileName
          if fileExists
            then do contents <- readFile fileName
                putStrLn $ "The file has " ++ show (length (lines contents)) ++ " lines!"
          else do putStrLn "The file does't exist

--This is the way to do it without using exceptions"
