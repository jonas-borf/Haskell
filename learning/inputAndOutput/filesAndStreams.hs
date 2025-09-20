import System.IO

main = do
  handle <- openFile "girlfriend.txt" ReadMode
  contents <- hGetContents handle
  putStr contents
  hClose handle

--type FilePath = String
--data IOMode = ReadMode | WriteMode | AppendMode | ReadWriteMode
