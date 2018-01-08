module Chapter3 where

addExclamation x = x ++ "!"
getFourthIndex x = [x !! 4]
dropFirstSeven x = drop 7 x
stringToChar   x = x !! 2
letterIndex :: Int -> Char
letterIndex    x = "Curry is awesome" !! x
rvrs :: String -> String
rvrs x = do
 concat [ last, " ", middle, " ", first ]
 where
  last = drop 9 x
  first = take 5 x
  middle = [ x !! 6, x !! 7]

main :: IO ()
main = do
  putStrLn result1
  putStrLn result2
  putStrLn result3
  print result4
  print result5
  putStrLn result6
  where 
    result1 = addExclamation "Curry is awesome"
    result2 = getFourthIndex "Curry is awesome!"
    result3 = dropFirstSeven "Curry is awesome!"
    result4 = stringToChar   "Curry is awesome"
    result5 = letterIndex 5
    result6 = rvrs "Curry is awesome"
