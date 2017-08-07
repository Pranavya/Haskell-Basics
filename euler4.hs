--The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.

--Find the largest palindrome made from the product of two 3-digit numbers.

reverseInt = revInt 0 where
	revInt acc 0 = acc
	revInt acc n = revInt (acc * 10 + (mod n 10)) (div n 10)

isPalindrome n = n == (reverseInt n)

euler4 = foldl1 max [a * b | a <- [100..999], b <- [100..999], isPalindrome (a * b)]

main = putStrLn (show euler4)
