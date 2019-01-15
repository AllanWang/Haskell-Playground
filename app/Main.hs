module Main
  ( main
  ) where

import           Lib

main :: IO ()
main = do
  sample "if 5 then x := 5 else x := 5"
  sample "if true then x := 5"
  sample "if true then x := 5 else x := 5"
