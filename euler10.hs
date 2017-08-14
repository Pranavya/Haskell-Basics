--The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

--Find the sum of all the primes below two million.

factorOf x y = y `mod` x == 0

factors x = filter (`factorOf` x) $ takeWhile (\y -> y ^ 2 <= x) primes

prime x = factors x == []

primes = 2 : 3 : filter prime [5 ..]

euler10 = sum $ takeWhile (< 2000000) primes

main = do print(euler10)
