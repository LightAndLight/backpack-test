module D where

import Data.Char (toUpper)

import A.Sig
import C

megaExclaimA :: A -> String
megaExclaimA = fmap toUpper . exclaimA
