-- stack runghc 3.hs

largestPrimeFactor n = largestPrimeFactor' n 2
  where
    largestPrimeFactor' n d
      | n == d = n
      | n `mod` d == 0 = largestPrimeFactor' (n `div` d) d
      | otherwise = largestPrimeFactor' n (d + 1)

main :: IO ()
main = print $ largestPrimeFactor 600851475143
