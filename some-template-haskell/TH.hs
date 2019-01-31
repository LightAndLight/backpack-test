module TH where

import Control.Monad.IO.Class (liftIO)
import Language.Haskell.TH

aSplice :: Name -> DecsQ
aSplice name = do
  nameInfo <- reify name
  case nameInfo of
    TyConI (DataD _ _ _ _ ctors _) -> do
      let res = ctors >>= ctorToDecs
      liftIO $ putStrLn $ pprint $ res
      pure res
    _ -> undefined
  where
    ctorToDecs :: Con -> [Dec]
    ctorToDecs (RecC _ fields) =
      fmap
        (\(n, _, _) ->
           ValD
             (VarP . mkName . tail $ nameBase n)
             (NormalB (VarE n))
             [])
        fields
