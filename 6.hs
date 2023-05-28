-- stack runghc 6.hs

sumOfSquares :: [Int] -> Int
sumOfSquares x = sum $ map (^2) x 

squareOfSum :: [Int] -> Int
squareOfSum x = (^2) $ sum x

main :: IO ()
main = print $ squareOfSum [1..100] - sumOfSquares [1..100]
