module SubStringSpec where

import Test.Hspec.Monadic
import Test.Hspec.HUnit ()
import Test.Hspec.QuickCheck
import Test.HUnit
import SubString

shouldBe :: (Show a, Eq a) => a -> a -> Assertion
actual `shouldBe` expected = actual @?= expected

main = hspecX $ do
  describe "substring" $ do
    it "should match identical one-character strings" $
      substring "a" "a" `shouldBe` True

    it "shouldn't match different one-character string" $
      substring "a" "b" `shouldBe` False

    it "should match if a single-character substring" $
      substring "a" "abc" `shouldBe` True
    it "should match if a single-character substring" $
      substring "b" "abc" `shouldBe` True
    it "should match if a single-character substring" $
      substring "c" "abc" `shouldBe` True

    it "shouldn't match if not a single-character substring" $
      substring "d" "abc" `shouldBe` False

    it "should match multiple character substring" $
      substring "abc" "abcdef" `shouldBe` True

    it "should match multiple character substring" $
      substring "bcd" "abcdef" `shouldBe` True
    it "should match multiple character substring" $
      substring "cde" "abcdef" `shouldBe` True
    it "should match multiple character substring" $
      substring "def" "abcdef" `shouldBe` True

    it "shouldn't match if not multiple character substring" $
      substring "fff" "abcdef" `shouldBe` False
     

