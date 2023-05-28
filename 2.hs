-- stack runghc 2.hs

fibonacci = 1 : 2 : zipWith (+) fibonacci (tail fibonacci)

main :: IO ()
main = do
        print $ sum $ filter even $ takeWhile (< 4000000) fibonacci
