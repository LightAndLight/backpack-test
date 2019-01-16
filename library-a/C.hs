{-# language DeriveGeneric #-}
module C where

import GHC.Generics (Generic)

import A.Sig
import B

exclaimA :: A -> String
exclaimA = (++ "!") . showA

data C = C A B
  deriving Generic
