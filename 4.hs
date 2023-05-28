-- stack runghc 4.hs

palindromeProducts range = [x * y | x <- range, y <- range, isPalindrome (x * y)]
  where
    isPalindrome n = show n == reverse (show n)

main :: IO ()
main = print $ maximum $ palindromeProducts [100..999]
