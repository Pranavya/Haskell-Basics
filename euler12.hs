--The 7th triangle number would be 1 + 2 + 3 + 4 + 5 + 6 + 7 = 28. The first ten terms would be:
--1, 3, 6, 10, 15, 21, 28, 36, 45, 55, ...

--28: 1,2,4,7,14,28
--We can see that 28 is the first triangle number to have over five divisors.

--Find the value of the first triangle number to have over five hundred divisors.

get_div_len number = foldl1 (+) [2 | x <- [1..x], number `mod` x == 0]
    where x = round . sqrt $ fromInteger number

main = do
  print.head $ dropWhile (\x -> fst x <= 499) (map (\x -> (get_div_len x ,x)) xs)
  where xs = map (\y -> sum [1..y]) [7..]