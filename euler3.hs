--The prime factors of 13195 are 5, 7, 13 and 29.

--What is the largest prime factor of the number 600851475143

getSqrt n = round $ sqrt $ fromIntegral n

factors n = filter (\x -> n `rem` x == 0) [2..(getSqrt n)]

prime n = null $ factors n

main = do
    let num = 600851475143
    let primes = filter prime $ factors num
    print (last primes)
