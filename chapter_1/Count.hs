module Count where

count :: Char -> String -> Int
count _ [] = 0
count x (h:t) | x == h = (count x t) + 1
              | otherwise = (count x t)
