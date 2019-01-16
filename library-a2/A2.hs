module A2 where

newtype A = A { unA :: Bool }

showA :: A -> String
showA = show . unA
