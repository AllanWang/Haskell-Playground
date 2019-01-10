module Main where

import Language.HaLex.Dfa
import Language.HaLex.Fa2RegExp

import Lib

main :: IO ()
main = putStr asdf

asdf :: String
asdf = show $ dfa2RegExp dfa
  where
    regex = dfa2RegExp dfa
    dfa = Dfa ['a', 'b'] [0, 1, 2, 3] 0 [0] delta
    delta 0 'a' = 1
    delta 0 'b' = 2
    delta 1 'a' = 0
    delta 1 'b' = 3
    delta 2 'a' = 3
    delta 2 'b' = 0
    delta 3 'a' = 2
    delta 3 'b' = 1
