module LengthsSpec where

import Test.Hspec.Monadic
import Test.Hspec.HUnit ()
import Test.Hspec.QuickCheck
import Test.HUnit
import Lengths

shouldBe :: (Show a, Eq a) => a -> a -> Assertion
actual `shouldBe` expected = actual @?= expected

main = hspecX $ do
  describe "lengths" $ do
    it "works for empty list" $
      lengths [] `shouldBe` []

    describe "works for single list" $ do
      it "that is empty" $
        lengths [[]] `shouldBe` [0]

      it "that is of length one" $
        lengths [['a']] `shouldBe` [1]

      it "that is of greater than length one" $
        lengths [[1,2,3]] `shouldBe` [3]

    describe "works for multiple lists" $ do
      it "two lists" $
         lengths [[1,3,4], [2,3,3,3,2,2,2]] `shouldBe` [3, 7] 

  describe "sumlengths" $ do
    it "works for empty list" $
      sumlengths [] `shouldBe` 0

    describe "works for single list" $ do
      it "that is empty" $
        sumlengths [[]] `shouldBe` 0

      it "that is of length one" $
        sumlengths [['a']] `shouldBe` 1

      it "that is of greater than length one" $
        sumlengths [[1,2,3]] `shouldBe` 3

    describe "works for multiple lists" $ do
      it "two lists" $
        sumlengths [[1,2,3], [3,2,4,4,2,3]] `shouldBe` 9
