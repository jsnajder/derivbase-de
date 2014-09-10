import DerivBase
import qualified DerivBase.DerivPairs as DP
import qualified DerivBase.DerivSets as DS
import DerivBase.German

dbSets = "/home/jan/dismods/derivbase/deriv-families/data/DErivBase-v1.3-families.txt"
dbPairs = "/home/jan/dismods/derivbase/deriv-families/data/DErivBase-v1.3-pairs1-2.txt"

main :: IO ()
main = do
  ds <- DS.fromFile dbSets :: IO DerivSets
  print $ DS.derivSet ds (LP "Wasser" Nn)
  dp <- DP.fromFile dbPairs :: IO DerivPairs
  print $ DP.derivSet dp (LP "Wasser" Nn)
  print $ DP.derivLinks dp (LP "Wasser" Nn)
  


