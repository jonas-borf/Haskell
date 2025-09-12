($) :: (a -> b) -> a -> b
f $ x = f x
--Why? $ is lower precedence and is right-associative.
--Ex:
--sum (map sqrt [1..130]) is the same as
-- sum $ map sqrt [1..130] and looks better
--Similarly, sqrt (3+4+9) = sqrt $ 3 + 4 + 9