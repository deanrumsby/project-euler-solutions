-- stack runghc 7.hs

primes = [x | x <- [2..], isPrime x]
  where
    isPrime x = not $ any (\y -> x `mod` y == 0) [2..(floor $ sqrt $ fromIntegral x)]

main :: IO ()
main = print $ primes !! 10000
