module SortStr where

import Data.List

srtString :: [String] -> [String]
srtString [x] = [x]
srtString xs = let
                first = minimum xs
               in
                first : (srtString (delete first xs))
