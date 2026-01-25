{-# LANGUAGE OverloadedStrings #-}

import Web.Scotty
import Data.Aeson (object, (.=))
import System.Random (randomIO)
import Control.Monad.IO.Class (liftIO)

-- exercise 3.0
randomInt0ToMax :: IO Int
randomInt0ToMax = do
  n <- randomIO :: IO Int
  let m = abs n `mod` (maxBound :: Int)
  return m

-- exercise 3.5
randomDouble01 :: IO Double
randomDouble01 = randomIO :: IO Double

main :: IO ()
main = scotty 8080 $ do

  post "/random-int" $ do
    n <- liftIO randomInt0ToMax
    json $ object
      [ "value"    .= n
      , "minBound" .= (0 :: Int)
      , "maxBound" .= (maxBound :: Int)
      ]

  post "/random-double" $ do
    x <- liftIO randomDouble01
    json $ object
      [ "value" .= x
      ]


  -- exercise 4.0
  post "/random-complex" $ do
    i1 <- liftIO randomInt0ToMax
    d1 <- liftIO randomDouble01

    d2 <- liftIO randomDouble01
    i2 <- liftIO randomInt0ToMax

    x <- liftIO randomDouble01
    y <- liftIO randomDouble01
    z <- liftIO randomDouble01

    json $ object
      [ "pairIntDouble" .= object ["int" .= i1, "double" .= d1]
      , "pairDoubleInt" .= object ["double" .= d2, "int" .= i2]
      , "tupleDouble3"  .= object ["x" .= x, "y" .= y, "z" .= z]
      ]