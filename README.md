A bug involving backpack and template haskell.

`cabal new-build` will result in an interface error.

If you remove the language pragma from `library-b/C.hs` then `cabal new-build` succeeds

Alternatively, if you leave the pragma, but alter `veryExclaimA` in `library-b/C.hs`
so that it doesn't call `exclaimA`, then the project will build.

Versions tested: 8.6.1, 8.6.2, HEAD (20190120)
