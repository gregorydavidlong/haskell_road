module RemoveFst where

removeFst :: Int -> [Int] -> [Int]
removeFst x [] = []
removeFst x [y] | (x == y) = []
                | otherwise = [y]
removeFst x (h:t) | (x == h) = t
                  | otherwise = (h : (removeFst x t))
