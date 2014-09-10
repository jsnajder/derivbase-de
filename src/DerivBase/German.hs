{-------------------------------------------------------------------------------

 DerivBase.German

 German implementation of DErivBase, a derivational morphology database

 (c) 2014 Britta Zeller <zeller@cl.uni-heidelberg.de>
          Jan Snajder <jan.snajder@fer.hr>

-------------------------------------------------------------------------------}

module DerivBase.German 
  ( Pos
  , LemmaPos
  , DerivSets
  , DerivPairs ) where

import DerivBase
import qualified DerivBase.DerivSets as DS (DerivSets)
import qualified DerivBase.DerivPairs as DP (DerivPairs)

data Pos = Nm | Nf | Nn | N | A | V deriving (Show, Read, Eq, Ord, Enum)

type LemmaPos = LP Pos

type DerivSets  = DS.DerivSets LemmaPos
type DerivPairs = DP.DerivPairs LemmaPos

{- E.g.

> import DerivBase.DerivSets hiding (DerivSets)

> ds <- fromFile "/home/jan/dismods/derivbase/deriv-families/data/DErivBase-v1.4.1-families.txt"  :: IO DerivSets

> derivSet ds (LP "Wasser" Nn)

-}

