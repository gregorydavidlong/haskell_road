module BlowUp where

blowup :: String -> String
blowup x = blowup_alt x 1

-- source, depth -> result
blowup_alt :: String -> Int -> String
blowup_alt "" _ = ""
blowup_alt (h:t) x = (repeat_string h x) ++ (blowup_alt t (x+1))

repeat_string :: Char -> Int -> String
repeat_string string 1 = [string]
repeat_string string times = [string] ++ (repeat_string string (times - 1))
