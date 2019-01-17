{-# language TemplateHaskell #-}
module C where

import Data.Char (toUpper)

import A.Sig
import B

showA' :: A -> String
showA' = fmap toUpper . exclaimA
