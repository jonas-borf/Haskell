import Control.Monad
import Data.Char
import Data.Map


--main = putStrLn "Hello, World!"
{-
main = do
    putStrLn "Hello, what's your name?" 
    name <- getLine
    putStrLn ("Hey " ++ name ++ ", you rock!")
    -}
{-
main = do 
    food <- putStrLn "Hello, what's your name?"
    name <- getLine
    putStrLn ("Hey " ++ name ++ ", you rock!")
-}


{-
main = do 
    putStrLn "What's your first name?"
    firstName <- getLine
    putStrLn "What's your last name?"
    lastName <- getLine
    let bigFirstName = map toUpper firstName
        bigLastName = map toUpper lastName
    putStrLn ("HEY " ++ bigFirstName ++ " " ++ bigLastName ++ ", HOW ARE YOU?")
-}

{-
main = do
    line <- getLine
    if null line
        then return ()
        else do 
            putStrLn $ reverseWords line
            main

reverseWords :: String -> String
reverseWords = unwords . map reverse . words
-}
{-
main = do
    let a = "hell"
        b = "yeah"
    putStrLn $ a ++ " " ++ b
-}

{-main = do   putStr "Hey, "
            putStr "I'm "
            putStrLn "Andy!"
            print True-}

{-main = do
    c <- getChar
    when (c/=' ') $ do
        putChar c
        putStrLn ""
        main-}
--The when part of the previous function comes from the monad package.

{-main = forever $ do
    putStr "Give me some input: "
    l <- getLine
    putStrLn $ map toUpper l
    -}

main = do
    colors <- mapM (\a -> do
        putStrLn $ "Which color do you associate with the number " ++ show a ++ "?"
        color <- getLine
        return color) [1..4] 
    putStrLn "The colors that you associarte with 1, 2, 3, and 4 are: "
    forM colors putStrLn

--note that forM is just flip mapM.
--probably only usefuly when you only want to import monad and not map
