--2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

--find smallest positive number that is evenly divisible by all of the numbers from 1 to 20.

euler5 = foldl1 lcm [1..20]
main = putStrLn (show euler5)
