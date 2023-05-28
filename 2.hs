-- stack runghc 2.hs

fibonacci = 1 : 2 : zipWith (+) fibonacci (tail fibonacci)

main :: IO ()
main = print $ sum $ filter even $ takeWhile (< 4000000) fibonacci
