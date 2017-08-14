--A Pythagorean triplet is a set of three natural numbers, a < b < c, for which, a2 + b2 = c2
--For example, 32 + 42 = 9 + 16 = 25 = 52.

--There exists exactly one Pythagorean triplet for which a + b + c = 1000.
--Find the product abc.


total = 1000

isRightTriangle a b = a < b && b < c
	&& a * a + b * b == c * c
	where c = total - a - b
	
euler09 = head [a * b * (total - a - b) | a <- [1..total], b <- [a+1..total], isRightTriangle a b]

main = putStrLn (show euler09)