module RemoveFstSpec where

import Test.Hspec.Monadic
import RemoveFst

main = hspecX $ do
  describe "removeFst" $ do
    describe "for a single element list" $ do
      it "removes the only element" $
        removeFst 1 [1] == []


      it "doesn't remove anything" $
        removeFst 2 [1] == [1]

    describe "for a multi-element list" $ do
      it "removes the first element" $
        removeFst 1 [1,2,3] == [2,3]

      it "removes the second element" $
        removeFst 2 [1,2,3] == [1,3]

      it "removes the final element" $
        removeFst 3 [1,2,3] == [1,2]

    describe "for a list with duplicate elements" $ do
      it "removes a single element" $
        removeFst 1 [1,1,2] == [1,2]
