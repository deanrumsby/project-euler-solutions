-- stack runghc 1.hs

multiplesOf3and5 = [x | x <- [1..], x `mod` 3 == 0 || x `mod` 5 == 0]

main :: IO ()
main = do
        print $ sum $ takeWhile (< 1000) multiplesOf3and5
