module SortStrSpec where

import Test.Hspec.Monadic
import Test.Hspec.HUnit ()
import Test.Hspec.QuickCheck
import Test.HUnit
import SortStr

shouldBe :: (Show a, Eq a) => a -> a -> Assertion
actual `shouldBe` expected = actual @?= expected

main = hspecX $ do
  describe "srtString" $ do
    it "sorts a single string" $
      srtString ["abc"] `shouldBe` ["abc"]

    it "sorts two already sorted strings" $
      srtString ["abc", "bde"] `shouldBe` ["abc", "bde"]

    it "sorts two strings" $
      srtString ["bce", "abc"] `shouldBe` ["abc", "bce"]

    it "sorts multiple strings" $
      srtString ["b", "f", "s", "q", "x", "g", "g"] `shouldBe` ["b", "f", "g", "g", "q", "s", "x"]

    
