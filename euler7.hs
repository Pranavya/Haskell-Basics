--By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.

--Find the 10001st prime number

primes = sieve [2..] where
	sieve (p:xs) = p : sieve (filter (\x -> mod x p /= 0) xs)
	
euler7 = primes !! 10000

main = putStrLn (show euler7)
