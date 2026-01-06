{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

import Web.Scotty
import Data.Aeson (FromJSON, ToJSON, object, (.=))
import GHC.Generics (Generic)


data InputData = InputData
  { val1   :: Int
  , val2   :: Int
  , action :: String  --"add" lub "sub"
  } deriving (Show, Generic)

instance FromJSON InputData
instance ToJSON InputData

main :: IO ()
main = scotty 8080 $ do

  -- exercise 3.0
  post "/functor-calc" $ do
    input <- jsonData :: ActionM InputData
    
    let x = val1 input
    let y = val2 input
    
    let functorBox = Just x


    let resultBox = case action input of
          "add" -> fmap (+ y) functorBox
          "sub" -> fmap (\v -> v - y) functorBox
          _     -> Nothing 


    json $ object 
      [ "input_val1" .= x
      , "input_val2" .= y
      , "action"     .= action input
      , "result"     .= resultBox 
      ]
