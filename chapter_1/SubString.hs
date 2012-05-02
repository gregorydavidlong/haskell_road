module SubString where

prefix :: String -> String -> Bool
prefix [] ys = True
prefix (x:xs) [] = False
prefix (x:xs) (y:ys) = (x==y) && prefix xs ys


substring :: String -> String -> Bool
substring x "" = False
substring xs (y:ys) | prefix xs (y:ys) = True
                    | otherwise = substring xs ys
