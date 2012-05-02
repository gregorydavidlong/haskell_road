module Lengths where

lengths :: [[a]] -> [Int]
lengths xs = (map length xs)

sumlengths :: [[a]] -> Int
sumlengths xs = sum (map length xs)
