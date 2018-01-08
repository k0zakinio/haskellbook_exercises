module Reverse where

rvrs :: String -> String
rvrs x = do
 concat [ last, " ", middle, " ", first ]
 where
  last = drop 9 x
  first = take 5 x
  middle = [ x !! 6, x !! 7]

main :: IO ()
main = print(rvrs "Curry is awesome")
