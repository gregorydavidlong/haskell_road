module CountSpec where

import Test.Hspec.Monadic
import Count

main = hspecX $ do
  describe "Count" $ do

    it "counts the empty list" $
      count 'a' [] == 0

    describe "for a single element list" $ do
      it "counts the only element" $
        count 'a' ['a'] == 1

      it "doesn't count the only element" $
        count 'a' ['b'] == 0

    describe "for a multi-element list" $ do
      it "counts nothing" $
        count 'a' ['b', 'c', 'd'] == 0

      it "counts one element" $
        count 'a' ['b', 'c', 'a'] == 1

      it "counts multiple elements" $
        count 'a' ['a', 'b', 'c', 'a', 'd'] == 2

