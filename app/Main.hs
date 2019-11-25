module Main where

import System.Random (randomRIO)

main :: IO ()
main = do
  putStrLn "I'm thinking of a number between 1 and 100."
  putStrLn "Can you guess it?"
  guess <- readLn :: IO Integer
  rand <- randomRIO (1, 100) :: IO Integer
  print $ guess == rand
