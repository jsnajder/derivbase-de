{-------------------------------------------------------------------------------

 DerivBase.German

 Implementation of DerivBase for German

 (c) 2014 Britta Zeller <zeller@cl.uni-heidelberg.de>
          Jan Snajder <jan.snajder@fer.hr>

-------------------------------------------------------------------------------}

module DerivBase.German 
  ( module DerivBase
  , DerivSets
  , DerivPairs
  , LemmaPos
  , removeGender
  , Pos (..) ) where

import Control.Applicative
import DerivBase
import qualified DerivBase.DerivSets as DS (DerivSets)
import qualified DerivBase.DerivPairs as DP (DerivPairs)

data Pos = Nm | Nf | Nn | N | A | V deriving (Show, Read, Eq, Ord, Enum)

type LemmaPos = LPO Pos

noGender :: Pos -> Pos
noGender Nm = N
noGender Nf = N
noGender Nn = N
noGender p  = p

removeGender :: LemmaPos -> LemmaPos
removeGender (LPO l p) = LPO l (noGender <$> p)

type DerivSets  = DS.DerivSets LemmaPos
type DerivPairs = DP.DerivPairs LemmaPos

{- E.g.

> import DerivBase.DerivSets hiding (DerivSets)

> ds <- fromFile "/home/jan/dismods/derivbase/deriv-families/data/DErivBase-v1.4.1-families.txt"  :: IO DerivSets

> derivSet ds (LP "Wasser" Nn)

-}

