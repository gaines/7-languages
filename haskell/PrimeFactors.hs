module PrimeFactors (primeFactors) where

  primeFactors :: Integer -> [Integer]
  primeFactors 1 = []
  primeFactors x = primeFactorsRecursive x 2

  primeFactorsRecursive :: Integer -> Integer -> [Integer]
  primeFactorsRecursive x c
    | x < c = []
    | (x `mod` c == 0) = [c] ++ primeFactorsRecursive (x `div` c) c
    | otherwise = primeFactorsRecursive x (c+1)
