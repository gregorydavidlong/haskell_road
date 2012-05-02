module BlowUpSpec where

import Test.Hspec.Monadic
import Test.Hspec.HUnit ()
import Test.Hspec.QuickCheck
import Test.HUnit
import BlowUp

shouldBe :: (Show a, Eq a) => a -> a -> Assertion
actual `shouldBe` expected = actual @?= expected

main = hspecX $ do
  describe "BlowUp" $ do

    it "blowup the empty string" $
      blowup "" `shouldBe` ""

    it "blowup single element string" $
      blowup "a" `shouldBe` "a"

    it "blowup multiple element string" $
      blowup "abc" `shouldBe` "abbccc"

    it "blowup the example string" $
      blowup "bang!" `shouldBe` "baannngggg!!!!!"


  describe "repeat_string" $ do

    it "should repeat a single character" $
      repeat_string 'a' 1 `shouldBe` "a"

