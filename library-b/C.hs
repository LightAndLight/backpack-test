{-# language TemplateHaskell #-}
module C where

import Data.Char (toUpper)

import A.Sig
import B

import TH (aSplice)

data C = C { _caField :: A, _cbField :: B }
aSplice ''C

veryExclaimA :: A -> String
veryExclaimA = fmap toUpper . exclaimA
