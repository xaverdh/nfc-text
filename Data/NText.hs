{-# language GeneralizedNewtypeDeriving, DeriveDataTypeable #-}
module HFish.Interpreter.NText where

import HFish.Interpreter.IsText
import qualified Data.Text as T
import Data.Text.ICU.Normalize

import Data.Hashable
import Data.Monoid
import Data.Data
import Data.String (IsString(..))
import Control.DeepSeq

-- | A type for 'T.Text' in NFC normal form.
newtype NText = NText
  { extractText :: T.Text }
  deriving (Eq,Ord,Show,Read,Data,IsString,Monoid,NFData,Typeable,Hashable)

-- | Create an NText from a 'T.Text' effectively
--   normalizing it.
mkNText :: T.Text -> NText
mkNText = NText . normalize NFC

{- lift common functions: -}

unlines :: [NText] -> NText
unlines = mkNText . T.unlines . fmap extractText

unwords :: [NText] -> NText
unwords = mkNText . T.unwords . fmap extractText

