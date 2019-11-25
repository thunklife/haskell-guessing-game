module Main where

import System.Random (randomRIO)

getGuess :: IO Integer
getGuess = readLn

getRandom :: IO Integer
getRandom = randomRIO (1, 100)

getResponse :: Integer -> Integer -> String
getResponse x y
  | x == y = "You are very clever"
  | otherwise = "Better luck next time. :("

main :: IO ()
main = do
  putStrLn "I'm thinking of a number between 1 and 100."
  putStrLn "Can you guess it?"
  guess <- getGuess
  rand <- getRandom
  print $ getResponse guess rand
