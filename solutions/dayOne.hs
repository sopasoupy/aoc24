module Main where
import Data.List (transpose, sort)

main :: IO ()
main = do
    file <- readFile "puzzles/dayOne.txt"
    let sortedLists = map sort . transpose . map words . lines $ file
    let fstList = map read (head sortedLists) :: [Int]
    let sndList = map read (last sortedLists) :: [Int]
    print $ sum $ zipWith (\x y -> abs $ x - y) fstList sndList