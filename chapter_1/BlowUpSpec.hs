module BlowUpSpec where

import Test.Hspec.Monadic
import BlowUp

main = hspecX $ do
  describe "BlowUp" $ do

    it "blowup the empty string" $
      blowup "" == ""

    it "blowup single element string" $
      blowup "a" == "a"

    it "blowup multiple element string" $
      blowup "abc" == "abbccc"

    it "blowup the example string" $
      blowup "bang!" == "baannngggg!!!!!"

