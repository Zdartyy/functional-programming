{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

import Web.Scotty
import Data.Aeson (FromJSON, ToJSON, object, (.=))
import GHC.Generics (Generic)


data ListInput = ListInput
  { list :: [Int]
  , element :: Int
  } deriving (Show, Generic)

instance FromJSON ListInput
instance ToJSON ListInput

data SumThreeInput = SumThreeInput
  { list1 :: [Int]
  , list2 :: [Int]
  , list3 :: [Int]
  } deriving (Show, Generic)

instance FromJSON SumThreeInput

data IsSortedInput = IsSortedInput
  { numbers :: [Int]
  } deriving (Show, Generic)

instance FromJSON IsSortedInput

data AppendInput = AppendInput
  { alist   :: [Int]
  , aelement :: Int
  , index   :: Int
  } deriving (Show, Generic)

instance FromJSON AppendInput

data TwoListsInput = TwoListsInput
  { l1 :: [Int]
  , l2 :: [Int]
  } deriving (Show, Generic)

instance FromJSON TwoListsInput


isSorted :: (Int -> Int -> Bool) -> [Int] -> Bool
isSorted _ [] = True
isSorted _ [_] = True
isSorted cmp (x:y:xs) = cmp x y && isSorted cmp (y:xs)

lessEq :: Int -> Int -> Bool
lessEq a b = a <= b


sumTwo :: [Int] -> [Int] -> [Int]
sumTwo = zipWith (+)

sumThree :: [Int] -> [Int] -> [Int] -> [Int]
sumThree a b c = sumTwo (sumTwo a b) c


setHead :: Int -> [Int] -> [Int]
setHead x xs = x : xs


appendAt :: Int -> Int -> [Int] -> [Int]
appendAt i x xs =
  let (l, r) = splitAt i xs
  in l ++ (x : r)


squareLists :: [Int] -> [Int] -> [Int]
squareLists xs ys = map (\(a,b) -> a*a + b*b) (zip xs ys)


main :: IO ()
main = scotty 8080 $ do


  post "/is-sorted" $ do
    input <- jsonData :: ActionM IsSortedInput
    let ns = numbers input
    json $ object
      [ "numbers" .= ns
      , "sorted"  .= isSorted lessEq ns
      ]


  post "/sum-three" $ do
    input <- jsonData :: ActionM SumThreeInput
    let r = sumThree (list1 input) (list2 input) (list3 input)
    json $ object [ "sum" .= r ]


  post "/set-head" $ do
    input <- jsonData :: ActionM ListInput
    let r = setHead (element input) (list input)
    json $ object [ "result" .= r ]


  post "/append" $ do
    input <- jsonData :: ActionM AppendInput
    let r = appendAt (index input) (aelement input) (alist input)
    json $ object [ "result" .= r ]


  post "/squares" $ do
    input <- jsonData :: ActionM TwoListsInput
    let r = squareLists (l1 input) (l2 input)
    json $ object [ "result" .= r ]
