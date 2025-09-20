main = interact $ unlines . filter ((<10) . length) . lines
--This is a possible solution, but much more difficult to read.