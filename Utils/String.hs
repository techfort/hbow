module Utils.String (
  tokenize,
  extract,
  bow
) where

import Data.List.Split (splitOn)
import Text.Regex (subRegex, mkRegex)

sanitize :: String -> String
sanitize str = subRegex (mkRegex /\W/) str ""

tokenize :: String -> [String]
tokenize str = splitOn " " str

extract :: [String] -> [String]
extract a = a

bow :: String -> [String]
bow a = [a]
