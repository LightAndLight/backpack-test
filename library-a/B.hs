{-# language TemplateHaskell #-}
module B where

import A.Sig

import TH (aSplice)

data B = B { _baField :: A }
aSplice ''B

exclaimA :: A -> String
exclaimA = (++ "!") . showA
