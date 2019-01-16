module A1 where

newtype A = A { unA :: Int }

showA :: A -> String
showA = show . unA
