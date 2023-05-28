-- stack runghc 5.hs

main :: IO ()
main = print $ foldl1 lcm [1..20]
