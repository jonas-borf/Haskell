main = interact respondPalindromes
--This is a possible solution, but much more difficult to read.

respondPalindromes = unlines . map (\xs -> if isPalindrome xs then "palindrome" else "not a palindrome") . lines
  where
    isPalindrome xs = xs == reverse xs