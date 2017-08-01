--If we list all the natural numbers below 10 that are multiples of 3 or 5
--sum of these multiples is 23.

--Find the sum of all the multiples of 3 or 5 below 1000.

euler001 n = sum [x | x <- [0 .. n], x `mod` 3 == 0  || x `mod` 5 == 0]

main = putStrLn $ show (euler001 999)
